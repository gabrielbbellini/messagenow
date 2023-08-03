CREATE TABLE IF NOT EXISTS room
(
    id          INT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modified_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS user_room
(
    id_room INT NOT NULL,
    id_user INT NOT NULL,
    created_at  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modified_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_user) REFERENCES user (id),
    FOREIGN KEY (id_room) REFERENCES room (id)
);

CREATE TABLE IF NOT EXISTS message
(
    id          INT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_room     INT      NOT NULL,
    id_user     INT      NOT NULL,
    text        TEXT     NOT NULL,
    created_at  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modified_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_room) REFERENCES room (id),
    FOREIGN KEY (id_user) REFERENCES user (id)
);