FROM ruby:3.3.6-slim

# 必要なパッケージをインストール
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git libpq-dev postgresql-client && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# 作業ディレクトリを /rails に設定
WORKDIR /rails

# Gemfileをコピーしてインストール
COPY Gemfile Gemfile.lock ./
RUN bundle install

# アプリケーションのコードをコピー
COPY . .

# サーバー起動時のコマンド（不要なpidファイルを削除してから起動）
EXPOSE 3000
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bin/rails server -b 0.0.0.0"]