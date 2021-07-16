from django.db import connections


def find_region_settings(year_qtr, region_id):
    """
    query the region_settings_log table and return the region_settings_id corresponding to the given args
    If no rows exist in the table, returns None
    """
    sql = f"""
        SELECT region_settings_id FROM region_settings_log 
        WHERE year_qtr='{year_qtr}' AND region_id={region_id}
    """
    with connections["paretodb"].cursor() as c:
        c.execute(sql)
        res = c.fetchone()
    if res:
        return res[0]
    return None
