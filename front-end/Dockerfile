# 使用官方 Node.js 基本映像作為基礎
FROM node:14 AS build

# 設定工作目錄
WORKDIR /app

# 將 package.json 和 package-lock.json 複製到工作目錄
COPY package*.json ./

# 安裝專案依賴項
RUN npm ci

# 複製專案原始碼
COPY . .

# 構建產品版本的專案
RUN npm run build -- --output-path=./dist/out --configuration production

# 使用官方 Nginx 映像作為基礎
FROM nginx:1.15

# 複製構建的應用程序

COPY --from=build /app/dist/out/ /usr/share/nginx/html

# 使用自定義 Nginx 配置（如有需要）
COPY nginx.conf /etc/nginx/conf.d/default.conf

