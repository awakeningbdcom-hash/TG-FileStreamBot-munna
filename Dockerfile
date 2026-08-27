FROM golang:1.19
WORKDIR /app
COPY . .
RUN go build -ldflags="-w -s" -o out
EXPOSE 8080
CMD ["./out"]
