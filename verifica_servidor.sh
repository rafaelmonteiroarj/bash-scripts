#!/bin/bash

codigo_http=$(curl --write-out %{http_code} --silent --output /dev/null https://www.google.com)
echo "Verificando status do servidor $(date +%F\ %T) - $codigo_http"