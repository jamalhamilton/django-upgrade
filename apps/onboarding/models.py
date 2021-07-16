"""
Models related to Audantic clients and regions. All coming from existing tables in paretodb
"""
from django.db import models


# Create your models here.


class Client(models.Model):
    """
    Corresponding table: paretodb.audantic_clients
    """

    client_id = models.AutoField(primary_key=True)
    client_name = models.CharField(max_length=255, blank=True, null=True)
    client_description = models.CharField(max_length=255, blank=True, null=True)
    dropbox_url = models.CharField(max_length=255, blank=True, null=True)
    bitly_url = models.CharField(max_length=255, blank=True, null=True)
    crm_url = models.CharField(max_length=255, blank=True, null=True)
    email = models.CharField(max_length=255, blank=True, null=True)
    ready = models.IntegerField(blank=True, null=True)
    active = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "audantic_clients"

    def __repr__(self):
        return f"< Client object: {self.client_name}>"

    def __str__(self):
        return f"{self.client_name}"


class Setting(models.Model):
    """
    Corresponding table: paretodb.audantic_region_settings
    """

    timestamp = models.DateTimeField()
    region_id = models.IntegerField(blank=True, null=True)
    model_id = models.IntegerField(blank=True, null=True)
    mail_count = models.IntegerField(blank=True, null=True)
    pct_occ = models.IntegerField(blank=True, null=True)
    pct_nocc = models.IntegerField(blank=True, null=True)
    loo_min = models.IntegerField(blank=True, null=True)
    sqft_min = models.IntegerField(blank=True, null=True)
    sqft_max = models.IntegerField(blank=True, null=True)
    equity_min = models.IntegerField(blank=True, null=True)
    equity_max = models.IntegerField(blank=True, null=True)
    tav_min = models.IntegerField(blank=True, null=True)
    tav_max = models.IntegerField(blank=True, null=True)
    tav_min_pctile = models.IntegerField(blank=True, null=True)
    tav_max_pctile = models.IntegerField(blank=True, null=True)
    est_val_min = models.IntegerField(blank=True, null=True)
    est_val_max = models.IntegerField(blank=True, null=True)
    est_val_min_pctile = models.IntegerField(blank=True, null=True)
    est_val_max_pctile = models.IntegerField(blank=True, null=True)
    mkt_val_min = models.IntegerField(blank=True, null=True)
    mkt_val_max = models.IntegerField(blank=True, null=True)
    mosaic_filter = models.CharField(max_length=255, blank=True, null=True)
    name_filter = models.IntegerField(blank=True, null=True)
    append_phone = models.IntegerField(blank=True, null=True)
    append_tax = models.IntegerField(blank=True, null=True)
    append_parcel = models.IntegerField(blank=True, null=True)
    sfr = models.IntegerField(blank=True, null=True)
    mf = models.IntegerField(blank=True, null=True)
    condo = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = "audantic_region_settings"


class Region(models.Model):
    """
    Corresponding table: paretodb.audantic_regions
    """

    region_id = models.IntegerField()
    region_name = models.CharField(max_length=100)
    region_pretty_name = models.CharField(max_length=255, blank=True, null=True)
    fips = models.CharField(max_length=5)
    client_id = models.IntegerField()
    active = models.IntegerField(blank=True, null=True)
    is_exclusive = models.IntegerField(blank=True, null=True)
    model_id = models.IntegerField(blank=True, null=True)
    attribution_active = models.BooleanField()

    class Meta:
        managed = False
        db_table = "audantic_regions"

    def __str__(self):
        return f"{self.region_pretty_name}"


class ZipExclude(models.Model):
    """
    Corresponding table: paretodb.sfr_zip_exclude
    """

    index = models.BigAutoField(primary_key=True)
    region_name = models.CharField(max_length=255, blank=True, null=True)
    zip = models.CharField(max_length=5, blank=True, null=True)
    client = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = "sfr_zip_exclude"


class HasAttribution(models.Model):
    """
    Corresponding table: paretodb.audantic_regions_attribution
    """

    region_id = models.IntegerField(primary_key=True)
    year_qtr = models.CharField(max_length=6)
    active = models.BooleanField()

    class Meta:
        managed = False
        db_table = "audantic_regions_attribution"
        unique_together = (("region_id", "year_qtr"),)


class HasDeliveryDate(models.Model):
    """
    Corresponding table: paretodb.live_loop_delivery_dates
    """

    region_id = models.IntegerField(primary_key=True)
    year_qtr = models.CharField(max_length=6)
    delivery_date = models.DateField()

    class Meta:
        managed = False
        db_table = "live_loop_delivery_dates"
        
