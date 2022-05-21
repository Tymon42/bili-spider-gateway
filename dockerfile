# 基础镜像
FROM golang:1.17.8

MAINTAINER cunoe

# 环境变量
ENV GO111MODULE=on \
    CGO_ENABLED=1 \
    GOOS=linux \
    GOARCH=amd64 \
    GOPROXY=https://goproxy.cn,direct

# 操作目录
WORKDIR /go/src/ginForBH

# 复制源文件至操作目录
COPY . .

# 编译
RUN go build -o ginForBH main.go

CMD ["./ginForBH"]