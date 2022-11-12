# import psycopg2
from typing import Union
from fastapi import FastAPI
from pydantic import BaseModel
from dotenv import load_dotenv
from os import getenv
from pycomm3 import LogixDriver


load_dotenv()

PLCADDR = getenv('PLCADDR')


class Item(BaseModel):
    cabecera : Union[str, None] = None
    celdaCabecera : Union[str, None] = None
    celdaDato : Union[str, None] = None
    valor : Union[int, None] = None


app = FastAPI()

@app.get("/")
def root():
    return {
        'plc-browser-api' : 'API de acceso a tags de plc logix'
        }

@app.get("/plcinfo/")
def get_plc_info():
    with LogixDriver(PLCADDR) as plc:
        plcdate = plc.get_plc_time()
        plcdate = plcdate[1]
        plcname = plc.get_plc_name()
        plcinfo = plc.get_plc_info()
        # {
        #     "datetime": "2022-11-11T20:56:21.645578",
        #     "microseconds": 1668200181645578,
        #     "string": "Friday, November 11, 2022 08:56:21PM"
        # }

        return {
            "datetime" : plcdate.get("datetime"),
            "microseconds" : plcdate.get("microseconds"),
            "plcname" : plcname,
            "plcinfo" : plcinfo
        }

@app.get("/taglist/")
def get_list():
    with LogixDriver(PLCADDR) as plc:
        return plc.get_tag_list()
