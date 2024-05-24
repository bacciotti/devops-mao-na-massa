# Use a imagem base do CentOS 7
FROM centos:7

# Instale epel-release, Ansible, iputils (para ping), openssh-server e openssh-clients
RUN yum install -y epel-release \
    && yum install -y ansible iputils openssh-server openssh-clients \
    && yum clean all

# Crie o diretório para a chave SSH e defina permissões
RUN mkdir -p /root/.ssh \
    && chmod 700 /root/.ssh

# Copiar o arquivo hosts para /etc/ansible/hosts (se necessário)
COPY ansible/hosts /etc/ansible/hosts

# Expor a porta 22 para conexões SSH
EXPOSE 22

# Comando padrão para iniciar o SSH e manter o contêiner rodando
CMD ["/usr/sbin/sshd", "-D"]
