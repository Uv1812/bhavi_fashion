from django.contrib import admin
from django.urls import path
import json
from django.db.models import DateField
from django.http import JsonResponse
from django.core.serializers.json import DjangoJSONEncoder
from django.db.models import Count
from django.db.models.functions import TruncDay,Cast
from .models import Cart, CartItem, CartItemNew, Coupon, Order, OrderItem, Payment

class CartItemNewInline(admin.TabularInline):
    model = CartItemNew
    extra = 0
    readonly_fields = ('added_at', 'updated_at')

class OrderItemInline(admin.TabularInline):
    model = OrderItem
    extra = 0
    readonly_fields = ('product', 'variant', 'quantity', 'price', 'total')

class PaymentInline(admin.TabularInline):
    model = Payment
    extra = 0
    readonly_fields = ('created_at', 'updated_at')

@admin.register(Cart)
class CartAdmin(admin.ModelAdmin):
    list_display = ('user', 'total_items', 'subtotal', 'created_at')
    search_fields = ('user__username', 'user__email')
    readonly_fields = ('created_at', 'updated_at')
    inlines = [CartItemNewInline]

@admin.register(CartItem)
class CartItemAdmin(admin.ModelAdmin):
    list_display = ('user', 'product', 'variant', 'quantity', 'added_at')
    list_filter = ('added_at',)
    search_fields = ('user__username', 'product__name')
    readonly_fields = ('added_at', 'updated_at')

@admin.register(CartItemNew)
class CartItemNewAdmin(admin.ModelAdmin):
    list_display = ('cart', 'product', 'variant', 'quantity', 'added_at')
    list_filter = ('added_at',)
    search_fields = ('cart__user__username', 'product__name')
    readonly_fields = ('added_at', 'updated_at')

@admin.register(Coupon)
class CouponAdmin(admin.ModelAdmin):
    list_display = ('code', 'discount_type', 'discount_value', 'valid_from', 'valid_to', 'is_active', 'current_uses')
    list_filter = ('discount_type', 'is_active', 'valid_from', 'valid_to')
    search_fields = ('code',)
    readonly_fields = ('current_uses', 'created_at')

@admin.register(Order)
class OrderAdmin(admin.ModelAdmin):
    list_display = ('order_number', 'user', 'order_status', 'payment_status', 'payment_method', 'total_amount', 'created_at')
    list_filter = ('order_status', 'payment_status', 'payment_method', 'created_at')
    search_fields = ('order_number', 'user__username', 'user__email')
    inlines = [OrderItemInline, PaymentInline]
    readonly_fields = ('order_number', 'created_at', 'updated_at', 'delivered_at')
    fieldsets = (
        ('Order Information', {
            'fields': ('order_number', 'user', 'order_status', 'shipping_address', 'billing_address', 'coupon')
        }),
        ('Payment Details', {
            'fields': ('payment_status', 'payment_method')
        }),
        ('Financial', {
            'fields': ('subtotal', 'discount', 'shipping_cost', 'tax', 'total_amount')
        }),
        ('Shipping', {
            'fields': ('tracking_number', 'carrier', 'estimated_delivery', 'shipping_notes')
        }),
        ('Notes', {
            'fields': ('customer_notes', 'admin_notes')
        }),
        ('Timestamps', {
            'fields': ('created_at', 'updated_at', 'delivered_at')
        }),
    )
    def get_urls(self):
        urls = super().get_urls()
        custom_urls = [
            path('chart-data/', self.admin_site.admin_view(self.chart_data_endpoint), name='order-chart-data'),
        ]
        return custom_urls + urls

    def chart_data_endpoint(self, request):
        chart_data = self.chart_data(request)
        return JsonResponse(list(chart_data), safe=False, encoder=DjangoJSONEncoder)

    def chart_data(self, request):
        # Get the filtered queryset from the changelist
        cl = self.get_changelist_instance(request)
        queryset = cl.get_queryset(request)
        return (
            queryset.annotate(date=Cast('created_at', output_field=DateField()))
            .values('date')
            .annotate(y=Count('id'))
            .order_by('date')
        )

    def changelist_view(self, request, extra_context=None):
        chart_data = self.chart_data(request)
        as_json = json.dumps(list(chart_data), cls=DjangoJSONEncoder)
        extra_context = extra_context or {}
        extra_context['chart_data'] = as_json
        return super().changelist_view(request, extra_context=extra_context)

@admin.register(OrderItem)
class OrderItemAdmin(admin.ModelAdmin):
    list_display = ('order', 'product', 'variant', 'quantity', 'price', 'total')
    list_filter = ('order__created_at',)
    search_fields = ('order__order_number', 'product__name')

@admin.register(Payment)
class PaymentAdmin(admin.ModelAdmin):
    list_display = ('order', 'payment_method', 'amount', 'status', 'transaction_id', 'created_at')
    list_filter = ('status', 'payment_method', 'created_at')
    search_fields = ('order__order_number', 'transaction_id')