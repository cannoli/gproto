DROP TABLE IF EXISTS rw_promo_code;
DROP TABLE IF EXISTS rw_app;
DROP TABLE IF EXISTS rw_promo_code_redeemed;

CREATE TABLE rw_promo_code (
	id mediumint NOT NULL AUTO_INCREMENT PRIMARY KEY,
	rw_app_id tinyint NOT NULL,
	code varchar(255) NOT NULL,
	unlock_code varchar(255) NOT NULL,
	uses_remaining smallint NOT NULL
);

CREATE TABLE rw_app (
	id mediumint NOT NULL AUTO_INCREMENT PRIMARY KEY,
	app_id varchar(255) NOT NULL
);

CREATE TABLE rw_promo_code_redeemed (
	id mediumint NOT NULL AUTO_INCREMENT PRIMARY KEY,
	rw_promo_code_id mediumint NOT NULL,
	device_id varchar(255) NOT NULL,
	redeemed_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
 
