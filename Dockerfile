FROM golang:1.19
WORKDIR /bin/main/
COPY main.go .
RUN go build main.go
EXPOSE 8080
CMD [ "./main" ]
