### Repositório para o Desafio de Golang para o curso de Docker da Full Cycle

#### Link para o Repositório do Docker Hub
- [https://hub.docker.com/repository/docker/alissonrangel/codeeducation](https://hub.docker.com/repository/docker/alissonrangel/codeeducation) 

### Dockerfile
```
FROM golang AS builder

WORKDIR /app

COPY main.go .
COPY go.mod .

RUN go build -o desafio

FROM scratch

WORKDIR /app

COPY --from=builder /app /app

CMD [ "./desafio" ]
```
