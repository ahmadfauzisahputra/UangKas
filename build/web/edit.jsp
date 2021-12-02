<%-- 
    Document   : edit
    Created on : Nov 20, 2021, 8:52:52 AM
    Author     : LENOVO
--%>

<%@page import="common.user_tf"%>
<%@page import="CRUD.edit_value"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uang Kas Bulanan - Edit Data</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body style="background-color: #42d4f5;">
        <div class="w3-container">
        
        <%
        String id_kas = (String)request.getParameter("id_kas");
        edit_value ev = new edit_value();
        user_tf ut = ev.get_value_of_data(id_kas);
        %>
        
        <h1>Edit Data</h1>
        <form action="editcontrol.jsp" >
            No. Anggota  &nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="id_kas" value="<%= id_kas %> "><br><br>
            Nama Anggota : <input type="text" name="nama_anggota" value="<%= ut.getNama_anggota() %>" ><br><br>
            Jumlah Uang  &nbsp;&nbsp;&nbsp;: <input type="text" name="sumbangan_kas" value="<%= ut.getSumbangan_kas() %>"><br><br>
            
            
            <input type="submit" value="Selesai">
        </form>
        </div>
    </body>
</html>
