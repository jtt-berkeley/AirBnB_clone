#!/usr/bin/python3
from models.base_model import BaseModel

class City(BaseModel):
    """User inherits from BaseModel"""
    def __init__(self, *args, **kwargs):
        super().__init__()
        state_id = "" # TODO: it will be the State.id
        name = ""
