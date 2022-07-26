CREATE DATABASE skilvul_music_streaming;
USE skilvul_music_streaming;


CREATE TABLE user(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE ,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE singer(
    singer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE album(
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    singer_id INT NOT NULL,
    CONSTRAINT FK_album_singer_id FOREIGN KEY(singer_id) REFERENCES singer(singer_id)
);

CREATE TABLE track(
    track_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    singer_id INT NOT NULL,
    album_id INT NOT NULL,
    CONSTRAINT FK_track_singer_id FOREIGN KEY(singer_id) REFERENCES singer(singer_id),
    CONSTRAINT FK_track_album_id FOREIGN KEY(album_id) REFERENCES album(album_id)
);

CREATE TABLE playlist(
    playlist_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    CONSTRAINT FK_playlist_user_id FOREIGN KEY(user_id) REFERENCES user(user_id)
);

CREATE TABLE playlist_track(
    playlist_id INT NOT NULL,
    track_id INT NOT NULL,
    CONSTRAINT FK_playlist_track_playlist FOREIGN KEY(playlist_id) REFERENCES playlist(playlist_id),
    CONSTRAINT FK_playlist_track_track FOREIGN KEY(track_id) REFERENCES track(track_id)
);

