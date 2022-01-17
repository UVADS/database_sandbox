-- script to create tables
-- last updated: Jan 16, 2022
-- NOTES
-- price represents adjusted close
-- DATE format YYYY-MM-DD

CREATE TABLE STOCK (
    ticker varchar(5) NOT NULL,
    company_name varchar(25) NOT NULL,
    last_updated timestamp,
    PRIMARY KEY (ticker)
);

CREATE TABLE CLOSING_PRICE (
    ticker varchar(5) NOT NULL,
    close_date date NOT NULL,
    price  float NOT NULL,
    last_updated timestamp,
	FOREIGN KEY (ticker) REFERENCES STOCK(ticker),
    PRIMARY KEY (ticker, close_date)
);
