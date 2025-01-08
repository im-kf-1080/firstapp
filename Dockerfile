# 使用する基本イメージとして OpenJDK を指定
FROM openjdk:21-jdk-slim

# 作業ディレクトリを作成
WORKDIR /app

# プロジェクト全体をコピーする
COPY . . 

# Gradle を使用してアプリをビルド
RUN chmod +x gradlew && ./gradlew build -x test

# JARファイルを指定してアプリを実行
CMD ["java", "-jar", "build/libs/firstapp-0.0.1-SNAPSHOT.jar"]