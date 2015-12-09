Elasticdump
==================
Import and export tools for elasticsearch

Usage
-----

elastic-dump is the entry point and expects parameters to be passed as Docker command.

### Import
To import index (change ES_HOST):

```bash
sudo docker run --rm \
    qapps/elasticdump \
    --output=http://ES_HOST:9200/.kibana \
    --type=data
```