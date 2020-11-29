# alan

[![Build Status](https://travis-ci.org/randallshafer/alan.svg?branch=master)](https://travis-ci.org/randallshafer/alan)

The goal of this project is to provide a complete small office/home office LAN
environment that's portable and easy to use, based on open standards and open
source components, and deployable on small, single-board computers like the
Raspberry Pi.

## Prerequisites

* **macOS or Windows:** Docker Desktop
* **Linux:** Docker Enginer and docker-compose

## Quick Start

Start all services (press Ctrl-C to stop):

```sh
docker-compose up
```

Stop and remove all services and volumes:

```sh
docker-compose down --volumes
```

## Configuration

### dnsmasq

Create configuration files in `config/dnsmasq/`. (See the
[README](config/dnsmasq/README) file in that directory for more information.)
