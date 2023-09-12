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

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String searchQuery = request.getParameter("search");
        if (searchQuery != null && !searchQuery.isEmpty()) {
            List<Ad> searchResults = DaoFactory.getAdsDao().findAdbyTitle(searchQuery);
            request.setAttribute("ads", searchResults);
        } else {
            request.setAttribute("ads", DaoFactory.getAdsDao().all());
        }
//        request.setAttribute("ads", DaoFactory.getAdsDao().all());

        request.getRequestDispatcher("/WEB-INF/ads/ads.jsp").forward(request, response);
    }
}
