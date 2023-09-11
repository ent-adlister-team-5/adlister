package com.codeup.adlister.tools;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Authentication {
    public void handle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException, InterruptedException {
        // Check if the user is logged in
        if (!isLoggedIn(request)) {
            // Get the URL of the page that the user was trying to access
            String redirectUrl = request.getRequestURI();

            // Redirect the user to the login page
            response.sendRedirect(redirectUrl);
        }

        // Proceed to handle the request
        handler.wait();
    }

    private boolean isLoggedIn(HttpServletRequest request) {
        return false;
    }

}
