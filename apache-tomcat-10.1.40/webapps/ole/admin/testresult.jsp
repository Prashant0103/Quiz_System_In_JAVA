<%@page import="java.util.List,ole.Test,ole.Result,ole.UserMaster" %>
<jsp:useBean id="db" class="ole.DBManager" scope="application" />
<%
int testid=Integer.parseInt(request.getParameter("testid"));
List <Result>lst=db.getResultList(testid);
%>
<html>
    <link href="../project.css" type="text/css" rel="stylesheet" />
<body>
<jsp:include page="header.jsp" />
<hr>
<table style="margin: auto;" cellspacing=20 >
    <tr>
        <td class=bigbox style="vertical-align: top;" >
        <div class=subtitle >Admin-Section : Result</div>    
        <hr>
            
            <table class=smallbox border=1 cellpadding=5 cellspacing=5 >
                <tr><th>Name</th><th>Marks</th></tr>
                <%
                for(Result res:lst)
                {
                    String uid=res.getEmailid();
                    UserMaster user=db.getUserInfo(uid);
                    %>
                    <tr>
                        <td><%=user.getName()%></td>
                        <td><%=res.getScore()%></td>
                    </tr>
                    <%
                }
                %>
            </table>
            <hr>
            <a href=../index.jsp class=btn >Logout</a><a href=index.jsp class=btn >Test Management</a>
        </td>
    </tr>
</table>
</body>
</html>