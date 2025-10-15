<%@page import="java.util.List,ole.Test" %>
<jsp:useBean id="db" class="ole.DBManager" scope="application" />
<%
List <Test>lst=db.getTestList();
%>
<html>
    <link href="../project.css" type="text/css" rel="stylesheet" />
<body>
<jsp:include page="header.jsp" />
<hr>
<table style="margin: auto;" cellspacing=20 >
    <tr>
        <td class=bigbox style="vertical-align: top;" >
        <div class=subtitle >Admin-Section : Test Management</div>    
        <hr>
            <form action=addtest.jsp >
                <input type=hidden name=subject value=Java >
            <table class=smallbox border=1 cellpadding=5 cellspacing=5 >
                <tr><th>Test Name</th><th>Questions</th><th>Duration</th><th>Commands</th></tr>
                <tr>
                    <td><input type=text name=testname size=20 required></td>
                    <td><input type=text name=qcount size=2 required pattern="(\d)+" ></td>
                    <td><input type=text name=duration size=2 required pattern="(\d)+" > Mins</td>
                    <td><input type=submit value="Add Test" class=btn ></td>
                </tr>
                <%
                for(Test test:lst)
                {
                    %>
                    <tr>
                        <td><%=test.getTestname()%></td>
                        <td><%=test.getQcount()%></td>
                        <td><%=test.getDuration()%></td>
                        <td><a href=testresult.jsp?testid=<%=test.getTestid()%> class=btn >Result</a> <a href=deltest.jsp?testid=<%=test.getTestid()%> class=btn >Delete Test</a> </td>
                    </tr>
                    <%
                }
                %>
            </table>
            
            </form>
            <hr>
            <a href=../index.jsp class=btn >Logout</a>
        </td>
    </tr>
</table>
</body>
</html>