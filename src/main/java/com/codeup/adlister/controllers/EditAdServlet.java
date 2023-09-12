package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/edit-ad")
public class EditAdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
            return;
        }

        Long adId = Long.parseLong(req.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().findbyId(adId);
        req.setAttribute("ad", ad);
        req.getRequestDispatcher("/WEB-INF/ads/editAds.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /** waiting on MySQLAdsDao method, will receive response and set things */
        Long adId = Long.parseLong(req.getParameter("id"));
        boolean cancelled = req.getParameter("cancel") != null; // Check if the cancel parameter is empty, full expression evaluated
        System.out.println("Cancel parameter value: " + req.getParameter("cancel"));

        DaoFactory.getAdsDao().editAd(
                req.getParameter("title"),
                req.getParameter("description"),
                req.getParameter("date"),
                req.getParameter("time"),
                req.getParameter("location"),
                cancelled,
                adId
        );
        resp.sendRedirect("/profile");
    }
}
