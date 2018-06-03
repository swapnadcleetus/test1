<%@ page language="java" import="java.io.*,java.sql.*"%>



<html>
    <head>
        <title>dislay students datas </title>
    </hesd>

    <body>
        

        <% 

           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
          con=DriverManager.getConnection("jdbc:odbc:login","system","sa");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from tableName") ; 
        %>

        <table border="1">
            <td>
               
                <th>Name</th>
                <th>course</th>
                <th>totalmarks</th>
    
            </th>
            <% while(resultset.next()){ %>
            <tr>
                <td> <%= resultset.getString(1) %></td>
                <td> <%= resultset.getString(2) %></td>
                <td> <%= resultset.getString(3) %></td>
                <td> <%= resultset.getString(4) %></td>
                <td> <%= resultset.getString(5) %></td>
            </tr>
            <% } %>
        </table>
        <form><a href="create.html">HOME</a></form>
    </body>
</html>