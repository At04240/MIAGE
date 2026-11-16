<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Demande envoyée | TechnoLAB - ISTA</title>
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<div class="topbar"><span>TechnoLAB - ISTA • Demande reçue • Merci ! •&nbsp;</span></div>

<header class="cartouche">
  <div class="logo-zone">
    <img src="assets/img/logo-technolab-ista.png" alt="Logo" class="logo-img">
    <div class="logo-texte"><span class="logo-techno">Techno<span>LAB</span> - ISTA</span><span class="logo-mali">Bamako - Mali • Depuis 1998</span></div>
  </div>
  <nav class="menu"><a href="index.jsp">Accueil</a><a href="admissions.jsp">Admission</a><a href="contact.jsp">Contact</a></nav>
</header>

<section class="valeur" style="text-align:center">
  <h2 style="color:#0a6b2e">✅ Demande reçue !</h2>
  <p>Merci <b>${nom}</b>, ton message est affiché ci-dessous.</p>

  <div style="background:#fff;border:1px solid #ddd;border-radius:16px;padding:20px;max-width:600px;margin:20px auto;text-align:left;box-shadow:0 8px 24px rgba(0,0,0,.08)">
    <p><b>Nom :</b> ${nom}</p>
    <p><b>Téléphone :</b> ${telephone}</p>
    <p><b>Email :</b> ${email}</p>
    <p><b>Cycle :</b> ${cycle}</p>
    <p><b>Message :</b><br>${message}</p>
  </div>

  <p><b>Choisis comment envoyer ta demande :</b></p>

  <a href="${lienWhatsapp}" class="btn" style="background:#25D366;color:#fff">💬 Envoyer par WhatsApp au +223 64 71 69 09</a>
  <br><br>
  <a href="${lienEmail}" class="btn btn-orange">📧 Envoyer par Email à infos@technolab-ista.com</a>
  <br><br>
  <a href="index.jsp">← Retour à l'accueil</a>
</section>

<footer>
  <div><b>TechnoLAB - ISTA</b><br>Hamdallaye ACI 2000, Bamako</div>
  <div><b>Contact</b><br>(+223) 20 29 01 54<br>infos@technolab-ista.com</div>
</footer>
</body>
</html>