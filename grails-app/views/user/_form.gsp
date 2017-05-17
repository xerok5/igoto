<table>

    <tr>
        <td>Username</td>
        <td><g:textField name="username" value="${userinfo?.username}" required=""></g:textField></td>


    </tr>
    <tr>
        <td>Password</td>
        <td><g:passwordField name="password" value="${userinfo?.password}" required=""></g:passwordField></td>
    </tr>
    <tr>
        <td>User Type</td>
        <td><g:textField name="user_type" value="${userinfo?.user_type}" required=""></g:textField></td>
    </tr>

</table>