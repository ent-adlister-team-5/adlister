package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.SearchDetailsServlet", urlPatterns = "/search")
public class SearchDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String searchAd = req.getParameter("search");
        List<Ad> ads = DaoFactory.getAdsDao().findAdbyTitle(searchAd);

        if(ads == null) {
            req.setAttribute("message", "No matching ads found");
            req.getRequestDispatcher("/WEB-INF/testPackage/testSearchView.jsp").forward(req, resp);
            return;
        }
//        if(ad.getTitle().equalsIgnoreCase(searchAd) || searchAd.toLowerCase().contains(ad.getTitle().toLowerCase())) {
//            req.setAttribute("ad", ad);
//        }
        req.setAttribute("ads", ads);
        req.getRequestDispatcher("/WEB-INF/testPackage/testSearchView.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }


}