from datetime import datetime
from flask import jsonify, make_response, abort
from shortuuid import uuid

def get_timestamp():
    return datetime.now().strftime(("%Y-%m-%d %H:%M:%S"))

id1, id2, id3 = str(uuid()), str(uuid()), str(uuid())
PEOPLE = {
    id1: {
        "id": id1,
        "fname": "Indiana",
        "lname": "Jones",
        "timestamp": get_timestamp(),
    },
    id2: {
        "id": id2,
        "fname": "Jack",
        "lname": "Sparrow",
        "timestamp": get_timestamp(),
    },
    id3: {
        "id": id3,
        "fname": "John",
        "lname": "Snow",
        "timestamp": get_timestamp(),
    },
}

def read_all():
    dict_clientes = [PEOPLE[key] for key in sorted(PEOPLE.keys())]
    clientes = jsonify(dict_clientes)
    qtd = len(dict_clientes)
    content_range = "clientes 0-"+str(qtd)+"/"+str(qtd)
    # Configura headers
    clientes.headers['Access-Control-Allow-Origin'] = '*'
    clientes.headers['Access-Control-Expose-Headers'] = 'Content-Range'
    clientes.headers['Content-Range'] = content_range
    return clientes
