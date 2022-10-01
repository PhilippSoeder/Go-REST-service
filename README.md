# Go-REST-service
This is a simple rest service written in go, not super useful, just something 
for me to get used to go.

## How to run and test rest service
1) run `go build main.go` in terminal
2) run `./main` in terminal
3) open  `localhost:8080` in webbrowser

## How to create a docker image, run and test it
1) run `docker build -t goRestService .` in terminal
2) run `docker run --name gorestservice -d -p 8080:8080 gorestservice` in terminal
3) open  `localhost:8080` in webbrowser
