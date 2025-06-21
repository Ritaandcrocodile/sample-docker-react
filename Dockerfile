FROM node:22

WORKDIR /app

# 复制package文件
COPY package*.json ./

# 安装依赖（包括devDependencies用于构建）
RUN npm install

# 复制源代码
COPY . .

# 构建应用
RUN npm run build

# 暴露端口
EXPOSE 3000

# 设置启动命令
CMD ["npm", "start"]
