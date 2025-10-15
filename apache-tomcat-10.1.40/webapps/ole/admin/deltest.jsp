<%@page import="java.util.List,ole.Test" %>
<jsp:useBean id="db" class="ole.DBManager" scope="application" />
<%
int testid=Integer.parseInt(request.getParameter("testid"));
db.deleteTest(testid);
%>
<jsp:forward page="index.jsp" />
