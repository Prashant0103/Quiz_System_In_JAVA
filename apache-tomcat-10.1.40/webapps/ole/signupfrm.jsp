<html>
    <link href="project.css" type="text/css" rel="stylesheet" />
<body>
<jsp:include page="header.jsp" />
<hr>
<form action=reg.jsp method=post>
    <table class="bigbox" style="margin:auto;" cellpadding=5 cellspacing=5 >
    <tr><td class=header colspan="2" ><span class=headertext >User Registration</span></td></tr>
    <tr><td>Name</td><td><input type=text name=name size=40></td></tr>
    <tr><td> Gender</td><td><select name=gender><option>male</option><option>female</option></select></td></tr>
    <tr><td>Phone No</td><td><input type=text name=contactno size=40></td></tr>
    <tr><td>Email-ID</td><td><input type=text name=emailid size=40></td></tr>
    <tr><td>Password</td><td><input type=password name=pwd size=10></td></tr>
    <tr><td>Re-Enter</td><td><input type=password name=confirm size=10 ></td></tr>
    <tr><td></td><td><input type=Submit value="Register Me" class=btn > <input type=Reset class=btn > <a href=index.jsp class=btn >Cancel</a> </td></tr>
    </table>
    </form>
</body>
</html>
