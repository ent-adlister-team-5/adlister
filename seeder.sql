
USE event_adlister_db;

-- Insert three users
INSERT INTO users (username, email, password)
VALUES
    ('user1', 'user1@example.com', 'password1'),
    ('user2', 'user2@example.com', 'password2'),
    ('user3', 'user3@example.com', 'password3');

-- Insert five ads (associated with users)
INSERT INTO ads (user_id, title, description, date, time, location, cancelled)
VALUES
    (1, 'Event 1', 'Description for Event 1', '2023-09-10', '09:00:00', 'Location 1', 0),
    (1, 'Event 2', 'Description for Event 2', '2023-09-15', '14:30:00', 'Location 2', 1),
    (2, 'Event 3', 'Description for Event 3', '2023-09-20', '18:00:00', 'Location 3', 0),
    (3, 'Event 4', 'Description for Event 4', '2023-09-25', '11:45:00', 'Location 4', 0),
    (3, 'Event 5', 'Description for Event 5', '2023-09-30', '20:15:00', 'Location 5', 0);

SELECT * FROM users;
SELECT * FROM ads;