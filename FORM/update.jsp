<%@ page language="java" import="java.io.*,java.sql.*"%>
<html>
<head>

<title>update</title>
</head>
<body>
<%
Connection con=null;
PreparedStatement st=null;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:login","system","sa");
String name=request.getParameter("name");
String course=request.getParameter("course");
String totalmark=request.getParameter("totalmark");
int newval=Integer.parseInt(s2);
st=con.prepareStatement("update regform set name='"+name+"',course='"+acourse+"',totalmark="+totalmark+" where id='"+id+"'")
int z=st.executeUpdate();
out.println("Details Updated");
con.close();
st.close();
%>
<form>
<a href="create.html">HOME</a>
</form>
</body>
</html>
