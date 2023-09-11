package com.codeup.adlister.tools;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeConverter {
    public static void main(String[] args) throws Exception {
        String militaryTime = "23:00";

//        // Create a SimpleDateFormat object for 12-hour time format
//        SimpleDateFormat dateFormat12 = new SimpleDateFormat("hh:mm a");
//
//        // Create a Date object from the military time string
//        Date date = new SimpleDateFormat("HH:mm").parse(militaryTime);
//
//        // Convert the Date object to a 12-hour time string
//        String twelveHourTime = dateFormat12.format(date);
//
//        System.out.println("Military time: " + militaryTime);
//        System.out.println("12 hour time: " + twelveHourTime);
        String output = TimeConverter.militaryToStandard(militaryTime);
        System.out.println(output);
    }

    public static String militaryToStandard(String time) throws ParseException {
        SimpleDateFormat dateFormat12 = new SimpleDateFormat("hh:mm a");
        Date date = new SimpleDateFormat("HH:mm").parse(time);
        String twelveHourTime = dateFormat12.format(date);
        return twelveHourTime;
    }
}
