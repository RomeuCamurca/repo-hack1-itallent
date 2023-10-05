FROM golang:1.19

WORKDIR /app

# Clone the repository from GitHub
RUN git clone https://github.com/ittalent2023-2/go-mongo-crud-rest-api .

COPY go.mod go.sum ./
RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o /go-mongo-romeu

EXPOSE 9080

CMD ["/go-mongo-romeu"]