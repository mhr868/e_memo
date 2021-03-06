<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>Eitan</title>
        <link rel="stylesheet" href="<c:url value='/css/reset.css'/>">
        <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div id="header_menu">
                    <a href="<c:url value='/'/>">Top</a>&nbsp;&nbsp;&nbsp;
                    <a href="<c:url value='/word/index'/>">words</a>&nbsp;&nbsp;&nbsp;
                    <c:if test="${sessionScope.login_user != null}">

                        <a href="<c:url value='/user/word/index'/>">mypage</a>&nbsp;&nbsp;&nbsp;

                     </c:if>
                </div>
                <c:choose>
                    <c:when test="${sessionScope.login_user != null}">
                        <div id="employee_name">
                            <c:out value="${sessionScope.login_user.name}"/>&nbsp;さん&nbsp;&nbsp;
                            <a href="<c:url value='/logout'/>">ログアウト</a>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div id="employee_name">
                            <a href="<c:url value='/login'/>">ログイン</a>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
            <div id="content">
                ${param.content}
            </div>
            <div id="footer">
                <br/>
                <br/>
            </div>

        </div>
    </body>
</html>