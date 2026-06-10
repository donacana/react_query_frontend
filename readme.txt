이미지 빌드
docker build -t my-jenkins .

컨테이너 실행(리눅스용)
docker run -d \
  --name jenkins \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  --restart unless-stopped \
  my-jenkins
  (윈도우용)
  docker run -d --name jenkins -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --restart unless-stopped jenkins/jenkins:lts-jdk21

아이디 TNDKA
비밀번호 QWERT12345