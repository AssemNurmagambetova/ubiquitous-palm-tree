-- CRYPTOCURRENCY DATA ANALYSIS: BTC/USDT ON BINANCE 

CREATE database crypto;

create table btc_1d
(Open_time timestamp primary key,
Open float,
High float,
Low float,
Close float,
Volume float,
Close_time timestamp,
Quote_asset_volume float,
Number_of_trades int,
Taker_buy_base_asset_volume float,
Taker_buy_quote_asset_volume float,
_Ignore int
);

select * from btc_1d;

USE crypto;
load data local infile 'C:\\Users\\user\\Desktop\\my project\\SQL\\BTC\\btc_1d_data_cleaned.csv'
into table btc_1d
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 lines;

-- DATA EXPLORATION 

-- Q1: the total number of records
select count(*) as total_records
from btc_1d;

-- Q2: the time range of the data
select min(Open_time) as start_day, max(Open_time) as end_date 
from btc_1d; 

-- Q3: the average closing price for the entire period
select avg(close) as avg_close_price
from btc_1d;

-- MARKET ANALYSIS 

-- Q4: the day with the highest closing price and the day with the largest trading volume
select open_time, close as highest_close_price
from btc_1d
order by close desc
limit 1;

select open_time, volume as largest_trade_volume
from btc_1d
order by volume desc
limit 1; 

-- Q5: average trading volume by year
select year(Open_time) as year, avg(volume) as avg_trade_volume
from btc_1d
group by year
order by year;

-- Q6: top 5 day by number of trades
select date(open_time) as top_5_days, number_of_trades 
from btc_1d
order by number_of_trades desc
limit 5;

-- TIME BASED ANALYS AND ADVANCED QUERIES

-- Q7: daily percentage change in price (based on open and close prices)
select date(open_time) as date, ((close - open)/open)*100 as daily_change_percent
from btc_1d;

-- Q8: days when close price higher open price
select date(open_time) as day, close, open 
from btc_1d
where close>open;

-- Q9: 30-day rolling average of close price
select open_time, close,
avg(close) over(
order by open_time rows between 29 preceding and current row
) as rolling_avg_30_day
from btc_1d
order by open_time;

-- Q10: longest consecutive streaks of closing price increases
with price_changes as (
select open_time, close, 
case 
	when close> lag(close) over (order by open_time) then 1
    else 0
    end as is_increase 
from btc_1d
), 
consecutive_groups as (
select open_time, close, is_increase, sum(case when is_increase=0 then 1 else 0 end) over (order by open_time) as increase_group 
from price_changes
)
select increase_group, count(*) as consecutive_days_of_increase, 
min(open_time) as start_date, 
max(open_time) as end_date
from consecutive_groups
where is_increase=1
group by increase_group
order by consecutive_days_of_increase desc
limit 1;

-- Q11: TOP 5 most profitable months for the entire period
with monthly_data as (
select date_format(open_time, '%Y-%m') as month, 
open_time, open, close, 
row_number()over( partition by date_format(open_time, '%Y-%m') order by open_time asc ) as rn_asc, 
row_number() over(partition by date_format(open_time, '%Y-%m') order by open_time desc) as rn_desc
from btc_1d
)
select t1.month, (t2.close-t1.open) as monthly_profit
from monthly_data t1
join 
monthly_data t2
on 
t1.month=t2.month
where t1.rn_asc = 1 and t2.rn_desc = 1
order by monthly_profit desc
limit 5;

-- END OF THE PROJECT