<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, com.technolab.dao.TechnolabDAO, com.technolab.model.*" %>
<% List<Certification> list = TechnolabDAO.getCertifications(); %>
<!DOCTYPE html>
<html><head>
<meta charset="UTF-8"><title>Certifications - Technolab ISTA</title>
<link rel="stylesheet" href="assets/css/certifications.css">
<link rel="stylesheet" href="assets/css/style.css">
</head><body>
<h1 style="text-align:center; color:#0d2a54;">Certifications & Accréditations</h1>
<p style="text-align:center;">Agréé le 18 Mai 1998 - Plus de 2500 étudiants</p>
<div class="grid-certs">
<% for(Certification c : list){ %>
    <div class="card-cert">
        <img src="assets/img/<%= c.getLogo() %>" style="height:70px">
        <h3><%= c.getNom() %></h3>
        <p><b><%= c.getOrg() %></b></p>
        <small><%= c.getAnnee() %></small>
        <div class="statut"><%= c.getStatut() %></div>
    </div>
<% } %>
</div>
</body></html>