#!/usr/bin/env bash

if [ -z "$WALLET_ADDR" ]; then
  echo "WALLET_ADDR not defined"
  exit 1
fi
echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo $WALLET_ADDR
echo $POOL

sleep 20

exec ./packetcrypt ann --paymentaddr $WALLET_ADDR $POOL
