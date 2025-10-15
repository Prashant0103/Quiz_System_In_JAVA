<%@page import="java.util.List,ole.Test,ole.Qbank,ole.Result" %>
<jsp:useBean id="db" class="ole.DBManager" scope="application" />
<%
String qlst=request.getParameter("qlst");
String qidarr[]=qlst.split(" ");
int marks=0;
for(String id:qidarr)
    {
        System.out.println("["+id+"]");
        if(request.getParameter("que"+id)!=null)
        {
            
            int userans=Integer.parseInt(request.getParameter("que"+id));
            int ans=db.getAns(Integer.parseInt(id.trim()));
            if(userans==ans)
                marks++;
        }
    }
String uid=(String)session.getAttribute("userid");    
int testid=Integer.parseInt(request.getParameter("testid"));
Result res=new Result();
res.setEmailid(uid);    
res.setScore(marks);
res.setTestid(testid);
db.addResult(res);
%>
<html>
    <link href="../project.css" type="text/css" rel="stylesheet" />
<body>
<jsp:include page="header.jsp" />
<hr>
<table style="margin: auto;" cellspacing=20 >
    <tr>
        <td class=bigbox style="vertical-align: top;" >
        <div class=subtitle >Student-Section :Exam Result  </div>    
            <hr>
            <div class=smallbox style="margin:auto;width:400px" >Dear Student you have Scored <%=marks%> Marks in this test</div>
            <hr>
            <a href=../index.jsp class=btn >Logout</a>
        </td>
    </tr>
</table>
</body>

</html>