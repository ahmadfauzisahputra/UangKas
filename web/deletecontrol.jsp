<%-- 
    Document   : insert_controller
    Created on : Nov 20, 2021, 1:11:34 AM
    Author     : LENOVO
--%>

<%@page import="CRUD.delete_value"%>
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
        
        delete_value dv = new delete_value();
        dv.delete(id);

        %>
        <script type="text/javascript">
            window.location.href="http://localhost:8080/UangKas/insert.jsp";
        </script>
    </body>
</html>
