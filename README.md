# 🎠 애니메이션 추천

애니메이션 정보를 등록, 조회, 추천할 수 있는 간단한 웹 애플리케이션입니다.  
Java + MyBatis 생성자 매핑을 기반으로 구성되며, JSP와 Bootstrap을 활용해 UI를 구성합니다.

## 🔧 기술 스택

- **Backend:** Java 17, Spring MVC, MyBatis
- **Frontend:** JSP, Bootstrap 4
- **Database:** MySQL
- **Build:** Maven
- **배포:** Tomcat / Docker 지원

## 📌 주요 기능

- 애니메이션 목록 조회
- 애니메이션 등록 (제목, 설명, 이미지 URL)
- 추천(투표) 기능
- 기본 이미지 처리 (`onerror` 사용)

## 🗂 프로젝트 구조

```
meal-is-all-you-need/ 
├── src 
│ ├── main 
│ │ ├── java 
│ │ │ └── org/example/mealisallyouneed/ 
│ │ │ ├── config 
│ │ │ │ ├── AppConfig.java 
│ │ │ │ ├── MyBatisConfig.java 
│ │ │ │ ├── WebAppInitializer.java 
│ │ │ │ └── WebConfig.java 
│ │ │ ├── controller 
│ │ │ │ └── IndexController.java 
│ │ │ └── model 
│ │ │ ├── mapper 
│ │ │ │ ├── AnimeMapper.java 
│ │ │ │ └── TestMapper.java 
│ │ │ └── vo 
│ │ │ └── Anime.java // Java Record (with JavaBean getter methods) 
│ │ ├── resources 
│ │ │ ├── mybatis-config.xml 
│ │ │ └── mappers 
│ │ │ └── AnimeMapper.xml 
│ │ └── webapp 
│ │ └── WEB-INF 
│ │ └── views 
│ │ └── index.jsp 
│ └── test 
│ └── java 
├── sql 
│ └── db.sql 
├── Dockerfile 
├── pom.xml 
└── README.md
```



## 🧩 향후 추가할 기능

- 🖼 **이미지 미리보기 업로드**: URL 외에도 파일 업로드 지원
- 💬 **댓글 기능**: 애니메이션별 코멘트 가능
- 📊 **통계 페이지**: 추천수 TOP 랭킹 제공
- 🐳 **Docker Compose 지원**: DB + 서버 통합 실행


