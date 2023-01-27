FROM golang:1.18
WORKDIR /app
COPY . .
RUN go mod tidy
ENV DEVOPSTESTE_NAME="Amo Promo"
RUN go build .
