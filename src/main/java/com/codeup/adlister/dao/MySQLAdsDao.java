package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.utils.Config;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description, date, time, location, cancelled) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setString(4, ad.getDate());
            stmt.setString(5, ad.getTime());
            stmt.setString(6, ad.getLocation());
            stmt.setBoolean(7, ad.isCancelled());

            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public List<Ad> findAdbyTitle(String title) {
        String query = "SELECT * FROM ads WHERE title LIKE CONCAT('%',?,'%')";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, title);

            ResultSet rs = stmt.executeQuery();

            return createAdsFromResults(rs);

        } catch (SQLException e) {
            throw new RuntimeException("Error finding an add by this title", e);
        }
    }

    @Override
    public Ad findbyId(Long id) {
        String query = "SELECT * FROM ads WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);

            ResultSet rs = stmt.executeQuery();
            if(rs.next()) {
                Ad ad = new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("date"),
                        rs.getString("time"),
                        rs.getString("location"),
                        rs.getBoolean("cancelled")
                );
                return ad;
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error finding an add by this id", e);
        }
        return null;
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description"),
                rs.getString("date"),
                rs.getString("time"),
                rs.getString("location"),
                rs.getBoolean("cancelled")
        );
    }

    @Override
    public void deleteById(long id) {
        try {
            String deleteQuery = "DELETE FROM ads WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(deleteQuery);
            statement.setLong(1, id);
            statement.executeUpdate();
        } catch (Exception e) {
            throw new RuntimeException("Error deleting ad.", e);
        }
    }

    @Override
    public void editAd (long id, String userId, String title, String description, String date, String time, String location){
        try {
            String updateQuery = "UPDATE ads SET title = ?, description = ? WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(updateQuery);
            statement.setString(1, title);
            statement.setString(2, description);
            statement.setLong(3, id);
            statement.executeUpdate();
        } catch (Exception e) {
            throw new RuntimeException("Error updating ad.", e);
        }
    }


    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

//    private Ad findById(long id) {
//        try {
//            String query = "SELECT * FROM ads WHERE id = ?";
//            PreparedStatement stmt = connection.prepareStatement(query);
//            stmt.setLong(1, id);
//            ResultSet rs = stmt.executeQuery();
//
//            if (rs.next()) {
////                return  rs.next();
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException("Error finding ad by ID", e);
//        }
//        return null;
//    }
}