# 使用官方 Python 基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 将当前目录内容复制到容器的 /app 目录中
COPY . /app

# 安装依赖
RUN pip install --no-cache-dir fastapi uvicorn jieba

# 暴露端口
EXPOSE 8000

# 运行应用
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
