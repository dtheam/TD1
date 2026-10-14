FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
# On donne les droits de lecture à Nginx pour ce fichier
RUN chmod 644 /usr/share/nginx/html/index.html