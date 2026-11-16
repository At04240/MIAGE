<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Modalités de Paiement &amp; Tarifs | TechnoLAB - ISTA</title>
<link rel="stylesheet" href="assets/css/style.css">
<style>
  .tarif-box{max-width:950px;margin:0 auto}
  .tarif-table{width:100%;border-collapse:collapse;background:#fff;border-radius:14px;overflow:hidden;box-shadow:0 8px 24px rgba(0,0,0,.10);margin:16px 0}
  .tarif-table th,.tarif-table td{border:1px solid #ddd;padding:13px 10px;text-align:center;font-size:14px}
  .tarif-table th{background:#0a6b2e;color:#fff}
  .tarif-table th:first-child{background:#0a2a4a}
  .tarif-table td:first-child{text-align:left;font-weight:800;color:#0a2a4a}
  .tarif-table tr:nth-child(even) td{background:#f6f8f6}
  .paiement-card{background:#fff;border-radius:16px;padding:22px;box-shadow:0 8px 24px rgba(0,0,0,.08);margin-bottom:18px}
  .badge-pay{display:inline-block;background:#0a6b2e;color:#fff;padding:8px 16px;border-radius:999px;font-weight:800;margin:4px}
  .badge-pay2{display:inline-block;background:#c8102e;color:#fff;padding:8px 16px;border-radius:999px;font-weight:800;margin:4px}
  .banque{background:#eaf6ec;border:1px solid #cfe8d4;border-radius:12px;padding:14px;margin-top:10px;font-weight:800}
  @media(max-width:760px){.tarif-table th,.tarif-table td{font-size:12px;padding:9px 6px}}
</style>
</head>
<body>
<div class="topbar"><span>TechnoLAB - ISTA • Tarifs Annuels • Modalités de Paiement • Frais d'inscription 100 000 F •&nbsp;</span></div>

<header class="cartouche">
  <div class="logo-zone">
    <img src="assets/img/logo-technolab-ista.png" alt="Logo" class="logo-img">
    <div class="logo-texte"><span class="logo-techno">Techno<span>LAB</span> - ISTA</span><span class="logo-mali">Bamako - Mali • Depuis 1998 • CAMES &amp; FEDE</span></div>
  </div>
  <nav class="menu">
    <a href="index.jsp">Accueil</a>
    <a href="institut.jsp">À propos</a>
    <a href="formations.jsp">Nos cycles et filières</a>
    <a href="antennes.jsp">Antennes</a>
    <a href="admissions.jsp">Admission</a>
    <a href="paiement.jsp" class="active">Paiement</a>
    <a href="partenaires.jsp">Partenaires</a>
    <a href="contact.jsp">Contact</a>
  </nav>
</header>

<section class="hero">
  <div class="hero-contenu">
    <span class="badge-rentree">Tarifs Annuels 2027</span>
    <h1>Modalités de <span>Paiement &amp; Tarifs</span></h1>
    <p>Des tarifs clairs, un paiement simple en 3 fois.</p>
  </div>
</section>

<section class="valeur tarif-box">
  <h2>Tarifs Annuels</h2>
  <div class="paiement-card">
    <h3 style="color:#c8102e">Frais d'inscription : 100 000 F</h3>
    <p>Les frais d'inscription sont <b>non négociables, obligatoires et non remboursables</b>, payables au départ pour valider une inscription. Ce montant ne fait pas partie des frais académiques indiqués ci-dessous.</p>
    <p>Le paiement d'au moins <b>50% des frais</b> académiques donne droit à deux (02) costumes comme tenues.</p>
  </div>

  <h3>Frais Académiques (Montant Annuel)</h3>
  <div style="overflow-x:auto">
  <table class="tarif-table">
    <tr>
      <th>Nos Cycles et Filières de Formation</th>
      <th>Sciences Économiques &amp; de Gestion</th>
      <th>Sciences et Technologies</th>
      <th>Sciences Techniques &amp; Ingénieurs</th>
    </tr>
    <tr><td>LICENCE 1 / DUT 1</td><td>600 000 F</td><td>650 000 F</td><td>725 000 F</td></tr>
    <tr><td>LICENCE 2 / DUT 2</td><td>600 000 F</td><td>650 000 F</td><td>725 000 F</td></tr>
    <tr><td>LICENCE 3</td><td>750 000 F</td><td>900 000 F</td><td>950 000 F</td></tr>
    <tr><td>MASTER 1</td><td>900 000 F</td><td>1 100 000 F</td><td>1 100 000 F</td></tr>
    <tr><td>MASTER 2</td><td>900 000 F</td><td>1 100 000 F</td><td>1 100 000 F</td></tr>
    <tr><td>Pour les détenteurs de Maîtrise souhaitant faire un Master 2</td><td colspan="3" style="font-weight:900;font-size:17px">1 300 000 F</td></tr>
  </table>
  </div>

  <h2 style="margin-top:30px">Modalités de Paiement</h2>
  <div class="paiement-card" style="text-align:center">
    <span class="badge-pay">50% des frais de formation à l'inscription</span><br>
    <span class="badge-pay2">25% en Janvier (au plus tard le 15 du mois)</span><br>
    <span class="badge-pay2">25% en Avril (au plus tard le 15 du mois)</span>
  </div>

  <h2>Moyens de Paiement</h2>
  <div class="paiement-card">
    <p>— En <b>Espèces</b> au niveau d'un centre de l'école</p>
    <p>— <b>Versement, Virement ou chèque</b> libellé à l'ordre de TechnoLAB-ISTA sur l'un des comptes suivants :</p>
    <div class="banque">BNDA : ML043 01400 400001232061 81</div>
    <div class="banque">AFG BANK : ML089 01003 700001277000 35</div>
  </div>

  <p style="text-align:center;margin-top:18px"><a href="index.jsp#inscription" class="btn btn-orange">Démarrer mon inscription</a> <a href="contact.jsp" class="btn btn-blanc" style="border:1px solid #ddd">Contacter l'administration</a></p>
</section>

<footer>
  <div><b>TechnoLAB - ISTA</b><br>Hamdallaye ACI 2000, Bamako</div>
  <div><b>Contact</b><br>(+223) 20 29 01 54<br>infos@technolab-ista.com</div>
  <div><b>Antennes</b><br>Kayes • Koulikoro • Sikasso • Ségou<br>Mopti • Koutiala • Bougouni</div>
</footer>
</body>
</html>