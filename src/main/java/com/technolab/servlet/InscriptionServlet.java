package com.technolab.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@WebServlet("/inscription")
public class InscriptionServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String nom = req.getParameter("nom");
        String telephone = req.getParameter("telephone");
        String email = req.getParameter("email");
        String cycle = req.getParameter("cycle");
        String message = req.getParameter("message");

        String texte = "Nouvelle demande TechnoLAB-ISTA\n"
                + "Nom: " + nom + "\n"
                + "Tel: " + telephone + "\n"
                + "Email: " + email + "\n"
                + "Cycle: " + cycle + "\n"
                + "Message: " + message;

        String texteEncode = URLEncoder.encode(texte, StandardCharsets.UTF_8);
        String sujetEncode = URLEncoder.encode("Demande d'inscription TechnoLAB-ISTA - " + nom, StandardCharsets.UTF_8);

        String lienWhatsapp = "https://wa.me/22378074865?text=" + texteEncode;

        String lienEmail = "mailto:maimounadiakite2010y@gmail.com?subject=" + sujetEncode + "&body=" + texteEncode;

        req.setAttribute("nom", nom);
        req.setAttribute("telephone", telephone);
        req.setAttribute("email", email);
        req.setAttribute("cycle", cycle);
        req.setAttribute("message", message);
        req.setAttribute("lienWhatsapp", lienWhatsapp);
        req.setAttribute("lienEmail", lienEmail);

        req.getRequestDispatcher("/confirmation.jsp").forward(req, resp);
    }
}