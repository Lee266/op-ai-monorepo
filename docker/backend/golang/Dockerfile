FROM golang:1.21

WORKDIR /go/src/github.com/Lee266/op-ai-server

RUN go env -w GO111MODULE=on
# Install golangci-lint
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.55.2

COPY ./server/go.mod ./server/go.sum ./

RUN go mod download && go mod verify

# 'rm -rf /var/lib/apt/lists/*'コマンドはイメージサイズを最小化するために使用
RUN apt-get update && apt-get install -y \
    git \
    gcc \
    musl-dev \
    && rm -rf /var/lib/apt/lists/*

RUN go get -u github.com/gin-gonic/gin && \
    go get -u golang.org/x/sync

RUN go install github.com/cosmtrek/air@latest && \
    go install golang.org/x/tools/cmd/goimports@latest

RUN git config --local core.hooksPath .githooks

COPY ./server ./

CMD ["air", "-c", ".air.toml"]
# FROM golang:1.21.3-alpine
# RUN apk upgrade --update && \
#     apk --no-cache add git gcc musl-dev
