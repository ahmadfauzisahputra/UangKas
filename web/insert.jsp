<%-- 
    Document   : insert
    Created on : Nov 20, 2021, 1:53:41 AM
    Author     : LENOVO
--%>

<%@page import="java.util.*"%>
<%@page import="common.user_tf"%>
<%@page import="CRUD.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uang Kas Bulanan - Input Data</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body style="background-color: #42d4f5;">
        <div class="w3-container">
        <h1>Masukkan Data</h1>
        <form action="inputc.jsp" method="POST">
            No. Anggota  &nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" name="id_kas"><br><br>
            Nama Anggota : <input type="text" name="nama_anggota"><br><br>
            Jumlah Uang  &nbsp;&nbsp;&nbsp;: <input type="text" name="sumbangan_kas"><br><br>
            
            
            <input type="submit" value="Tambah Data">
        </form>
        <hr>
        <%
        read_value rv = new read_value();
        List<user_tf> list = rv.get_values();
        Iterator<user_tf> it_list = list.iterator();
        %>
        
        <table class="w3-table-all w3-centered" style="width: 60%">
            <th>No Anggota</th>
            <th>Nama Anggota</th>
            <th>Sumbangan Kas</th>
            <th>Aksi</th>
            <%
            while(it_list.hasNext()){
                user_tf ut = new user_tf();
                ut = it_list.next();
            %>
            <tr>
                <td><%=ut.getId_kas()%></td>
                <td><%= ut.getNama_anggota() %></td>
                <td>Rp. <%= ut.getSumbangan_kas() %></td>
                <td><a href="edit.jsp?id_kas=<%= ut.getId_kas() %>">Edit</a>&nbsp;  |&nbsp;
                    <a href="deletecontrol.jsp?id_kas=<%= ut.getId_kas() %>">Hapus
                    </a>
            </tr>
            <%}%>
        </table>
        </div>
    </body>
</html>
