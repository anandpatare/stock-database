. Stock table
CREATE TABLE create table stock_prices(price_id serial primary key,stock_id int not null,trade_date date not null,open_price decimal(10,2),high_pric-- 1. Stock table                                                                                                         CREATE TABLE stocks (                                                                                                                      stock_id SERIAL PRIMARY KEY,
    ticker_symbol VARCHAR(10) UNIQUE NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    sector VARCHAR(50),
    exchange VARCHAR(50)
);

-- 2. Stock prices table (linked to stocks)
CREATE TABLE stock_prices (
    price_id SERIAL PRIMARY KEY,
    stock_id INT NOT NULL,
    trade_date DATE NOT NULL,
    open_price DECIMAL(10,2),
    high_price DECIMAL(10,2),
    low_price DECIMAL(10,2),
    close_price DECIMAL(10,2),
    volume BIGINT,
    dividend DECIMAL(10,4) DEFAULT 0.00,

    CONSTRAINT fk_stock
        FOREIGN KEY (stock_id)
        REFERENCES stocks(stock_id)
        ON DELETE CASCADE
);

-- 3. Predictions table (linked to stocks)
CREATE TABLE predictions (
    prediction_id SERIAL PRIMARY KEY,
    stock_id INT NOT NULL,
);      ON DELETE CASCADE(stock_id)

