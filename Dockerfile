# 使用Python基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件到容器
COPY . /app

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 暴露端口（与代码中config.json的port一致，默认29392）
EXPOSE 29392

# 启动命令
CMD ["python", "main.py"]
