import yaml
import time
from datetime import datetime
try:
    from yaml import CLoader as Loader, CDumper as Dumper
except ImportError:
    from yaml import Loader, Dumper

if __name__ == "__main__":
    with open("config.yml") as fh:
        config = yaml.load(fh, Loader=Loader)
    
    print(f"{str(datetime.now())} Hello World!")