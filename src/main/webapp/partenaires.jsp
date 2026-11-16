<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, com.technolab.dao.TechnolabDAO, com.technolab.model.*" %>
<%
    List<Partenaire> list = TechnolabDAO.getPartenaires();
%>
<!DOCTYPE html>
<html><head>
<meta charset="UTF-8"><title>Nos Partenaires - Technolab ISTA</title>
<link rel="stylesheet" href="assets/css/partenaires.css">
<link rel="stylesheet" href="assets/css/style.css">
</head><body>
<h1 style="text-align:center; color:#0d2a54;">Nos Partenaires</h1>
<div class="grid-partenaires">
<% for(Partenaire p : list){ %>
    <div class="card">
        <img src="assets/img/<%= p.getLogo() %>" style="height:60px">
        <h3><%= p.getNom() %></h3>
        <span class="badge"><%= p.getPays() %> - <%= p.getType() %></span>
        <p><%= p.getDesc() %></p>
    </div>
<% } %>
</div>
<h2 style="text-align:center; margin-top:40px;">Récompenses Internationales</h2>
<ul style="max-width:800px; margin:auto;">
    <li><b>24 Juin 2026:</b> Palme de l'Université la Plus Dynamique du Mali</li>
    <li><b>02 Juillet 2022:</b> 22ème Promotion - 300 diplômés - Parrain Général Kéba Sangaré</li>
    <li><b>12 Juillet 2026:</b> Journée Culturelle SETI - Maison des Pionniers</li>
</ul>
</body></html>