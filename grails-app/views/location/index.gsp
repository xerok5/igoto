<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/11/2017
  Time: 9:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<table>
    <thead>
    <tr>
        <th>Sn</th>

        <th>venue</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${locationlist}" var="list" status="i">
        <tr>
            <td><g:link action="edit" id="${list.id}">${i+1}</g:link></td>
            <td>${list.venue}</td>
        </tr>
    </g:each>
    </tbody>
</table>

</body>
</html>