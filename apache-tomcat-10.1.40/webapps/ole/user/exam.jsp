<%@page import="java.util.List,ole.Test,ole.Qbank" %>
<jsp:useBean id="db" class="ole.DBManager" scope="application" />
<%
int testid=Integer.parseInt(request.getParameter("testname"));
Test test=db.getTest(testid);
List <Qbank>lst=db.getQuestions(test.getSubject(),test.getQcount());    
%>
<html>
    <link href="../project.css" type="text/css" rel="stylesheet" />
    
<body>
<div id="clock" style="position: fixed;top: 95%;left: 90%;background-color: yellow;padding: 5px 10px;border: 2px solid orangered;"  >
    Time
</div>    
<jsp:include page="header.jsp" />
<hr>
<form name=frm action="examresult.jsp" method=post >
<table style="margin: auto;" cellspacing=20 >
    <tr>
        <td class=bigbox style="vertical-align: top;" >
        <div class=subtitle >Student-Section <br>
            TestName:<%=test.getSubject()%>  Duration:<%=test.getDuration()%> minutes  
            <input type=hidden name=t1 readonly size=1 value=<%=test.getDuration()-1%> >
            <input type=hidden name=tsec readonly size=1 value=59 >
        </div>    
            <hr>
            <table width=100% cellspacing=10px >
            <%
            int i=1;
            String qlst="";
            for(Qbank que:lst)
                {
                    qlst=qlst+que.getQid()+" ";
                    String op1="<input type=radio name=que"+que.getQid()+" value=1 >";
                    String op2="<input type=radio name=que"+que.getQid()+" value=2 >";
                    String op3="<input type=radio name=que"+que.getQid()+" value=3 >";
                    String op4="<input type=radio name=que"+que.getQid()+" value=4 >";
                    %>
                    <tr>
                    <td colspan="2" ><big><big><b>[<%=i%>] <%=que.getQuestion()%> </b></big></big></td>
                    </tr>
                    <tr>
                        <td class=roundbtn style="width: 50%;" > <%=op1%> <%=que.getOption1()%></td><td  class=roundbtn > <%=op2%> <%=que.getOption2()%></td>
                    </tr>
                    <tr>
                        <td  class=roundbtn > <%=op3%> <%=que.getOption3()%></td><td  class=roundbtn > <%=op4%> <%=que.getOption4()%></td>
                    </tr>
                    <tr><td colspan="2" ><hr size=1px color=silver ></td></tr>
                    <%
                    i++;
                }
            qlst=qlst.trim();
            %>
            </table>
            <input type=hidden name=qlst value='<%=qlst%>' >
            <input type=hidden name=testid value='<%=testid%>' >
            <input type=submit value=Submit  class=btn >
        </td>
    </tr>
</table>
</form>
</body>
<script  >
    
    
    
    setInterval(function()
    {
    
    document.frm.tsec.value=Number(document.frm.tsec.value)-1;
    if (document.frm.t1.value==0 && document.frm.tsec.value==0)
        document.frm.submit()
    if(document.frm.tsec.value==0)
        {
            document.frm.t1.value=Number(document.frm.t1.value)-1;
            document.frm.tsec.value=59;
        }
    
    if (document.frm.t1.value==0 && document.frm.tsec.value==59)
        alert("Only 1 minute remaining..")
    
    
    
    tm=document.frm.t1.value+" : "+document.frm.tsec.value;
    document.getElementById("clock").innerHTML=tm;
    },1000);
    </script>    
</html>