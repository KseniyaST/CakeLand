
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="lib/css/bootstrap.min.css" rel="stylesheet">
        <link href="lib/css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="lib/css/bootstrap-theme.css" type="text/css"/>
        <link rel="stylesheet" href="lib/css/main.css" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body style="height:100%; background-image:url('https://пироженка.рф/blog/wp-content/uploads/2017/05/9.jpg');">
        <div class="login-wrapper">
            <form class="login-form" method="POST" action="<%=request.getContextPath()%>/login">
                <div>
                    <label for="login">Username</label> 
                    <input class="input-log" type="text" name="login" id="login" />
                </div>
                <div>
                    <label for="password">Password</label> 
                    <input class="input-log" type="password" name="password" id="password" />
                </div>
                <button class="btn" type="submit">Submit</button>
            </form>
        </div>
    </body>
</html>
