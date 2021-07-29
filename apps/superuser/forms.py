from django import forms
from django.forms import fields
from apps.login_registration.models import Company

class AddCompanyForm(forms.ModelForm):
    class Meta:
        model = Company
        fields  = '__all__'

    def __init__(self, company=None, *args, **kwargs):
        super(AddCompanyForm, self).__init__(*args, **kwargs)
        self.company = company

    def clean(self):
        
        return self.cleaned_data

    def save(self):
        if not self.company:
            Company.objects.using("buyersonar").create(**self.cleaned_data)
        else:
            Company.objects.using("buyersonar").filter(id=self.company).update(**self.cleaned_data)            
        return self