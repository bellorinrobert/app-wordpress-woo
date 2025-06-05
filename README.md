# WordPress Local Development

Este proyecto permite levantar un entorno local de WordPress utilizando Docker Compose.

## Pasos para iniciar

1. **Copiar el archivo de entorno de ejemplo:**

    ```bash
    cp .env.example .env
    ```

2. **Configura las variables de entorno**  
    Edita el archivo `.env` y asigna los valores apropiados a:

    - `DB_USER`
    - `DB_PASSWORD`
    - `WORDPRESS_PORT`

3. **Iniciar el entorno**

    ```bash
    docker compose up -d --build
    ```

## Notas

- Accede a WordPress desde tu navegador usando el puerto configurado en `WORDPRESS_PORT`.
- Para detener el entorno, ejecuta:

  ```bash
  docker compose down
  ```

