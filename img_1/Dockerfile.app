# imagem base a ser utilizada
FROM ubuntu:22.04

# evitar prompts interativas durante a instalação dis pacotes
ENV DEBIAN_FRONTEND=nointeractive


# instalar o compilador e ferramenta para build
RUN apt-get update && \
    apt-get install -y g++ build-essential && \
    rm -rf /var/lib/apt/lists/*

# define o diretório de trabalho no container
WORKDIR /app

# copia todos os arquivos para dentro do container
COPY . .

# executa a compilação do arquivo
RUN g++ -o arq1 main.cpp

# executa o programa

CMD ["./arq1"]

# define a variavel de ambiente para o 