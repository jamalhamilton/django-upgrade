class ParetoRouter(object):
    pareto_apps = {"attribution", "onboarding"}

    def db_for_read(self, model, **hints):
        "Point all operations on pareto_apps models to 'paretodb'"
        if model._meta.app_label in self.pareto_apps:
            return "paretodb"
        return "default"

    def db_for_write(self, model, **hints):
        "Point all operations on onboarding models to 'paretodb'"
        if model._meta.app_label in self.pareto_apps:
            return "paretodb"
        return "default"

    def allow_relation(self, obj1, obj2, **hints):
        "Allow any relation if a both models in onboarding app"
        if (
            obj1._meta.app_label in self.pareto_apps
            and obj2._meta.app_label in self.pareto_apps
        ):
            return True
        # Allow if neither isin self.pareto_apps
        elif (
            len(
                self.pareto_apps.intersection(
                    {obj1._meta.app_label, obj2._meta.app_label}
                )
            )
            == 0
        ):
            return True
        return False

    def allow_syncdb(self, db, model):
        if db == "paretodb" or model._meta.app_label in self.pareto_apps:
            return False  # we're not using syncdb on our legacy database
        else:  # but all other models/databases are fine
            return True
