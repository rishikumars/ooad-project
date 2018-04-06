<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<body background="success.jpg" style="background-size:cover">
<%
String id = request.getParameter("search");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:8081/";
String dbName = "mydb";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<center><h1 style="color:white"> Successfully Purchased</h1></style></center>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="update products set quantity=quantity-1 where product='" + id + "' ";

resultSet = statement.executeQuery(sql);
{
%>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</body>