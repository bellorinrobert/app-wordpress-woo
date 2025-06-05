FROM wordpress:latest

RUN apt-get update && apt-get install -y \
    apache2-utils \
    openssl

# Crear certificados SSL (esto es solo para desarrollo, en producción usar certificados válidos)
RUN mkdir -p /etc/ssl/certs && \
    openssl req -newkey rsa:4096 -nodes -keyout /etc/ssl/certs/wordpress.key -x509 -days 365 -out /etc/ssl/certs/wordpress.crt \
    -subj "/CN=localhost"

# Configurar Apache para usar SSL
RUN a2enmod ssl
COPY ssl.conf /etc/apache2/sites-available/default-ssl.conf
RUN a2ensite default-ssl

EXPOSE 443
CMD ["apache2-foreground"]
