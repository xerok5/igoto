<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/13/2017
  Time: 11:26 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="index.gsp"><g:message code="default.home.label"/></a></li>
        <li><g:link action="create">Add Category</g:link></li>
        <li style="float: right;">
            <g:form action="search">
                <g:textField name="search"></g:textField>
                <g:submitButton name="search" value="Search"></g:submitButton>
            </g:form>
        </li>
    </ul>
</div>
%{--<table>--}%
    %{--<tr>--}%
        %{--<th>Sn</th>--}%
        %{--<th>Category Name</th>--}%
    %{--</tr>--}%
    %{--<g:each in="${catlist}" var="${list}" status="i">--}%
        %{--<tr>--}%
            %{--<td>${i+1}</td>--}%
            %{--<td>${list.category_name}</td>--}%
        %{--</tr>--}%
    %{--</g:each>--}%
%{--</table>--}%
</body>
</html>