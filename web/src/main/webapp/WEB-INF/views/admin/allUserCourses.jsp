<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <jsp:include page="../css.jsp"/>
    <title>Admin All UserCourses Page</title>
</head>
<body>

<div class="wrapper">

    <c:import url="/WEB-INF/views/main/header.jsp"/>

    <div id="content">

        <p><a href="${contextPath}/admin/allRoles">Список всех ролей</a></p>
        <p><a href="${contextPath}/admin/allCourses">Список всех курсов</a></p>
        <p><a href="${contextPath}/admin/allStudentsPagination/1">Список всех студентов</a></p>
        <p><a href="${contextPath}/admin/allTeachersPagination/1">Список всех преподавателей</a></p>
        <p>Список все юзер-курсы</p>

        <hr/>

        <p><b>Список юзер-курсов:</b></p>
        <table border="1" cellspacing="0" cellpadding="5">
            <tr>
                <th>userCourseId</th>
                <th>user</th>
                <th>course</th>
                <th>rating</th>
            </tr>
            <c:forEach var="uc" items="${userCourses}">
                <tr>
                    <td><c:out value="${uc.userCourseId}" />
                    <td><c:out value="${uc.user.username}" />
                    <td><c:out value="${uc.course.courseName}" />
                    <td><c:out value="${uc.rating}" />
                <tr />
            </c:forEach>
        </table>

    </div>

    <c:import url="/WEB-INF/views/main/footer.jsp"/>

</div>

</body>
</html>













