<%--
  Created by IntelliJ IDEA.
  User: liwei
  Date: 2019/1/19
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.xiaostudy.domain.Results" %>
<%@page import="java.util.*" %>
<html>
<head>
    <meta http-equiv="expires" content="0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <title>显示成绩</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-1.11.3.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/common.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/common.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/results.js"></script>
</head>
<body>
<div >
    <a href="#" id="addResults" onclick="addResults()" style="width: auto">添加成绩</a>
    <a href="#" id="inAddResults" onclick="inAddResults()" style="width: auto" >确认添加</a>
</div>
<table id="table">
    <tr>
        <td ><input type="text" class="top" value="成绩号" readonly="readonly" ></td>
        <td ><input type="text" class="top" value="年级" readonly="readonly"></td>
        <td ><input type="text" class="top" value="考试名称" readonly="readonly"></td>
        <td ><input type="text" class="top" value="姓名" readonly="readonly" ></td>
        <td ><input type="text" class="top" value="学科" readonly="readonly"></td>
        <td ><input type="text" class="top" value="分数" readonly="readonly"></td>
    </tr>
    <c:forEach var="results" items="${resultsAll}" step="1">
        <tr id="deleteResults${results.resultsNumber}">
            <td ><input type="text" id="resultsNumber${results.resultsNumber}" class="resultsEdit${results.resultsNumber}" value="${results.resultsNumber}" readonly="true"></td>
            <td ><input type="text" id="gradeName${results.resultsNumber}" class="resultsEdit${results.resultsNumber}" value="${results.student.clazz.grade.gradeName}" readonly="true"></td>
            <td ><input type="text" id="testName${results.resultsNumber}" class="resultsEdit${results.resultsNumber}" value="${results.test.testName}" readonly="true"></td>
            <td ><input type="text" id="studentName${results.resultsNumber}" class="resultsEdit${results.resultsNumber}" value="${results.student.studentName}" readonly="true"></td>
            <td ><input type="text" id="subjectName${results.resultsNumber}" class="resultsEdit${results.resultsNumber}" value="${results.test.subject.subjectName}" readonly="true"></td>
            <td ><input type="text" id="score${results.resultsNumber}" class="resultsEdit${results.resultsNumber}" value="${results.score}" readonly="true"></td>
            <td ><a href="#" class="editResults" id="editResults${results.resultsNumber}" onclick="resultsEdit('${results.resultsNumber}')" >编辑</a>
            <a href="#" class="saveEditResults" id="saveEditResults${results.resultsNumber}" onclick="saveResultsEdit('${results.resultsNumber}')" >保存</a> </td>
            <td ><a href="#" onclick="deleteResults('${results.resultsNumber}')" >删除</a> </td>
        </tr>
    </c:forEach>
</table>

<br/>
</body>
</html>
