FROM golang:1.21 AS base

WORKDIR /go/src/github.com/Lee266/op-ai-server

RUN go env -w GO111MODULE=on
# Install golangci-lint
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.55.2

COPY ./server/go.mod ./server/go.sum ./

RUN --mount=type=cache,target=/go/pkg/mod/ \
    go mod download && go mod verify

FROM base AS dev
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

COPY ./server ./
CMD ["air", "-c", ".air.toml"]

FROM base AS builder

COPY . .
# scratch ユーザーを作成
RUN useradd -u 10001 scratch
RUN --mount=type=cache,target=/go/pkg/mod/ \
    go build \
    -o /app

FROM scratch AS runner

COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /app /app
USER scratch
CMD ["./app"]
