<jsp:useBean id="test" class="ole.Test" />
<jsp:useBean id="db" class="ole.DBManager" scope="application" />
<jsp:setProperty name="test" property="*" />
<%
db.addTest(test);
%>
<jsp:forward page="index.jsp" />