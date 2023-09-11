package com.codeup.adlister.tools;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConverter {
    public static void main(String[] args) throws Exception {
        String dateString = "2024-04-22";

        // Create a SimpleDateFormat object for Full month day year format
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMMM dd, yyyy");

        // Create a Date object from the date string
        Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateString);

        // Convert the Date object to a Full month day year string
        String formattedDate = dateFormat.format(date);

        System.out.println(formattedDate);
    }

    public static String convertDate(String dateString) throws Exception {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMMM dd, yyyy");
        Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dateString);
        String formattedDate = dateFormat.format(date);
        return formattedDate;
    }

}
