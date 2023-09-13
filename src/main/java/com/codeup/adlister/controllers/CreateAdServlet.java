package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            // add a return statement to exit out of the entire method.
            return;
        }

        request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User loggedInUser = (User) request.getSession().getAttribute("user");
        String fileStackUrl = request.getParameter("url");
        String defaultImage = "/img/pln.jpeg";
        // get the url

        // if url is empty string or null (im not sure) set the url to a placeholder url (or src path)
        String imageToInsert = null;

        if(fileStackUrl.isEmpty()) {
            imageToInsert = defaultImage;
        } else {
            imageToInsert = fileStackUrl;
        }

        Ad ad = new Ad(
                loggedInUser.getId(),
                request.getParameter("title"),
                request.getParameter("description"),
                request.getParameter("date"),
                request.getParameter("time"),
                request.getParameter("location"),
                false,
                // include the new url
                imageToInsert
        );
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }

}