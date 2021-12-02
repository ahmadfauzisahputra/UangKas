<%-- 
    Document   : insert_controller
    Created on : Nov 20, 2021, 1:11:34 AM
    Author     : LENOVO
--%>

<%@page import="CRUD.insert_value"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id = request.getParameter("id_kas");
        String na = request.getParameter("nama_anggota");
        String sk = request.getParameter("sumbangan_kas");
        

        insert_value iv = new insert_value();
        iv.insert_val(id,na,sk);
        %>
        <script type="text/javascript">
            window.location.href="http://localhost:8080/UangKas/insert.jsp";
        </script>
    </body>
</html>
