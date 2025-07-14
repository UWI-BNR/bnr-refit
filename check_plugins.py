from mkdocs.config import load_config
from mkdocs.plugins import get_plugin

try:
    cfg = load_config('mkdocs.yml')
    print("Configured plugins:")
    for plugin in cfg.plugins:
        print(f" - {plugin}")
except Exception as e:
    print("Error:", e)
