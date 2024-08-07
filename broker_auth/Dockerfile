FROM eclipse-mosquitto:2.0.15

# Copiar o arquivo de configuração do Mosquitto
COPY config/mosquitto.conf /mosquitto/config/mosquitto.conf

# Copiar o arquivo de usuários e o script
COPY users.txt /mosquitto/config/users.txt
COPY create_mosquitto_users.sh /mosquitto/config/create_mosquitto_users.sh
COPY passwd /mosquitto/config/passwd

# Tornar o script executável
#RUN chmod +x /mosquitto/config/create_mosquitto_users.sh

# Verificar se os arquivos foram copiados corretamente
#RUN echo "Listando arquivos no diretório /mosquitto/config:" && ls -l /mosquitto/config/

# Executar o script
#RUN echo "Executando o script de criação de usuários:" && /mosquitto/config/create_mosquitto_users.sh

# Definir volumes para persistência
VOLUME ["/mosquitto/data", "/mosquitto/log"]

# Comando para iniciar o Mosquitto
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]