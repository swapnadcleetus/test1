<%@ page language="java" import="java.io.*,java.sql.*"%>
  <head>
    
    <title>Search</title>
  </head>
  <body>
  <%
  Connection con=null;
  Statement st=null;
  ResultSet rs=null;
  String s=request.getParameter("t1");
  try
  {
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    con=DriverManager.getConnection("jdbc:odbc:login");
    st=con.createStatement();
    rs=st.executeQuery("select * from regform where name='"+s+"'");
    if(rs.next())
    {
    out.println("NAME:"+rs.getString("name"));
    out.println("COURSE:"+rs.getString("course"));
    out.println("TOTALMARK:"+rs.getString("totalmark"));
 }   
}
catch(Exception e)
{
System.out.println("doesn't exist");
}
  %>
  <form>
<a href="create.html">HOME</a>
</form>
  </body>
</html>
