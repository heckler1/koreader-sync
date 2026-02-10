# koreader-sync

## Description

Quick and dirty implementation of the KOReader (https://github.com/koreader/koreader) sync service.
I found stock implementation (https://github.com/koreader/koreader-sync-server) too heavy for my personal needs.
 
## Dependencies

* Flask : http://flask.pocoo.org/
* pyOpenSSL: https://pyopenssl.org/en/stable/api.html

## Install and run

```bash
> uv run koreader-flask.py --help
```

## Create and test new user

```
curl -X POST https://koreader-sync.lab.sheckler.info/users/create \
  -H "Content-Type: application/json" \
  -d '{
    "username": "username",
    "password": "md5(password)"
  }'


curl https://koreader-sync.lab.sheckler.info/users/auth \
  -H "X-Auth-User: username" \
  -H "X-Auth-Key: md5(password)" 
```

## Modify according to your needs

Do whatever you want to
