<%@page import="java.util.List,ole.Test" %>
<jsp:useBean id="db" class="ole.DBManager" scope="application" />
<%
List <Test>lst=db.getTestList();
StringBuffer cbtestlist=new StringBuffer("<select name=testname  >");
for(Test test:lst)
{
    cbtestlist.append("<option value="+test.getTestid()+" >TestName:"+test.getTestname()+" Questions:"+test.getQcount()+" Duration:"+test.getDuration()+" </option>");
}
cbtestlist.append("</select>");    
%>
<html>
    <link href="../project.css" type="text/css" rel="stylesheet" />
<body>
<jsp:include page="header.jsp" />
<hr>
<table style="margin: auto;" cellspacing=20 >
    <tr>
        <td class=bigbox style="vertical-align: top;" >
        <div class=subtitle >Student-Section  </div>    
            <hr>
            <form action=exam.jsp method="POST" >
            Select Test:<%=cbtestlist%>
            <input type="submit" value="Start Test" class=btn >
            </form>
            <hr>
            <a href=../index.jsp class=btn >Logout</a>
        </td>
    </tr>
</table>
</body>
</html>