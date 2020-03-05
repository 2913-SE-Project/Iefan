<%--
  Created by IntelliJ IDEA.
  User: iefan_wey
  Date: 2020/2/26
  Time: 4:52 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>

<!DOCTYPE HTML>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Server on Ticat</title>

    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>

    <link rel='stylesheet' href='css/animate.min.css'>

    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    <div>
        <nav>
            <div class="menu-container">
                <!-- Menu -->
                <ul class="menu">
                    <li class="menu-logo">
                        <a href="index.jsp">
                            <i class="fa fa-ticket" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li class="menu-sale">
                        <a href="sale.jsp">
                            <span>Sale</span>
                        </a>
                    </li>
                    <li class="menu-ticket">
                        <a href="#">
                            <span>Ticket</span>
                        </a>
                    </li>
                    <li class="menu-client">
                        <a href="#">
                            <span>Client</span>
                        </a>
                    </li>
                    <li class="menu-search">
                        <a href="#">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>

                <!-- Search -->
                <div class="menu-search-container">
                    <div class="menu-search-input">
                        <form action="">
                            <a href="#">
                                <i class="fa fa-search" aria-hidden="true"></i>
                            </a>
                            <input class="menu-search-input" type="text" aria-label="Search apple.com" placeholder="Search apple.com" autocorrect="off" autocapitalize="off" autocomplete="off" spellcheck="false">
                        </form>
                    </div>
                    <a class="menu-search-close" href="#">
                        <i class="fa fa-close" aria-hidden="true"></i>
                    </a>
                    <div class="search-sub-menu">
                        <h3>Quick Links</h3>
                        <ul>
                            <li><a href="#">Find a ticket</a></li>
                            <li><a href="#">Clients</a></li>
                            <li><a href="#">Today's movie</a></li>
                            <li><a href="#">Sale Comparision</a> </li>
                        </ul>
                    </div>
                </div>

            </div>
        </nav>
    </div>

    <div class="fade-screen"></div>

    <rapid:block name="body"></rapid:block>

</body>
<script src='js/jquery.min.js'></script>
<script src="js/script.js"></script>
</html>