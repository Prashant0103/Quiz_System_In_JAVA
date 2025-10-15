<%
String msg="";

if(request.getParameter("login")!=null)
    msg="Invalid UserID/Password";
%>

<html>
    <link href="project.css" type="text/css" rel="stylesheet" />
<body>
<jsp:include page="header.jsp" />
<hr>
<center>
<img src="images/exam.jpg" height="270px" class=photo  /><br>
<form action=login.jsp method=post >
    <table class="smallbox grid" cellspacing=10px >
        <tr><td>UserID</td><td><input type="text" name=userid size=20 required ></td></tr>
        <tr><td>Password</td><td><input type="password" name=pwd size=20 required ></td></tr>
        
        <tr><td></td><td><input type="submit" value=Login class=btn ><a href=signupfrm.jsp class=btn >Sign-Up</a> </td></tr>
        <tr><td colspan="2" class=errmsg ><%=msg%></td></tr>
    </table>
    </form>
</center>
</body>
</html>