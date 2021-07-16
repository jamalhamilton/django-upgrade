from django.conf import settings

def ssoclientredirects(request):
    return {
        'LIVELOOP_WEBSITE_URL': settings.LIVELOOP_WEBSITE_URL,
        'BUYERSONAR_WEBSITE_URL': settings.BUYERSONAR_WEBSITE_URL,
        'DROPBOX_WEBSITE_URL': settings.DROPBOX_WEBSITE_URL,

    }