<jsp:useBean id="db" class="ole.DBManager" scope="application" />
<jsp:useBean id="user" class="ole.UserMaster" />
<jsp:setProperty name="user" property="*" />
<%
System.out.println(user.getEmailid());
System.out.println(user.getName());
System.out.println(user.getContactno());
System.out.println(user.getGender());
System.out.println(user.getPwd());
System.out.println(db);
boolean res=db.addUser(user);
String msg="";
if(res==true)
    msg="You are Successfully Registered...";
else
    msg="You are Already Registered...";
%>
<html>
    <link href="project.css" type="text/css" rel="stylesheet" />
<body>
<jsp:include page="header.jsp" />
<hr>

    <table class="bigbox" style="margin:auto;" cellpadding=5 cellspacing=5 >
    <tr><td class=header colspan="2" ><span class=headertext >User Registration</span></td></tr>
    <tr><td></td><td><%=msg%></td></tr>
    <tr><td></td><td><a href=index.jsp class=btn >Home</a>   </td></tr>
    </table>
<hr>
 
</body>
</html>
