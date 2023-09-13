package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.EditUserServlet", urlPatterns = "/edit-profile")
public class EditUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
            return;
        }


        Long userId = Long.parseLong(req.getParameter("id"));
        User user = DaoFactory.getUsersDao().findbyId(userId);
        req.getRequestDispatcher("/WEB-INF/users/editUser.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long userId = Long.parseLong(req.getParameter("id"));
        DaoFactory.getUsersDao().editUser(
                req.getParameter("username"),
                req.getParameter("email"),
                userId
        );
        // pull the user from the database to get the updated user info
        User user = DaoFactory.getUsersDao().findbyId(userId);
        // remove old user from session
        req.getSession().removeAttribute("user");
        // add updated user to session
        req.getSession().setAttribute("user", user);
        resp.sendRedirect("/profile");
    }
}
