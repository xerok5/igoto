<%--
  Created by IntelliJ IDEA.
  User: Crown
  Date: 5/2/2017
  Time: 5:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>User List</title>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="index.gsp"><g:message code="default.home.label"/></a></li>
        <li><g:link action="create">New User</g:link></li>
        <li style="float: right;">
            <g:form action="search">
                <g:textField name="search"></g:textField>
                <g:submitButton name="search" value="Search"></g:submitButton>
            </g:form>
        </li>
    </ul>
</div>
<div id="list-user" class="content scaffold-list">
    <table>
        <thead>
        <tr>
            <th>Sn</th>
            <th>Username</th>
            <th>Password</th>
            <th>User Type</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${userlist}" var="list" status="i">
            <tr>
                <td><g:link action="edit" id="${list.id}">${i+1}</g:link></td>
                <td>${list.username}</td>
                <td>${list.password}</td>
                <td>${list.user_type}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>