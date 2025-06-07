# Usar a imagem oficial do Nginx como base
FROM nginx:latest

# Copiar arquivos de configuração personalizados (se necessário)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expor a porta que o Nginx usará
EXPOSE 80

# Comando padrão para rodar o Nginx
CMD ["nginx", "-g", "daemon off;"]