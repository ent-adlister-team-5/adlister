package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    List<Ad> findAllByUserId(Long id);
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);


    // delete ad
    void deleteById(long id);

    void editAd (String title, String description, String date, String time, String location, boolean cancelled, long id);

    List<Ad> findAdbyTitle(String title);

    Ad findbyId(Long id);
}
