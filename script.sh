#!/bin/bash

echo "Generating traffic to Shock Shop..."

for i in {1..50}
do
  curl -s http://localhost:8079/ >/dev/null
  curl -s http://localhost:8079/products >/dev/null
  curl -s -X POST http://localhost:8080/cart -H "Content-Type: application/json" -d '{"id": "hipster-cap"}' >/dev/null
  curl -s http://localhost:8079/cart >/dev/null
  curl -s http://localhost:8079/orders >/dev/null
  sleep 2
done

echo "Done."
