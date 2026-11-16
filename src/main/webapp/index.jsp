<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TechnoLAB - ISTA | Institut Supérieur de Technologies Appliquées - Bamako</title>
<link rel="stylesheet" href="assets/css/style.css">
<style>
  body{font-family:'Segoe UI',Arial,sans-serif;color:#1a2a3a;background:#f7f8fa}
  .topbar{background:#0a2a4a;color:#fff;font-size:13px;padding:8px;text-align:center}
  .cartouche{background:#fff;box-shadow:0 2px 12px rgba(0,0,0,.06);padding:14px 28px;display:flex;justify-content:space-between;align-items:center;position:sticky;top:0;z-index:10}
  .logo-img{height:52px}.logo-techno{font-size:26px;font-weight:900;color:#0a2a4a}.logo-techno span{color:#0a6b2e}
  .logo-mali{display:block;font-size:12px;color:#888;font-weight:700;letter-spacing:.5px}
  .menu a{color:#0a2a4a;text-decoration:none;font-weight:700;font-size:14px;margin-left:14px;padding:8px 10px;border-radius:8px}
  .menu a:hover,.menu a.active{background:#eaf6ec;color:#0a6b2e}
  .hero{background:linear-gradient(135deg,#0a2a4a 0%,#0a6b2e 100%);color:#fff;padding:56px 28px;text-align:center}
  .hero h1{font-size:42px;line-height:1.15;max-width:800px;margin:12px auto}
  .hero h1 span{color:#f7b500}
  .hero p{font-size:18px;opacity:.92;max-width:650px;margin:0 auto 22px;line-height:1.6}
  .badge-rentree{background:#f7b500;color:#111;padding:7px 16px;border-radius:999px;font-weight:800;font-size:13px}
  .btn{display:inline-block;padding:13px 24px;border-radius:999px;font-weight:800;text-decoration:none;font-size:15px;margin:4px}
  .btn-orange{background:#f7b500;color:#111}.btn-blanc{background:#fff;color:#0a2a4a}.btn-rouge{background:#c8102e;color:#fff}
  .hero-stats{display:flex;flex-wrap:wrap;justify-content:center;gap:16px;margin-top:28px}
  .hero-stats > span{background:rgba(255,255,255,.12);border:1px solid rgba(255,255,255,.2);border-radius:16px;padding:14px 20px;min-width:130px;display:inline-block}
  .hero-stats b{display:block;font-size:24px;color:#f7b500}
  .counter{background:none!important;border:none!important;padding:0!important;min-width:0!important;display:inline!important}
  .stat-anim{animation:monte 0.8s ease both}
  .stat-anim:nth-child(1){animation-delay:.1s}
  .stat-anim:nth-child(2){animation-delay:.3s}
  .stat-anim:nth-child(3){animation-delay:.5s}
  .stat-anim:nth-child(4){animation-delay:.7s}
  @keyframes monte{from{opacity:0;transform:translateY(20px) scale(.95)}to{opacity:1;transform:translateY(0) scale(1)}}
  .hero-stats > span:hover{transform:translateY(-5px) scale(1.03);transition:.3s;background:rgba(255,255,255,.25)}
  .blocs,.cycles,.partenaires,.valeur,.faq-form{max-width:1100px;margin:0 auto;padding:36px 20px}
  .bloc,.cycle{background:#fff;border-radius:16px;padding:22px;box-shadow:0 6px 20px rgba(0,0,0,.06)}
  .logos-grid{display:flex;flex-wrap:wrap;gap:14px;justify-content:center}
  .logo-p{background:#fff;border-radius:12px;padding:12px;width:130px;text-align:center;box-shadow:0 4px 14px rgba(0,0,0,.06)}
  .logo-p img{width:90px;height:55px;object-fit:contain}
  .logo-p span{display:block;font-weight:800;font-size:13px;margin-top:6px}
  .faq-form{display:flex;flex-wrap:wrap;gap:22px}
  .faq,.form-box{flex:1;min-width:300px;background:#fff;border-radius:16px;padding:24px;box-shadow:0 6px 20px rgba(0,0,0,.06)}
  .form-box input,.form-box select,.form-box textarea{width:100%;padding:12px;margin-bottom:12px;border:1px solid #ddd;border-radius:10px;font-size:15px}
  .btn-full{width:100%;border:none;cursor:pointer}
  footer{background:#0a2a4a;color:#fff;padding:30px 22px;display:flex;flex-wrap:wrap;gap:28px;justify-content:space-between;font-size:14px;line-height:1.7}
  footer b{color:#f7b500}
  @media(max-width:700px){.hero h1{font-size:30px}.cartouche{flex-direction:column;gap:12px}}
  /* --- PAGE NOIRE BIENVENUE - 2 SECONDES --- */
  #splash{position:fixed;inset:0;background:#000;z-index:9999;display:flex;flex-direction:column;align-items:center;justify-content:center;text-align:center;transition:opacity .6s}
  #splash img{width:150px;background:#fff;border-radius:20px;padding:12px;animation:zoomBienvenue 1.2s ease}
  #splash h1{color:#fff;font-size:34px;margin:18px 0 8px}
  #splash h1 span{color:#f7b500}
  #splash p{color:#bbb}
  @keyframes zoomBienvenue{from{opacity:0;transform:scale(.7)}to{opacity:1;transform:scale(1)}}
  #splash.cache{opacity:0;pointer-events:none}
  /* --- LOGOS - 10 SECONDES --- */
  .logo-p{opacity:0;transform:translateY(20px) scale(.9)}
  .logos-grid.visible .logo-p{animation:logoApparait 1s ease forwards}
  .logos-grid.visible .logo-p:nth-child(1){animation-delay:.5s}
  .logos-grid.visible .logo-p:nth-child(2){animation-delay:1.8s}
  .logos-grid.visible .logo-p:nth-child(3){animation-delay:3.1s}
  .logos-grid.visible .logo-p:nth-child(4){animation-delay:4.4s}
  .logos-grid.visible .logo-p:nth-child(5){animation-delay:5.7s}
  .logos-grid.visible .logo-p:nth-child(6){animation-delay:7s}
  .logos-grid.visible .logo-p:nth-child(7){animation-delay:8.3s}
  @keyframes logoApparait{to{opacity:1;transform:translateY(0) scale(1)}}
  /* --- CYCLES - 8 SECONDES --- */
  .cycles-grid.visible .cycle{animation:bougeCycle 8s ease-in-out}
  @keyframes bougeCycle{
    0%,100%{transform:translateX(0)}
    15%{transform:translateX(20px) rotate(1deg)}
    30%{transform:translateX(-20px) rotate(-1deg)}
    45%{transform:translateY(-10px)}
    60%{transform:translateX(15px)}
    75%{transform:translateX(-10px)}
    90%{transform:translateX(0)}
  }
</style>
</head>
<body>

<!-- PAGE NOIRE BIENVENUE - 2 secondes -->
<div id="splash">
  <img src="assets/img/logo-technolab-ista.png" alt="Logo">
  <h1>Bienvenue sur le Site <span>TechnoLAB</span></h1>
  <p>Institut Supérieur de Technologies Appliquées • Bamako</p>
</div>

<div class="topbar"><span>TechnoLAB - ISTA • <b>Excellence au Mali</b> • Rentrée Académique 2027 • Admissions ouvertes DUT - Licence - Master • (+223) 20 29 01 54 • Hamdallaye ACI 2000, Bamako •&nbsp;</span></div>

<header class="cartouche">
  <div class="logo-zone">
    <img src="assets/img/logo-technolab-ista.png" alt="Logo TechnoLAB-ISTA" class="logo-img">
    <div class="logo-texte">
      <span class="logo-techno">Techno<span>LAB</span> - ISTA</span>
      <span class="logo-mali">Bamako - Mali • Depuis 1998 • CAMES &amp; FEDE</span>
    </div>
  </div>
  <nav class="menu">
    <a href="index.jsp" class="active">Accueil</a>
    <a href="institut.jsp">À propos</a>
    <a href="formations.jsp">Nos cycles et filières</a>
    <a href="antennes.jsp">Antennes</a>
    <a href="admissions.jsp">Admission</a>
    <a href="paiement.jsp">Paiement</a>
    <a href="partenaires.jsp">Partenaires</a>
    <a href="quiz.jsp">🎮 Jeu Quiz</a>
    <a href="contact.jsp">Contact</a>
  </nav>
</header>

<section class="hero">
  <div class="hero-contenu">
    <span class="badge-rentree">Rentrée Académique 2027 • Inscriptions Ouvertes</span>
    <h1>Votre carrière professionnelle<br>commence à <span>TechnoLAB</span></h1>
    <p>Rejoignez la meilleure université au Mali. Des formations de bons experts, de qualité, en Licence (Bac+3) et Master (Bac+5).</p>
    <div class="hero-boutons">
      <a href="admissions.jsp" class="btn btn-orange">Démarrer mon inscription →</a>
      <a href="quiz.jsp" class="btn btn-blanc">🎮 Jouer au Quiz TechnoLAB</a>
      <a href="#cycles" class="btn btn-rouge">Découvrir nos filières</a>
    </div>
    <div class="hero-stats">
      <span class="stat-anim"><b><span class="counter" data-target="28">0</span> ans</b><br>d'expérience</span>
      <span class="stat-anim"><b>+<span class="counter" data-target="16000">0</span></b><br>diplômés</span>
      <span class="stat-anim"><b>N°<span class="counter" data-target="1">0</span></b><br>CAMES au Mali</span>
      <span class="stat-anim"><b><span class="counter" data-target="2027">0</span></b><br>Rentrée ouverte</span>
    </div>
  </div>
</section>

<section class="blocs" style="display:flex;flex-wrap:wrap;gap:18px;justify-content:center">
  <div class="bloc" style="width:320px"><h3>Programme Innovant</h3><p>Formations TIC, Management et Ingénierie adaptées au marché du travail, avec pratique, projets et stages.</p></div>
  <div class="bloc" style="width:320px"><h3>Diplômes Reconnus</h3><p>Diplômes reconnus par le CAMES et la FEDE. Double diplôme avec le Groupe ESG Paris et l'Université Catholique de Milan.</p></div>
  <div class="bloc" style="width:320px"><h3>Admissions ouvertes</h3><p>DUT (Bac+2), Licence (Bac+3) et Master (Bac+5). Rentrée 2027, places limitées.<br><br><a href="admissions.jsp" class="btn btn-orange" style="padding:10px 18px">S'inscrire</a></p></div>
</section>

<section class="cycles" id="cycles">
  <h2>Nos cycles et formations</h2>
  <div class="cycles-grid" style="display:flex;flex-wrap:wrap;gap:18px;justify-content:center">
    <div class="cycle" style="width:300px"><h3>DUT — Bac+2</h3><p>Sciences Économiques et de Gestion<br>Sciences &amp; Technologies<br>Sciences Techniques</p><a href="formations.jsp">Voir plus →</a></div>
    <div class="cycle" style="width:300px"><h3>Licence — Bac+3</h3><p>Sciences Économiques et de Gestion<br>Sciences &amp; Technologies<br>Sciences de l'Ingénieur</p><a href="formations.jsp">Voir plus →</a></div>
    <div class="cycle" style="width:300px"><h3>Master — Bac+5</h3><p>Sciences Économiques et de Gestion<br>Sciences &amp; Technologies<br>Sciences de l'Ingénieur</p><a href="formations.jsp">Voir plus →</a></div>
  </div>
</section>

<section class="partenaires">
  <h2>Certifications et Accréditations</h2>
  <p class="sous-titre" style="text-align:center;color:#666;margin:8px 0 18px">Ils nous font confiance pour la qualité de nos diplômes</p>
  <div class="logos-grid">
    <div class="logo-p"><img src="assets/img/logo-fede.png" alt="FEDE"><span>FEDE</span></div>
    <div class="logo-p"><img src="assets/img/logo-cames.png" alt="CAMES"><span>CAMES</span></div>
    <div class="logo-p"><img src="assets/img/logo-uemoa.png" alt="UEMOA"><span>UEMOA - CE2i</span></div>
    <div class="logo-p"><img src="assets/img/logo-cisco.png" alt=" CISCO"><span> CISCO</span></div>
    <div class="logo-p"><img src="assets/img/logo-huawei.png" alt=" HUAWEI"><span> HUAWEI</span></div>
    <div class="logo-p"><img src="assets/img/logo-microsoft.png" alt=" Microsoft"><span> Microsoft</span></div>
    <div class="logo-p"><img src="assets/img/logo-consortium.png" alt="CONSORTIUM"><span>CONSORTIUM</span></div>
  </div>
  <p class="certif" style="text-align:center;margin-top:14px;color:#555">Certifications CISCO ITE &amp; CCNA + Académie HUAWEI ICT intégrées à la formation.</p>
</section>

<section class="valeur">
  <h2>Valeur du Diplôme</h2>
  <h3>Pourquoi nos diplômes font la Distinction ?</h3>
  <p>Depuis 1998, TechnoLAB-ISTA forme des experts reconnus au Mali et à l'international. Nos diplômes sont reconnus par le CAMES et la FEDE, enrichis de certifications internationales et d'un double diplôme européen. C'est un parchemin sûr pour une compétitivité internationale.</p>
  <div class="valeur-grid" style="display:flex;flex-wrap:wrap;gap:10px;margin-top:14px">
    <div style="background:#eaf6ec;padding:10px 16px;border-radius:999px;font-weight:800">Reconnu CAMES</div><div style="background:#eaf6ec;padding:10px 16px;border-radius:999px;font-weight:800">Reconnu FEDE</div><div style="background:#eaf6ec;padding:10px 16px;border-radius:999px;font-weight:800">Certifications incluses</div><div style="background:#eaf6ec;padding:10px 16px;border-radius:999px;font-weight:800">Double diplôme</div><div style="background:#eaf6ec;padding:10px 16px;border-radius:999px;font-weight:800">Insertion pro</div>
  </div>
</section>

<section class="faq-form" id="inscription">
  <div class="faq">
    <h2>Questions fréquentes</h2>
    <details><summary>Pourquoi choisir TechnoLAB ?</summary><p>28 ans d'expérience, +16 000 diplômés, diplômes reconnus CAMES / FEDE, certifications 【entity-CISCO¦canonical_name=CISCO】 et 【entity-HUAWEI¦canonical_name=HUAWEI】 incluses.</p></details>
    <details><summary>Quelles pièces fournir ?</summary><p>Extrait de naissance, 2 photos, copie légalisée des diplômes, demande manuscrite timbrée au Directeur Général, fiche d'inscription.</p></details>
    <details><summary>Y a-t-il des bourses ?</summary><p>Oui, renseignez-vous auprès de l'administration au (+223) 20 29 01 54.</p></details>
    <details><summary>Combien coûte l'inscription ?</summary><p>Frais d'inscription : 100 000 F (non remboursables). Paiement : 50% à l'inscription, 25% en Janvier, 25% en Avril.</p></details>
    <br>
    <a href="quiz.jsp" class="btn btn-orange">🎮 Tester mes connaissances - Jouer au Quiz</a>
  </div>
  <div class="form-box">
    <h2>Demande d'inscription</h2>
    <form action="inscription" method="post">
      <input type="text" name="nom" placeholder="Nom complet *" required>
      <input type="tel" name="telephone" placeholder="Téléphone">
      <input type="email" name="email" placeholder="Adresse Email *" required>
      <select name="cycle" required>
        <option value="">Cycle souhaité *</option>
        <option>DUT (Bac+2)</option><option>Licence (Bac+3)</option><option>Master (Bac+5)</option>
      </select>
      <textarea name="message" placeholder="Votre message *" required></textarea>
      <button type="submit" class="btn btn-orange btn-full">Envoyer la demande</button>
    </form>
  </div>
</section>

<footer>
  <div><b>TechnoLAB - ISTA</b><br>Des parchemins sûrs pour une compétitivité internationale !<br>Fondé en 1998 — Bamako, Mali</div>
  <div><b>Contact</b><br>Hamdallaye ACI 2000, Bamako<br>(+223) 20 29 01 54<br>infos@technolab-ista.com<br>www.technolab-ista.net</div>
  <div><b>Antennes</b><br>Kayes • Koulikoro • Sikasso • Ségou<br>Mopti • Koutiala • Bougouni</div>
</footer>

<script>
  // Page noire Bienvenue - 2 secondes
  setTimeout(() => {
    document.getElementById('splash').classList.add('cache');
    setTimeout(() => {
      document.getElementById('splash').style.display = "none";
    }, 600);
  }, 2000);

  // Chiffres 28 ans - 6 secondes
  setTimeout(() => {
  const counters = document.querySelectorAll('.counter');
  counters.forEach(counter => {
    const target = +counter.getAttribute('data-target');
    let start = 0;
    const duree = 6000;
    const pas = target / (duree / 16);
    function update() {
      start += pas;
      if (start < target) {
        if (target === 16000) {
          counter.innerText = Math.floor(start).toLocaleString('fr-FR').replace(',', ' ');
        } else {
          counter.innerText = Math.floor(start);
        }
        requestAnimationFrame(update);
      } else {
        if (target === 16000) {
          counter.innerText = "16 000";
        } else {
          counter.innerText = target;
        }
      }
    }
    update();
  });
  }, 2100);

  // Lancer les animations seulement quand on voit la section
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(e => {
      if (e.isIntersecting) {
        e.target.classList.add('visible');
      }
    });
  }, { threshold: 0.3 });
  document.querySelectorAll('.logos-grid, .cycles-grid').forEach(el => observer.observe(el));
</script>
</body>
</html>