<%@ page language="java" import="java.io.*,java.sql.*"%>
<html>
<head>
<title>INSERT</title>
</head>
<body>
<%
Connection con=null;
PreparedStatement st=null;
String st1=request.getParameter("name");
String st2=request.getParameter("course");
String st3=request.getParameter("total");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:login","system","sa");
st=con.prepareStatement("insert into regform values('"+st1+"',"+st2+","+st3+")");
try
{
int z=st.executeUpdate();
out.println("sucessfully registered");
}
catch(Exception e)
{
System.out.println(e);
}
st.close();
con.close();
}
catch(Exception e)
{
System.out.println("error");
}
%>
<form>
<a href="create.html">HOME</a>
</form>
</body>
</html>
