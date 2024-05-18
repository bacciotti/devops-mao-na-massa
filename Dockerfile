# Use a imagem base do Apache
FROM httpd:2.4

# Copie o conteúdo da pasta html para o diretório padrão do Apache no contêiner
COPY html/ /usr/local/apache2/htdocs/

# Exponha a porta 80 no contêiner
EXPOSE 80

# Comando padrão para iniciar o Apache
CMD ["httpd-foreground"]
