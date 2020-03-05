<%--
  Created by IntelliJ IDEA.
  User: iefan_wey
  Date: 2020/2/29
  Time: 12:11 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid"%>
<%@ page import="java.sql.*"%>
<link rel="stylesheet" href="css/style.css">
<div>
    <rapid:override name="body">
        <div>
            <h3>
                All orders
            </h3>
            <div class="table-wrapper">
                <%
                    try{
                        Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
                        String url = "jdbc:mysql://localhost:3306/database1"; //数据库名
                        String username = "root";  //数据库用户名
                        String password = "Aa123456";  //数据库用户密码
                        Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

                        if(conn != null){
                            out.print("数据库连接成功！");
                            out.print("<br />");
                %>
                <table class="fl-table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                    </tr>
                    </thead>
                <%
                    Statement stmt = null;
                    ResultSet rs = null;
                    String sql = "SELECT * from new_table";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(sql);
                    while (rs.next()){
                %>
                    <tbody>
                    <tr>
                        <td><%=rs.getString("ID") %></td>
                        <td><%=rs.getString("Name") %></td>
                        <td><%=rs.getString("Age") %></td>
                    </tr>
                    </tbody>
                <%
                    }
                    }else {
                            out.println("Fail connection");
                    }
                    }catch (Exception e){
                        out.println("Warning");
                    }
                %>
                </table>
            </div>
        </div>

    </rapid:override>
</div>

<%@include file="base.jsp"%>

