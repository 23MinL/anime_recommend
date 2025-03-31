<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>애니메이션 갤러리</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS (운영 환경에서는 로컬 파일로 관리하는 것을 권장) -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .header {
            background-color: #343a40;
            color: #fff;
            padding: 1rem;
            text-align: center;
        }
        .footer {
            background-color: #343a40;
            color: #fff;
            padding: 1rem;
            text-align: center;
            margin-top: 2rem;
        }
        .card-img-top {
            transition: transform 0.3s ease;
        }
        .card-img-top:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
<header class="header">
    <h1>애니메이션 갤러리</h1>
    <p>최신 애니메이션 정보를 한눈에!</p>
</header>

<main class="container my-4">
    <div class="row">
        <c:if test="${not empty result}">
            <c:forEach var="a" items="${result}">
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                            <%-- Anime 객체에 imageUrl 속성이 없으므로 기본 이미지 사용 --%>
<%--                        <img src="https://via.placeholder.com/350x200?text=No+Image"--%>
<%--                             class="card-img-top" alt="${a.title}">--%>
                                <img src="${empty imgUrl ? 'https://via.placeholder.com/350x200?text=No+Image' : imgUrl}"
                                     onerror="this.onerror=null; this.src='https://via.placeholder.com/350x200?text=No+Image';"
                                     class="card-img-top" alt="${a.title}">
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title">${a.title}</h5>
                            <p class="card-text">${a.description}</p>
                            <p class="card-text">
                                <small class="text-muted">등록일: ${a.createdAt}</small>
                            </p>
                            <p class="card-text">추천 수: ${a.votes}</p>
                            <form method="post" action="vote" class="mt-auto">
                                <input type="hidden" name="uuid" value="${a.uuid}" />
                                <button type="submit" class="btn btn-primary btn-block">추천</button>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>

    <section class="my-4">
        <div class="card">
            <div class="card-header">
                새로운 애니메이션 등록
            </div>
            <div class="card-body">
                <form action="anime" method="post">
                    <div class="form-group">
                        <label for="title">이름</label>
                        <input type="text" class="form-control" id="title" name="title" placeholder="애니메이션 이름" required>
                    </div>
                    <div class="form-group">
                        <label for="description">설명</label>
                        <input type="text" class="form-control" id="description" name="description" placeholder="애니메이션 설명" required>
                    </div>
                    <div class="form-group">
                        <label for="imageUrl">이미지 URL</label>
                        <input type="text" class="form-control" id="imageUrl" name="imageUrl" placeholder="애니메이션 이미지 URL">
                    </div>
                    <button type="submit" class="btn btn-success">등록</button>
                </form>
            </div>
        </div>
    </section>
</main>

<footer class="footer">
    <p>&copy; 2025 Anime Gallery. All rights reserved.</p>
</footer>

<!-- Bootstrap JS 및 의존성 (jQuery, Popper.js) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
