<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Jeu - Connais-tu TechnoLAB ? | TechnoLAB - ISTA</title>
<link rel="stylesheet" href="assets/css/style.css">
<style>
  .quiz-box{max-width:650px;margin:0 auto;background:#fff;border-radius:20px;padding:28px;box-shadow:0 12px 32px rgba(0,0,0,.12);text-align:left}
  .quiz-box h3{color:#0a2a4a;font-size:22px;margin-bottom:6px}
  .quiz-box .progress{height:10px;background:#eee;border-radius:999px;overflow:hidden;margin:10px 0 18px}
  .quiz-box .bar{height:100%;background:linear-gradient(90deg,#0a6b2e,#f7b500);width:0%;transition:.4s}
  .opt{display:block;width:100%;text-align:left;padding:13px 16px;margin-bottom:10px;border:2px solid #eee;border-radius:12px;background:#fbfbfb;font-size:16px;cursor:pointer;font-weight:600}
  .opt:hover{border-color:#0a6b2e;background:#eaf6ec}
  .opt.correct{background:#d4edda;border-color:#0a6b2e;color:#0a6b2e}
  .opt.wrong{background:#f8d7da;border-color:#c8102e;color:#c8102e}
  #score-box{text-align:center}
  .badge-score{display:inline-block;background:#f7b500;color:#111;padding:10px 22px;border-radius:999px;font-weight:900;font-size:22px}
  .btn{display:inline-block;padding:13px 24px;border-radius:999px;font-weight:800;text-decoration:none;font-size:15px;margin:4px}
  .btn-orange{background:#f7b500;color:#111}
  .btn-blanc{background:#fff;color:#0a2a4a}
</style>
</head>
<body>
<div class="topbar"><span>TechnoLAB - ISTA • Jeu Pro • Connais-tu vraiment TechnoLAB ? •&nbsp;</span></div>

<header class="cartouche">
  <div class="logo-zone">
    <img src="assets/img/logo-technolab-ista.png" alt="Logo" class="logo-img">
    <div class="logo-texte"><span class="logo-techno">Techno<span>LAB</span> - ISTA</span><span class="logo-mali">Bamako - Mali • Depuis 1998 • CAMES &amp; FEDE</span></div>
  </div>
  <nav class="menu">
    <a href="index.jsp">Accueil</a>
    <a href="formations.jsp">Nos cycles et filières</a>
    <a href="antennes.jsp">Antennes</a>
    <a href="admissions.jsp">Admission</a>
    <a href="paiement.jsp">Paiement</a>
    <a href="quiz.jsp" class="active">🎮 Jeu Quiz</a>
    <a href="contact.jsp">Contact</a>
  </nav>
</header>

<section class="hero">
  <div class="hero-contenu">
    <span class="badge-rentree">Jeu Professionnel</span>
    <h1>Connais-tu vraiment <span>TechnoLAB ?</span></h1>
    <p>5 questions. 1 minute. Prouve que tu connais ton université !</p>
  </div>
</section>

<section class="valeur">
  <div class="quiz-box" id="quiz-box">
    <div class="progress"><div class="bar" id="bar"></div></div>
    <p id="q-count" style="color:#888;font-weight:800">Question 1 / 5</p>
    <h3 id="question">...</h3>
    <div id="options"></div>
    <p id="feedback" style="font-weight:800;min-height:24px"></p>
    <button id="next-btn" onclick="nextQuestion()" class="btn btn-orange" style="display:none;border:none;cursor:pointer">Question suivante →</button>
  </div>

  <div class="quiz-box" id="score-box" style="display:none">
    <h2 id="final-title">🎉 Résultat !</h2>
    <p>Tu as eu :</p>
    <span class="badge-score" id="final-score">0 / 5</span>
    <p id="final-msg" style="margin-top:14px;font-weight:700;line-height:1.6"></p>

    <div id="win-box" style="display:none;margin-top:16px">
      <a href="admissions.jsp" class="btn btn-orange">🎓 Inscris-toi à TechnoLAB pour découvrir...</a>
      <p style="color:#666;font-size:14px;margin-top:10px">Tu connais déjà TechnoLAB par cœur. Il ne te reste qu'à nous rejoindre !</p>
    </div>

    <div id="lose-box" style="display:none;margin-top:16px">
      <button onclick="restartQuiz()" class="btn btn-orange" style="border:none;cursor:pointer">🔄 Recommence pour obtenir plus de points</button>
      <br><br>
      <a href="admissions.jsp" class="btn btn-blanc" style="border:1px solid #ddd">📋 Découvrir comment se fait l'admission à TechnoLAB</a>
    </div>
  </div>
</section>

<footer>
  <div><b>TechnoLAB - ISTA</b><br>Hamdallaye ACI 2000, Bamako</div>
  <div><b>Contact</b><br>(+223) 20 29 01 54<br>infos@technolab-ista.com</div>
</footer>

<script>
const questions = [
  { q: "En quelle année TechnoLAB-ISTA a-t-il été fondé ?", options: ["1998", "2005", "2010", "1985"], answer: 0, explain: "TechnoLAB-ISTA a été fondé en 1998. 28 ans d'expérience !" },
  { q: "Combien de diplômés TechnoLAB-ISTA a-t-il formés ?", options: ["+5 000", "+10 000", "+16 000", "+20 000"], answer: 2, explain: "Plus de 16 000 diplômés !" },
  { q: "Par qui nos diplômes sont-ils reconnus ?", options: ["Seulement par l'école", "CAMES & FEDE", "Seulement par le Mali", "Par personne"], answer: 1, explain: "Diplômes reconnus par le CAMES et la FEDE." },
  { q: "Où se trouve le siège principal de TechnoLAB-ISTA ?", options: ["Sotuba", "Hamdallaye ACI 2000", "Sikasso", "Kayes"], answer: 1, explain: "Siège : Hamdallaye ACI 2000, Bamako." },
  { q: "Combien coûtent les frais d'inscription ?", options: ["50 000 F", "100 000 F", "200 000 F", "Gratuit"], answer: 1, explain: "Frais d'inscription : 100 000 F, non remboursables." }
];
let current = 0, score = 0, answered = false;

function showQuestion() {
  answered = false;
  document.getElementById('feedback').innerText = "";
  document.getElementById('next-btn').style.display = "none";
  const qq = questions[current];
  document.getElementById('q-count').innerText = "Question " + (current + 1) + " / " + questions.length;
  document.getElementById('question').innerText = qq.q;
  document.getElementById('bar').style.width = (current / questions.length * 100) + "%";
  const box = document.getElementById('options');
  box.innerHTML = "";
  qq.options.forEach((opt, i) => {
    const btn = document.createElement('button');
    btn.className = 'opt';
    btn.innerText = opt;
    btn.onclick = () => checkAnswer(i, btn);
    box.appendChild(btn);
  });
}
function checkAnswer(i, btn) {
  if (answered) return;
  answered = true;
  const qq = questions[current];
  const all = document.querySelectorAll('.opt');
  if (i === qq.answer) {
    score++;
    btn.classList.add('correct');
    document.getElementById('feedback').innerText = "✅ Bonne réponse ! " + qq.explain;
    document.getElementById('feedback').style.color = "#0a6b2e";
  } else {
    btn.classList.add('wrong');
    all[qq.answer].classList.add('correct');
    document.getElementById('feedback').innerText = "❌ Mauvaise réponse. " + qq.explain;
    document.getElementById('feedback').style.color = "#c8102e";
  }
  document.getElementById('next-btn').style.display = "inline-block";
  if (current === questions.length - 1) {
    document.getElementById('next-btn').innerText = "Voir mon résultat →";
  }
}
function nextQuestion() {
  if (current < questions.length - 1) {
    current++;
    showQuestion();
  } else {
    document.getElementById('quiz-box').style.display = "none";
    document.getElementById('score-box').style.display = "block";
    document.getElementById('final-score').innerText = score + " / " + questions.length;
    let msg = "";
    if (score === 5) {
      document.getElementById('final-title').innerText = "🏆 PERFECT ! BRAVO !";
      msg = "Tu as gagné TOUT le quiz ! Tu connais TechnoLAB par cœur, tu es un vrai TechnoLABIEN !";
      document.getElementById('win-box').style.display = "block";
      document.getElementById('lose-box').style.display = "none";
    } else {
      document.getElementById('final-title').innerText = "💪 DU COURAGE !";
      msg = "Du courage, tu peux y arriver ! Recommence pour obtenir plus de points et découvrir comment se fait l'admission à TechnoLAB.";
      document.getElementById('win-box').style.display = "none";
      document.getElementById('lose-box').style.display = "block";
    }
    document.getElementById('final-msg').innerText = msg;
  }
}
function restartQuiz() {
  current = 0; score = 0;
  document.getElementById('score-box').style.display = "none";
  document.getElementById('quiz-box').style.display = "block";
  document.getElementById('next-btn').innerText = "Question suivante →";
  showQuestion();
}
showQuestion();
</script>
</body>
</html>