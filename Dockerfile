# Usa imagem enxuta e segura do Nginx baseada em Alpine Linux
FROM nginx:alpine

# Remove a página padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos da aplicação web estática
COPY index.html /usr/share/nginx/html/index.html

# Expõe a porta padrão HTTP
EXPOSE 80

# Inicia o servidor Nginx
CMD ["nginx", "-g", "daemon off;"]