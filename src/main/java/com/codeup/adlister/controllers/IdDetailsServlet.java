package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.IdDetailsServlet", urlPatterns = "/id-details")
public class IdDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long adId = Long.parseLong(req.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().findbyId(adId);
        System.out.println(ad.getTitle());
        req.setAttribute("ad", ad);
        req.getRequestDispatcher("/WEB-INF/testPackage/testSearchView.jsp").forward(req, resp);
    }

}