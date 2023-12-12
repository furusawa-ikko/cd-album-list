Dockerfile
# ベースイメージとしてPythonの公式イメージを使用
FROM python:3.8-slim

# アプリケーションのソースコードを保存するディレクトリを指定
WORKDIR /app

# アプリケーションの依存関係をインストールするために、
# requirements.txtをイメージにコピーします。
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのソースコードをイメージにコピーします。
COPY . /app

# アプリケーションが8000番ポートでリッスンするように設定する
EXPOSE 8000

# コンテナが実行されたときにアプリケーションを起動するコマンド
CMD ["python", "app.py"]
