Dockerfile
# ベースイメージとしてPythonの公式イメージを使用
FROM python:3.10

# アプリケーションのソースコードを保存するディレクトリを指定
WORKDIR /app

# アプリケーションの依存関係をインストールするために、
# requirements.txtをイメージにコピーします。
COPY . /app/
RUN pip install -r requirements.txt

ENV FLSSK_APP app.py

# アプリケーションが8000番ポートでリッスンするように設定する
EXPOSE 8000

# コンテナが実行されたときにアプリケーションを起動するコマンド
CMD ["python", "manage.py", "flask", "run", "0.0.0.0", "-p", "8000"]
