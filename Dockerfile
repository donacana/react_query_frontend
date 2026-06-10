FROM jenkins/jenkins:lts-jdk21

USER root

# 기본 패키지 설치
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Docker CLI 설치 (Jenkins에서 Docker 빌드용)
RUN curl -fsSL https://get.docker.com | sh

USER jenkins

EXPOSE 8080 50000