dist:
	mkdir dist

bnn: dist
	mkdir dist/bnn

build: dist
	GOOS=linux GOARCH=arm64 go build -o dist/app

build-container: build bnn
	docker build --platform linux/arm64 -t distroless-file-write .
