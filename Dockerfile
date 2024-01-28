# 사용할 기반 이미지 선택
# node.js 14 기반의 aplpine-linux 사용
FROM node:14-alpine 

# 작업 디렉토리 생성 및 설정
WORKDIR /app

# 앱 의존성 설치
COPY package*.json ./
RUN npm install

# 앱 소스 코드 복사
COPY . .

# 앱 빌드
RUN npm run build

# 포트 오픈
EXPOSE 3000

# 앱 실행
CMD ["npm", "start"]
