DROP DATABASE IF EXISTS isuumo;
CREATE DATABASE isuumo;

DROP TABLE IF EXISTS isuumo.estate;
DROP TABLE IF EXISTS isuumo.chair;
DROP TABLE IF EXISTS isuumo.chair_features;

CREATE TABLE isuumo.estate
(
    id          INTEGER             NOT NULL PRIMARY KEY,
    name        VARCHAR(64)         NOT NULL,
    description VARCHAR(4096)       NOT NULL,
    thumbnail   VARCHAR(128)        NOT NULL,
    address     VARCHAR(128)        NOT NULL,
    latitude    DOUBLE PRECISION    NOT NULL,
    longitude   DOUBLE PRECISION    NOT NULL,
    rent        INTEGER             NOT NULL,
    door_height INTEGER             NOT NULL,
    door_width  INTEGER             NOT NULL,
    features    VARCHAR(64)         NOT NULL,
    popularity  INTEGER             NOT NULL
);
ALTER TABLE isuumo.estate ADD INDEX index_door_h_w(door_height, door_width);
ALTER TABLE isuumo.estate ADD INDEX index_door_w_h(door_width, door_height);
ALTER TABLE isuumo.estate ADD INDEX index_rent(rent);
ALTER TABLE isuumo.estate ADD INDEX index_latlong(latitude, longitude);
ALTER TABLE isuumo.estate ADD INDEX index_estate_popularity(popularity);


CREATE TABLE isuumo.chair
(
    id          INTEGER         NOT NULL PRIMARY KEY,
    name        VARCHAR(64)     NOT NULL,
    description VARCHAR(4096)   NOT NULL,
    thumbnail   VARCHAR(128)    NOT NULL,
    price       INTEGER         NOT NULL,
    height      INTEGER         NOT NULL,
    width       INTEGER         NOT NULL,
    depth       INTEGER         NOT NULL,
    color       VARCHAR(64)     NOT NULL,
    features    VARCHAR(64)     NOT NULL,
    kind        VARCHAR(64)     NOT NULL,
    popularity  INTEGER         NOT NULL,
    stock       INTEGER         NOT NULL
);
ALTER TABLE isuumo.chair ADD INDEX index_stock(stock);
ALTER TABLE isuumo.chair ADD INDEX index_price(price);
ALTER TABLE isuumo.chair ADD INDEX index_kind(kind);
ALTER TABLE isuumo.chair ADD INDEX index_width(width);
ALTER TABLE isuumo.chair ADD INDEX index_height(height);
ALTER TABLE isuumo.chair ADD INDEX index_depth(depth);
ALTER TABLE isuumo.chair ADD INDEX index_color(color);
ALTER TABLE isuumo.chair ADD INDEX index_chair_popularity(popularity);

-- CREATE TABLE isuumo.chair_features
-- (
--     id          INTEGER         NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     chair_id    INTEGER         NOT NULL,
--     feature     VARCHAR(64)     NOT NULL
-- );
-- ALTER TABLE isuumo.chair_features ADD INDEX index_feature(feature);

