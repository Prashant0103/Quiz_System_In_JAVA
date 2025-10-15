<jsp:useBean id="db" class="ole.DBManager" scope="application" />
<%
String uid=request.getParameter("userid");
String pwd=request.getParameter("pwd");
if(db.isUserValid(uid,pwd))
    {
        if(uid.equals("mcq@admin"))
            response.sendRedirect("admin/index.jsp");        
        else
            {
                session.setAttribute("userid",uid);
                response.sendRedirect("user/index.jsp");        
            }
    }
else
    response.sendRedirect("index.jsp?login=0");
%>