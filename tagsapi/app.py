import psycopg2
from typing import Union
from fastapi import FastAPI
from pydantic import BaseModel
from dotenv import load_dotenv
from os import getenv


load_dotenv()

DATABASE = getenv('POSTGRES_DB')
HOST = getenv('HOST')
USER = getenv('POSTGRES_USER')
PASSWORD = getenv('POSTGRES_PASSWORD')
PORT = getenv('PORT')


class Item(BaseModel):
    cabecera : Union[str, None] = None
    celdaCabecera : Union[str, None] = None
    celdaDato : Union[str, None] = None
    valor : Union[int, None] = None


app = FastAPI()

@app.get("/")
def root():
    return {
        'tags-api' : 'API de lectura de tags'}

@app.get("/tags")
def get_tags():
    conn = psycopg2.connect(database=DATABASE,
                            host=HOST,
                            user=USER,
                            password=PASSWORD,
                            port=PORT)

    cursor = conn.cursor()
    cursor.execute("select * from interfaz_tags")
    datos = cursor.fetchall()
    tr = []
    for dato in datos:
        item = Item()
        item.cabecera = dato[1]
        item.celdaDato = '{0}{1}'.format(dato[2],dato[3])
        item.celdaCabecera = '{0}{1}'.format(dato[2],int(dato[3])-1)
        item.valor = int(dato[4])
        tr.append(item)

    conn.close()
    return tr
