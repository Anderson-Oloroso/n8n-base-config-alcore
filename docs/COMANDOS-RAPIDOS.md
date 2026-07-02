# Comandos rapidos

Esta guia es para levantar el entorno sin leer toda la documentacion.

## macOS o Linux

```bash
git clone https://github.com/anndreloopez012/n8n-base-config-alcore.git
cd n8n-base-config-alcore
chmod +x start.sh scripts/*.sh
./start.sh
```

## Windows PowerShell

```powershell
git clone https://github.com/anndreloopez012/n8n-base-config-alcore.git
cd n8n-base-config-alcore
.\start.ps1
```

Si PowerShell bloquea el script:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\start.ps1
```

## URLs

```text
n8n:          http://localhost:5678
Node.js API:  http://localhost:3000
Health:       http://localhost:3000/health
```

## Comandos utiles

Ver estado:

```bash
docker compose ps
```

Ver logs:

```bash
docker compose logs -f
```

Apagar sin borrar datos:

```bash
docker compose down
```

Reiniciar n8n:

```bash
docker compose restart n8n
```

Empezar desde cero:

```bash
./scripts/reset-local.sh
```

## Con Makefile

Si tienes `make` instalado:

```bash
make start
make logs
make stop
make reset
```

## ngrok

Solo se necesita para probar webhooks externos.

1. Crea cuenta gratis en ngrok.
2. Copia tu token.
3. Edita `.env`:

```env
NGROK_AUTHTOKEN=tu_token
```

4. Ejecuta:

```bash
docker compose --profile tunnel up -d
docker compose logs -f ngrok
```
