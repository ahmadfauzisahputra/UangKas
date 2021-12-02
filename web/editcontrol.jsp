<%-- 
    Document   : insert_controller
    Created on : Nov 20, 2021, 1:11:34 AM
    Author     : LENOVO
--%>

<%@page import="CRUD.edit_value"%>
<%@page import="common.user_tf"%>
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
        
        user_tf ut = new user_tf();
        ut.setId_kas(id);
        ut.setNama_anggota(na);
        ut.setSumbangan_kas(sk);
        
        edit_value ev = new edit_value();
        ev.edit_data(ut);
        %>
        <script type="text/javascript">
            window.location.href="http://localhost:8080/UangKas/insert.jsp";
        </script>
    </body>
</html>
