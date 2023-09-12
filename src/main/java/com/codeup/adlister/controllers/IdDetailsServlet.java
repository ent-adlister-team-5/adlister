package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.tools.DateConverter;
import com.codeup.adlister.tools.TimeConverter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;

@WebServlet(name = "controllers.IdDetailsServlet", urlPatterns = "/id-details")
public class IdDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
            return;
        }


        Long adId = Long.parseLong(req.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().findbyId(adId);
        System.out.println(ad.getTitle());
        String newTime;
        try {
            newTime = TimeConverter.militaryToStandard(ad.getTime());
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        ad.setTime(newTime);

        String formattedDate = null;
        try {
            formattedDate = DateConverter.convertDate(ad.getDate());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        ad.setDate(formattedDate);

        req.setAttribute("ad", ad);
        req.getRequestDispatcher("/WEB-INF/ads/idDetails.jsp").forward(req, resp);
    }

}
