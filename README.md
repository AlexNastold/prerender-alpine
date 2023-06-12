# Prerender Alpine

Lightweight Prerender container built on Alpine Linux with Node and Headless Chromium.

- Prerender 5
- Chromium
- Node 16

## Requirements

- Docker
- Docker-Compose

## Usage

Pull image:

```bash
git pull https://gitlab.fis-asp.de/fis/bu-sbs/ccs/eSales/fis/prerender-alpine.git
```

Build & run container

```bash
docker compose up -d 
```

Prerender will now be running on [localhost:3000](http://localhost:3000). Try the container out with curl:

``` bash
curl http://localhost:3000/https://www.example.com/
```

## Prerender plugins

A few default plugins have been activated by default (see `server.js`):

- [blacklist](https://github.com/prerender/prerender/blob/master/lib/plugins/blacklist.js)

- [httpHeaders](https://github.com/prerender/prerender/blob/master/lib/plugins/httpHeaders.js)

- [removeScriptTags](https://github.com/prerender/prerender/blob/master/lib/plugins/removeScriptTags.js)

## Caching

Be carefull with caching when CSS- and JS-Files have content-based hash values in filename.

## Prerender memory cache

The [prerender-memory-cache](https://github.com/prerender/prerender-memory-cache) plugin is not activated by default.
You can activate it with the environment variable `MEMORY_CACHE=1`.

You can customize cache behavior with environment variables (.env-File):

- CACHE_MAXSIZE=1000 : max number of objects in cache

- CACHE_TTL=6000 : time to live in seconds

## Prerender documentation

Check out the official Prerender documentation: [https://github.com/prerender/prerender](https://github.com/prerender/prerender)
