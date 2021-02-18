#!/usr/bin/env bash
. .env

# SYNC SERVERS FROM FGV
rsync -azPv --progress /Storage/teste $SERVER_HETZNER_URL
rsync -azPv --progress /Storage/teste $SERVER_FIOCRUZ_URL
