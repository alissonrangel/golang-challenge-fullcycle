FROM golang AS builder

WORKDIR /app

COPY main.go .
COPY go.mod .

RUN go build -o desafio

FROM scratch

WORKDIR /app

COPY --from=builder /app /app

CMD [ "./desafio" ]

