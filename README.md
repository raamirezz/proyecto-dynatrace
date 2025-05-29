# 🛍️ Shock Shop + Dynatrace Integration

Este proyecto tiene como objetivo **integrar Dynatrace** en una arquitectura de microservicios ya existente llamada **Shock Shop** (basada en el conocido microservices-demo). La finalidad es demostrar cómo se puede aplicar observabilidad avanzada y monitorización automática usando **Dynatrace OneAgent**.

---

## 🎯 Objetivo del Proyecto

📌 **Incorporar Dynatrace en un entorno realista de microservicios** para:

- Automatizar la monitorización de infraestructura, contenedores y procesos.
- Detectar servicios sin configuración manual.
- Crear dashboards interactivos usando DQL (Dynatrace Query Language).
- Observar el comportamiento de componentes como MongoDB, Node.js, Java, RabbitMQ, etc.

---

## 🧱 Stack Tecnológico

Shock Shop es un entorno compuesto por:

- **Node.js** (Front-end)
- **Java** (Carts, Orders, Shipping)
- **Go** (Catalogue, Payment)
- **MongoDB / MySQL / RabbitMQ** (Backends de persistencia y cola)
- **Nginx (edge-router)** como gateway

Todos los servicios están definidos y orquestados con **Docker Compose**.

---

## 🚀 Cómo desplegar el entorno

```bash
git clone https://github.com/weaveworks/microservices-demo
cd deploy/docker-compose

# Exporta las variables para Dynatrace
export DT_API_URL=https://<entorno>.live.dynatrace.com
export DT_API_TOKEN=dt0c01.abc123...

# Levanta el entorno con el agente incluido
docker-compose up -d


## Capturas
En la carpeta "Capturas" se han añadido imágenes con dashboards que justifican la incorporación de Dynatrace al proyecto
