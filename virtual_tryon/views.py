from django.shortcuts import render

def index(request):
    """
    View for virtual try-on page
    """
    return render(request, 'virtual_tryon/index.html')