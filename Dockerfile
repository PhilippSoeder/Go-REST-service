FROM golang:alpine AS build
LABEL stage=gobuilder
ENV CGO_ENABLED 0
ENV GOOS linux
WORKDIR /build
COPY . .
RUN go build -o /build/main main.go
FROM alpine
WORKDIR /build
COPY --from=build /build/main /build/main
CMD ["./main"]
