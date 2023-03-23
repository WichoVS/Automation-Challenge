import random
import datetime


def get_birthdate():
    fecha_inicio = datetime.date(1988, 1, 1)
    fecha_fin = datetime.date(2005, 12, 31)
    dias = (fecha_fin - fecha_inicio).days
    fecha_random = fecha_inicio + \
        datetime.timedelta(days=random.randint(0, dias))
    fecha_string = fecha_random.strftime("%d%m%Y")
    return fecha_string
