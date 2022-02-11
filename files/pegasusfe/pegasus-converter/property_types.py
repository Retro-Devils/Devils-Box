import os
import re
from errors import *
from static import PropTypes
from typing import Optional, Union


class NormPair():
    def __init__(self, prop_str):
        fields = prop_str.split(maxsplit=1)
        if len(fields) != 2:
            print_error(f"Invalid normalized pair: `{prop_str}`")
            raise ValueError

        try:
            self.a, self.b = map(float, fields)
        except ValueError:
            print_error(f"Invalid normalized pair values: `{prop_str}`")
            raise ValueError

    def __repr__(self):
        return f"{self.__class__.__name__} {{ {self.a}, {self.b} }}"


#class NormRect():
#    def __init__(self, prop_str):
#        fields = prop_str.split(maxsplit=3)
#        if len(fields) != 2 or len(fields) != 4:
#            print_error(f"Invalid normalized rectangle: `{prop_str}`")
#            raise ValueError
#
#        try:
#            if len(fields) == 2:
#                self.a, self.b = map(float, fields)
#                self.c, self.d = self.a, self.b
#            else:
#                self.a, self.b, self.c, self.d = map(float, fields)
#        except ValueError:
#            print_error(f"Invalid normalized pair values: `{prop_str}`")
#            raise ValueError
#
#    def __repr__(self):
#        return f"{self.__class__.__name__} {{ {self.a}, {self.b}, {self.c}, {self.d} }}"


class Color():
    def __init__(self, prop_str):
        res = re.match(r'^[0-9a-fA-F]{6}([0-9a-fA-F]{2})?$', prop_str)
        if not res:
            print_error(f"Invalid color value: `{prop_str}`")
            raise ValueError

        self.hex = prop_str
        # self.hex = res.group(0)
        if res.group(1):
            self.opacity = int(res.group(1), 16) / 255
        else:
            self.opacity = 1.0

    def __repr__(self):
        return f"#{self.hex}"


PropertyType = Union[NormPair, Color, str, float, bool]


def parse_param(basedir, prop_type, prop_str) -> Optional[PropertyType]:
    try:
        if prop_type == PropTypes.NORMALIZED_PAIR:
            return NormPair(prop_str)
        if prop_type == PropTypes.NORMALIZED_RECT:
            return NormPair(prop_str)
        if prop_type == PropTypes.STRING:
            return prop_str
        if prop_type == PropTypes.PATH:
            return os.path.join(basedir, prop_str)
        if prop_type == PropTypes.COLOR:
            return Color(prop_str)
        if prop_type == PropTypes.FLOAT:
            return float(prop_str)
        if prop_type == PropTypes.BOOLEAN:
            return prop_str.lower()[0] in ['1', 't', 'y']
    except ValueError:
        pass
    return None
