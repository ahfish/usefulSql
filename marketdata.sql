
--grant select on market_price_asc_view to web_anon
delete from market_price mp where interval_min =43200
ALTER TABLE market_price
DROP CONSTRAINT market_price_pkey;

ALTER TABLE market_price add PRIMARY KEY 
(id, code, interval_min)

select * from market_price limit 2
select * from market_price where id = 1593615600


select time from market_price mp  where code = 'IXIC' and interval_min = 1 order by "time" limit 1
union
select time from market_price mp  where code = 'IXIC' and interval_min = 60 order by "time" limit 1
select time from market_price mp  where code = 'IXIC' and interval_min = 1440 order by "time" limit 1
select * from market_price mp  where code = 'DXY' and interval_min = 1440 order by "time" limit 1

select * from market_price_dxy_daily mpdd order by time desc
select * from market_price_eurusd_daily mpdd order by time desc
select * from market_price_oj_daily mpdd order by time desc


select * from market_price mp where code = 'EURUSD' and interval_min = 60 and id = 1618531200

SHOW max_connections;


select * from market_price_zg_hourly order by time 
select * from market_price_zg_every_minute mpzem order by time
select * from vendor_market_price_tmp limit 2
--------------------------------------------------------
select * from market_price_eurusd_hourly mpeh order by time desc
insert into market_price_cadusd_hourly(id, high, low, "close", "open", "time") 
select id/1000, high, low, "close", "open", "time" from vendor_market_price vmp where code = 'CADUSD' and interval_min = 60 and "time" >= '2021-04-15' and "time" < '2021-04-16' and id/1000 not in (
select id from market_price_cadusd_hourly mpeem where "time" >= '2021-04-15' and "time" < '2021-04-16' 
)

select * from market_price_cadusd_daily order by time desc

select * from market_price_cadusd_every_minute mpeem where "time" >= '2021-04-15' and "time" < '2021-04-16' order by time

insert into market_price_cadusd_every_minute(id, high, low, "close", "open", "time") 
select id/1000, high, low, "close", "open", "time" from vendor_market_price vmp where code = 'CADUSD' and interval_min = 1 and "time" >= '2021-04-15' and "time" < '2021-04-16' and id/1000 not in (
select id from market_price_cadusd_every_minute mpeem where "time" >= '2021-04-15' and "time" < '2021-04-16' 
) 

select id/1000, high, low, "close", "open", "time" from vendor_market_price vmp where code = 'EURUSD' and interval_min = 1 and "time" >= '2021-04-14' and "time" < '2021-04-17' and id/1000 not in (
select id from market_price where code = 'EURUSD' and interval_min =1 and "time" >= '2021-04-14' and "time" < '2021-04-17' 
) order by time

select * from vendor_market_price vmp where code = 'CHFUSD' order by time desc
select * from market_price_chfusd_every_minute order by time desc
select * from market_price_y_minute order by time desc
select * from market_price_gbpusd_daily  order by time desc
select * from vendor_market_price vmp where code = 'USDJPY'
select * from market_price where code = 'EURUSD' and interval_min =1 and id = 1618520460

--------------------------------------------------------
select * from market_price_cadusd_hourly mpeem where "time" >= '2021-04-15' and "time" < '2021-04-16'
select * from market_price_audusd_hourly mpeem where "time" >= '2021-04-15' and "time" < '2021-04-16'

insert into market_price(id, high, low, "close", "open", "time", interval_min, code)
select id/1000, high, low, "close", "open", "time", 60, 'EURUSD' from vendor_market_price vmp where code = 'EURUSD' and interval_min = 60 and "time" >= '2021-04-15' and "time" < '2021-04-16' and id/1000 not in (
select id from market_price where  code = 'EURUSD' and interval_min = 60  and "time" >= '2021-04-15' and "time" < '2021-04-16' 
)

select * from market_price where  code = 'EURUSD' and interval_min = 60  and "time" >= '2021-04-15' and "time" < '2021-04-16'
select * from market_price where  code = 'CADUSD' and interval_min = 60  and "time" >= '2021-04-15' and "time" < '2021-04-16'
select * from market_price_cadusd_hourly mpeem where "time" >= '2021-04-15' and "time" < '2021-04-16'



select * from vendor_market_price vmp where code = 'CADUSD' and interval_min = 60 order by id desc

1618444800000
1618444800
CTRADER	1618448400000	1.1989800000	1.1972300000	1.1974100000	1.1986100000	2021-04-15 09:00:00	60	EURUSD
CTRADER	1618444800000	1.1988700000	1.1981500000	1.1986200000	1.1983100000	2021-04-15 08:00:00	60	EURUSD

select * from market_price_dxy_daily mpdd order by time desc

select * from market_price_axjo_hourly mpdd order by time desc
select * from market_price_uk100_hourly mpdd order by time 
select * from market_price_jp225_hourly mpdd order by time desc
select * from market_price_jp225_daily mpdd order by time 
select * from market_price_fchi_daily mpdd order by time desc
select * from market_price_fchi_hourly mpdd order by time
select * from market_price_xrpusd_hourly mpdd order by time desc
select * from market_price_xrpusd_hourly mpdd order by time 
XRPUSD
FCHI

UK100
AXJO

select * from market_price_dxy_daily mpdd where id = 1617926400 or id = 1617840000
select * from market_price_cadusd_every_minute mpcem order by id desc
--delete from  market_price_dxy_daily mpdd where id = 1617926400 or id = 1617840000

select * from market_price_eth_every_minute mpeem  order by time desc
select * from market_price_cadusd_every_minute mpeem  order by time desc
select * from market_price_eth_hourly mpdh order by time desc
select * from market_price_dxy_every_five_minute mpdefm order by time desc
select * from market_price mp  where code = 'NZDUSD' and interval_min = 60 order by time desc
select * from market_price mp  where code = 'ETH' and interval_min = 60 order by time desc
select * from market_price mp  where code = 'EURUSD' and interval_min = 1 and "time" > '2017-12-11'  and  "time" < '2017-12-12 05:59' order by time 
select * from market_price mp  where code = 'CADUSD' and interval_min = 1440  and "time" > '1977-12-01'  and  "time" < '2017-12-12 05:59'  order by time asc
select count(1) from market_price mp  where code = 'CADUSD' and interval_min = 60  and "time" > '2020-12-01 00:00:00'  and  "time" < '2021-01-01 00:00:00'  order by time asc
select * from market_price mp  where code = 'GBPUSD' and interval_min = 60  and "time" > '2019-12-01 00:00:00'  and  "time" < '2020-01-01 00:00:00' order by time asc

select * from market_price mp  where code = 'CADUSD' and interval_min = 60  and "time" > '2020-12-01 00:00:00'  and  "time" < '2021-01-01 00:00:00'  order by time asc


curl -X PATCH http://127.0.01:8081/marketExecutor/fastDownload/USDJPY/from/2018-05-03/to/2021-01-06/with/ONE_MINUTE -H accept: application/json -o USDJPY.log

--delete from market_price mp  where code = 'JPYUSD' and interval_min = 1  and id <= 1546029000 

select * from market_price mp  where code = 'CHFUSD' and interval_min = 1440  and time >= '1989-01-01' and time <='1989-12-31'
select * from market_price mp  where code = 'ZG' and interval_min = 1440  and time >= '2015-01-01' and time <='2015-12-31'
select * from market_price mp  where code = 'CHFUSD' and interval_min = 1440 order by time desc
select * from market_price mp  where code = 'XAGUSD' and interval_min = 1440 order by time desc
select * from market_price mp  where code = 'XAGUSD' and interval_min = 1440 order by time desc
select * from market_price mp  where code = 'PL' and interval_min = 1440 order by time desc
select * from market_price mp  where code = 'CHFUSD' and interval_min = 1 order by time desc

select * from market_price_dxy_daily order by time desc

select * from 

select * from simulation s
select * from financial_detail fd 
truncate financial_detail
select * from financial_detail
select count(1) from financial_detail fd
select * from market_price mp  where code = 'CADUSD' and interval_min = 1 and "time" > '2019-01-03'  and  "time" < '2019-01-04' order by time
select * from market_price mp  where code = 'GBPUSD' and interval_min = 60 order by time desc 
select * from market_price mp  where code = 'CADUSD' and interval_min = 60 order by time desc
select * from market_price mp  where code = 'CADUSD' and interval_min = 1 order by time desc
select * from market_price mp  where code = 'GBPUSD' and id = 1614373200

select * from macd_cache where id = 631843200
select * from macd_cache where code = 'CADUSD' and slow = 12 and fast = 26 and resolution = 'ONE_MINUTE' and smoothing =2 and ema_period = 27 order by time
delete from macd_cache where code = 'CADUSD' and slow = 12 and fast = 26 and resolution = 'ONE_MINUTE' and smoothing =2 and ema_period = 27
select * from macd_cache where code = 'CADUSD' and slow = 12 and fast = 26 and resolution = 'DAY' and smoothing =2 and ema_period = 27 order by time
delete from macd_cache where code = 'CADUSD' and slow = 12 and fast = 26 and resolution = 'DAY' and smoothing =2 and ema_period = 27 order by time

select count(1) from macd_cache

GBPUSD	2021-02-01 00:00:00	2021-02-28 00:00:00	5.0000000000	10.0000000000	ONE_HOUR	2.0000000000	5.0000000000	IF_PREVIOUS_DIFF_GO_OPPOSITE	-0.0233000000	NORMAL	MONTH
--truncate table macd_simulation_result

select * from macd_simulation_result where fast = 26 and resolution = 'DAY' and smoothing = 2 and ema_period = 9 order by profit_and_loss 
select * from macd_simulation_result where code = 'CHFUSD' order by start desc

select * from macd_simulation_result where code = 'GBPUSD' and start = '2021-02-01 00:00:00' and "end" = '2021-02-28 00:00:00' and "period" = 'MONTH'

select * from macd_simulation_result where start = '1994-01-01' and code = 'CADUSD' and resolution = 'DAY' and opening_strategy = 'WAIT_MACD_POINT_1' 

select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss , start from macd_simulation_result where start = '2019-01-01'
select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss , start from macd_simulation_result where code = 'CADUSD' and start = '2019-01-01' order by profit_and_loss  desc

select a.* from macd_simulation_result a,
(
select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss , start from macd_simulation_result where code = 'CADUSD' and start = '2019-01-01' order by profit_and_loss  desc limit 1
) b 
where   (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = b.parameter
order by start desc 

select * from market_price mp  where code = 'CADUSD' and interval_min = 1440 and id = 1608422400
update market_price mp set code = 'CADUSD_TMP' where code = 'CADUSD' and interval_min = 1440 and id = 1608422400

MarketPrice=[MarketPrice(id=1577750400, intervalMin=1440, code=CADUSD, high=0.7723, low=0.7651, close=0.7700, open=0.7652, time=2019-12-31T08:00)] currentMACD=[MovingAverageConvergenceDivergencePoint(id=1577750400, time=2019-12-31T08:00, shortEMA=0.7654, longEMA=0.7597, diff=0.0057, dem=0.0004)] macdStatus=[diff=0.0057 dem=0.0004 status=ABOVE] closingStrategy=[ORIGINAL]

select a.* from macd_simulation_result a,
(
select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, avg(profit_and_loss) as pl from macd_simulation_result where 
code = 'CADUSD' and 
start >= '2018-01-01' and
"end" <= '2020-12-31' and
resolution = 'DAY' 
group by code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy
order by pl desc
limit 1
) b where   (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = b.parameter
and a."start" >= '2010-01-01'
order by "start" desc

CADUSD	2020-01-01 00:00:00	2020-12-31 00:00:00	5.0000000000	30.0000000000	DAY	2.0000000000	30.0000000000	ORIGINAL	0.0744000000
CADUSD	2019-01-01 00:00:00	2019-12-31 00:00:00	5.0000000000	30.0000000000	DAY	2.0000000000	30.0000000000	ORIGINAL	0.0235000000




losing_strategy varchar(50) NOT NULL,
select  * from macd_simulation_result where 
code = 'AUDUSD' and 
"end" = '2019-12-31' and
resolution = 'DAY' 
order by pl desc

[2021-01-23 00:03:32] [http-nio-8091-exec-3] [INFO ] m.domain.MacdExecutionServiceImpl - [MACD] MarketPrice=[MarketPrice(id=1548288000, intervalMin=1440, code=CADUSD, high=0.7503, low=0.7476, close=0.7491, open=0.7496, time=2019-01-24T08:00)] currentMACD=[MovingAverageConvergenceDivergencePoint(id=1548288000, time=2019-01-24T08:00, shortEMA=0.7504, longEMA=0.7817, diff=-0.0313, dem=-0.0316)] macdStatus=[diff=-0.0313 dem=-0.0316 status=ABOVE] closingStrategy=[ORIGINAL]



select (slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss as pl from macd_simulation_result where 
code = 'AUDUSD' and 
start >= '2018-01-01' and
"end" <= '2019-12-31' and
resolution = 'DAY' 
--group by slow ,fast ,smoothing ,ema_period, closing_strategy
order by pl desc

select * from macd_simulation_result  where 
select * from macd_simulation_result where code = 'GBPUSD' and resolution  = 'DAY' order by profit_and_loss desc
select * from macd_simulation_result where code = 'NZDUSD' and resolution  = 'ONE_HOUR' order by profit_and_loss desc
 
select (slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss as pl from macd_simulation_result 
select (slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss as pl from macd_simulation_result where resolution  = 'ONE_MINUTE'

select (slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy) as parameter, avg(profit_and_loss) as pl from macd_simulation_result where 
resolution  = 'ONE_MINUTE' and 
code = 'CADUSD'
group by (slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy) 
order by avg(profit_and_loss) desc

select (slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss as pl from macd_simulation_result where 
code = 'ZG' and 
start >= '2018-01-01' and
"end" <= '2020-12-31' and
resolution = 'DAY' 
--group by slow ,fast ,smoothing ,ema_period, closing_strategy
order by pl desc

select * from macd_simulation_result where 
code = 'ZC' 

select distinct start from macd_simulation_result where 
code = 'ZG'


select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, start, profit_and_loss as pl from macd_simulation_result where 
code = 'CADUSD' and 
start >= '2001-01-01' and
(code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = ('CADUSD','DAY',5.0000000000,10.0000000000,2.0000000000,5.0000000000,'ORIGINAL')

//20 year CAD check
select row_number() OVER () rownum, (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, sum(profit_and_loss), avg(profit_and_loss) from macd_simulation_result where 
code = 'CADUSD' and 
start >= '2001-01-01' and 
profit_and_loss > 0
group by (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) having count(1) >= 19  order by avg(profit_and_loss) desc  


select a.* from macd_simulation_result a, 
(
	select row_number() OVER () rownum, (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, sum(profit_and_loss), avg(profit_and_loss) from macd_simulation_result where 
	code = 'CADUSD' and 
	start >= '2001-01-01' and 
	profit_and_loss > 0
	group by (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) having count(1) >= 19 
) b 
where 
	(a.code, a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy) = b.parameter and
	b.rownum = 1
order by 
	a.start desc


-- 10 year only
select row_number() OVER () rownum, (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, avg(profit_and_loss) from macd_simulation_result where 
code = 'CADUSD' and 
start >= '2011-01-01' and 
profit_and_loss > 0
group by (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) having count(1) = 10  order by avg(profit_and_loss) desc  

-- (CADUSD,DAY,50.0000000000,55.0000000000,2.0000000000,40.0000000000,WITH_SHORT_RANGE_10)

select a.* from macd_simulation_result a, 
(
	select row_number() OVER () rownum, (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, avg(profit_and_loss) from macd_simulation_result where 
	code = 'CADUSD' and 
	start >= '2011-01-01' and 
	profit_and_loss > 0
	group by (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) having count(1) = 10
) b 
where 
	(a.code, a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy) = b.parameter and
	b.rownum = 1
order by 
	a.start desc
	

select *  from macd_simulation_result where  code = 'GBPUSD' and resolution = 'ONE_HOUR' order by start desc
select count(1) from macd_simulation_result where  code = 'CADUSD' and resolution = 'ONE_HOUR'
select count(1) from macd_simulation_result where  code = 'GBPUSD' and resolution = 'ONE_HOUR'
select count(1) from macd_simulation_result where  code = 'NZDUSD' and resolution = 'ONE_HOUR'
select * from macd_simulation_result where  code = 'EURUSD' and resolution = 'ONE_HOUR' and profit_and_loss = 0

EXPLAIN ANALYZE VERBOSE

----------------
select distinct code from macd_simulation_result 
select * from macd_simulation_result where code = 'CC' order by start desc limit 2
select '(''' || a.code || ''',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result b where b.profit_and_loss > 0 and (a.code, a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.code, b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result a where  
a.code = 'HG' and 
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.code, a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

#######################################################################################
select * from market_price_eurusd_daily order by time desc
select * from market_price_eurusd_every_minute mpeem order by time desc
select * from market_price_eurusd_hourly mpeem order by time desc


select '(''EURUSD'',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result_eurusd b where b.profit_and_loss > 0 and (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result_eurusd a where  
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

-- select count()
select count(1)
from macd_simulation_result_eurusd where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',25.0000000000,30.0000000000,2.0000000000,25.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH') 


-- profit_and_loss result
select ('EURUSD',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong', profit_and_loss 
from macd_simulation_result_eurusd msre where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',25.0000000000,30.0000000000,2.0000000000,25.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
order by start 


#######################################################################################
#######################################################################################
select '(''GBPUSD'',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result_gbpusd b where b.profit_and_loss > 0 and (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result_gbpusd a where  
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

-- select count()
select count(1)
from macd_simulation_result_gbpusd where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',55.0000000000,60.0000000000,2.0000000000,15.0000000000,'WITH_SHORT_RANGE_10','NORMAL','MONTH') 


-- profit_and_loss result
select ('GBPUSD',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong', profit_and_loss 
from macd_simulation_result_gbpusd where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',15.0000000000,55.0000000000,2.0000000000,35.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
order by start 


#######################################################################################
#######################################################################################
select '(''AUDUSD'',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result_audusd b where b.profit_and_loss > 0 and (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result_audusd a where  
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

-- select count()
select count(1)
from macd_simulation_result_audusd where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',55.0000000000,60.0000000000,2.0000000000,15.0000000000,'WITH_SHORT_RANGE_10','NORMAL','MONTH') 


-- profit_and_loss result
select ('AUDUSD',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong', profit_and_loss 
from macd_simulation_result_audusd where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',25.0000000000,30.0000000000,2.0000000000,25.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
order by start 


#######################################################################################
#######################################################################################
select '(''CADUSD'',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result_cadusd b where b.profit_and_loss > 0 and (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result_cadusd a where  
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

-- select count()
select count(1)
from macd_simulation_result_cadusd where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',55.0000000000,60.0000000000,2.0000000000,15.0000000000,'WITH_SHORT_RANGE_10','NORMAL','MONTH') 


-- profit_and_loss result
select ('AUDUSD',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong', profit_and_loss 
from macd_simulation_result_cadusd where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',25.0000000000,30.0000000000,2.0000000000,25.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
order by start 


#######################################################################################
#######################################################################################
select * from market_price_btc_daily order by time desc
select * from market_price_btc_every_minute mpeem order by time desc
select * from market_price_btc_hourly mpeem order by time asc
select '(''BTC'',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result_btc b where b.profit_and_loss > 0 and (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result_btc a where  
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

-- select count()
select count(1)
from macd_simulation_result_btc where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',10.0000000000,15.0000000000,2.0000000000,15.0000000000,'ORIGINAL','NORMAL','MONTH') 


-- profit_and_loss result
select ('BTC',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong', profit_and_loss 
from macd_simulation_result_btc where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',25.0000000000,35.0000000000,2.0000000000,15.0000000000,'WITH_SHORT_RANGE_40','WAIT_MACD_POINT_1','MONTH')
order by start 


#######################################################################################
#######################################################################################
select * from market_price_eth_daily order by time desc
select * from market_price_eth_every_minute mpeem order by time desc
select * from market_price_eth_hourly mpeem order by time desc
select '(''ETH'',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result_eth b where b.profit_and_loss > 0 and (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result_eth a where  
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

-- select count()
select count(1)
from macd_simulation_result_eth where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',10.0000000000,15.0000000000,2.0000000000,15.0000000000,'ORIGINAL','NORMAL','MONTH') 

select *
from macd_simulation_result_eth where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',10.0000000000,15.0000000000,2.0000000000,15.0000000000,'ORIGINAL','NORMAL','MONTH') order by start desc


-- profit_and_loss result
select ('ETH',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong', profit_and_loss 
from macd_simulation_result_eth where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',45.0000000000,55.0000000000,2.0000000000,10.0000000000,'WITH_SHORT_RANGE_50','WAIT_MACD_POINT_1','MONTH')
order by start 


#######################################################################################
#######################################################################################
select * from market_price_zg_daily order by time desc
select * from market_price_zg_every_minute mpeem order by time desc
select * from market_price_zg_hourly mpeem order by time asc
select '(''ZG'',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result_zg b where b.profit_and_loss > 0 and (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result_zg a where  
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

-- select count()
select count(1)
from macd_simulation_result_zg where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',10.0000000000,15.0000000000,2.0000000000,15.0000000000,'ORIGINAL','NORMAL','MONTH') 


-- profit_and_loss result
select ('ZG',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong', profit_and_loss 
from macd_simulation_result_zg where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',20.0000000000,35.0000000000,2.0000000000,20.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
order by start 


#######################################################################################
#######################################################################################
select * from market_price_t_daily order by time desc
select * from market_price_t_every_minute mpeem order by time desc
select * from market_price_t_hourly mpeem order by time asc
select '(''T'',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result_t b where b.profit_and_loss > 0 and (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result_t a where  
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

-- select count()
select count(1)
from macd_simulation_result_t where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',10.0000000000,15.0000000000,2.0000000000,15.0000000000,'ORIGINAL','NORMAL','MONTH') 


-- profit_and_loss result
select ('T',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong', profit_and_loss 
from macd_simulation_result_t where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',20.0000000000,35.0000000000,2.0000000000,20.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
order by start 


#######################################################################################
#######################################################################################
select * from market_price_ng_daily order by time desc
select * from market_price_ng_every_minute mpeem order by time desc
select * from market_price_ng_hourly mpeem order by time asc
select '(''NG'',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result_ng b where b.profit_and_loss > 0 and (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result_ng a where  
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

-- select count()
select count(1)
from macd_simulation_result_ng where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',10.0000000000,15.0000000000,2.0000000000,15.0000000000,'ORIGINAL','NORMAL','MONTH') 


-- profit_and_loss result
select ('NG',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong', profit_and_loss 
from macd_simulation_result_ng where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',20.0000000000,35.0000000000,2.0000000000,20.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
order by start 


#######################################################################################
#######################################################################################
select * from market_price_zs_daily order by time desc
select * from market_price_zs_every_minute mpeem order by time desc
select * from market_price_zs_hourly mpeem order by time asc
select '(''ZS'',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result_zs b where b.profit_and_loss > 0 and (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result_zs a where  
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

-- select count()
select count(1)
from macd_simulation_result_zs where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',10.0000000000,15.0000000000,2.0000000000,15.0000000000,'ORIGINAL','NORMAL','MONTH') 


-- profit_and_loss result
select ('ZS',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong', profit_and_loss 
from macd_simulation_result_zs where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',20.0000000000,35.0000000000,2.0000000000,20.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
order by start 


#######################################################################################
#######################################################################################
select * from market_price_hg_daily order by time desc
select * from market_price_hg_every_minute mpeem order by time desc
select * from market_price_hg_hourly mpeem order by time asc
select '(''HG'',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result_hg b where b.profit_and_loss > 0 and (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result_hg a where  
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc

-- select count()
select count(1)
from macd_simulation_result_hg where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',10.0000000000,15.0000000000,2.0000000000,15.0000000000,'ORIGINAL','NORMAL','MONTH') 


-- profit_and_loss result
select ('HG',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong', profit_and_loss 
from macd_simulation_result_hg where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',20.0000000000,35.0000000000,2.0000000000,20.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
order by start 


#######################################################################################

select '(''' || a.code || ''',''' || a.resolution || ''',' || a.slow  || ',' || a.fast  || ',' ||a.smoothing  || ',' || a.ema_period  || ',''' || a.closing_strategy || ''',''' ||  a.opening_strategy || ''',''' ||  a.period  || ''')' as parameter, max(a.profit_and_loss), min(a.profit_and_loss), sum(a.profit_and_loss),avg(a.profit_and_loss),  
 (select count(1) from macd_simulation_result b where b.profit_and_loss > 0 and (a.code, a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) =  (b.code, b.resolution, b.slow ,b.fast ,b.smoothing ,b.ema_period, b.closing_strategy, b.opening_strategy, b.period))
from macd_simulation_result a where  
a.code = 'HG' and 
a.start >= '2016-03-01' and
 a.resolution = 'ONE_HOUR'
group by (a.code, a.resolution, a.slow ,a.fast ,a.smoothing ,a.ema_period, a.closing_strategy, a.opening_strategy, a.period) order by sum(a.profit_and_loss) desc



select distinct "start", "end" from macd_simulation_result where
code = 'ZS' and 
start >= '2016-03-01' and
 resolution = 'ONE_HOUR'

select start, "end", profit_and_loss 
from macd_simulation_result where (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('EURUSD','ONE_HOUR',55.0000000000,60.0000000000,2.0000000000,15.0000000000,'WITH_SHORT_RANGE_10','NORMAL','MONTH')
--and profit_and_loss > 0
order by start

select *
from macd_simulation_result_eurusd where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',55.0000000000,60.0000000000,2.0000000000,15.0000000000,'WITH_SHORT_RANGE_10','NORMAL','MONTH') 
--and profit_and_loss > 0
order by start

select *
from macd_simulation_result where (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('EURUSD','ONE_HOUR',25.0000000000,30.0000000000,2.0000000000,25.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
--and profit_and_loss > 0
order by start

delete from macd_simulation_result where start >= '2021-05-30 00:00:00'


select * from expected_execution_macd

--delete
--from macd_simulation_result where (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
--('EURUSD','ONE_HOUR',25.0000000000,30.0000000000,2.0000000000,25.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
--and start = '2021-02-01 00:00:00' and "end" = '2021-02-28 00:00:00'  

select * from market_price_eurusd_hourly mpeh order by time desc

select count(distinct "start" )
from macd_simulation_result where
code = 'EURUSD' and 
start >= '2016-03-01' and
 resolution = 'ONE_HOUR'

select * from market_price mp  where code = 'ZG' and interval_min = 60  order by time

select * from macd_simulation_result limit 2
select ('EURUSD',resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, start , "end", profit_and_loss 
from macd_simulation_result_eurusd msre where (resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('ONE_HOUR',25.0000000000,30.0000000000,2.0000000000,25.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
order by start 


select * from macd_simulation_result limit 2
select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, start, "end", profit_and_loss 
from macd_simulation_result where (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('CADUSD','ONE_HOUR',55.0000000000,60.0000000000,2.0000000000,30.0000000000,'WITH_SHORT_RANGE_60','WAIT_MACD_POINT_1','MONTH')
order by start 

select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) as parameter, start, "end", profit_and_loss 
from macd_simulation_result where (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy, opening_strategy, period) = 
('GBPUSD','ONE_HOUR',15.0000000000,55.0000000000,2.0000000000,35.0000000000,'WITH_SHORT_RANGE_10','WAIT_MACD_POINT_2','MONTH')
order by start 

SHOW max_connections;

SELECT client_addr, count(1) FROM pg_stat_activity group by client_addr 

select * from vendor_market_price where code = 'CT' limit 2

select * from market_price_cadusd_every_minute mpcefm order by time desc
select * from market_price_oj_daily
CREATE TABLE public.market_price_oj_hourly (
	id bigserial NOT NULL,
	high numeric(20,10) NULL,
	low numeric(20,10) NULL,
	"close" numeric(20,10) NULL,
	"open" numeric(20,10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_oj_hourly_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_oj_hourly_1 ON public.market_price_oj_hourly USING btree ("time");

CREATE TABLE public.market_price_oj_daily (
	id bigserial NOT NULL,
	high numeric(20,10) NULL,
	low numeric(20,10) NULL,
	"close" numeric(20,10) NULL,
	"open" numeric(20,10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_oj_daily_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_oj_daily_1 ON public.market_price_oj_daily USING btree ("time");

CREATE TABLE public.market_price_oj_every_minute (
	id bigserial NOT NULL,
	high numeric(20,10) NULL,
	low numeric(20,10) NULL,
	"close" numeric(20,10) NULL,
	"open" numeric(20,10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_oj_every_minute_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_oj_every_minute_1 ON public.market_price_oj_every_minute USING btree ("time");

CREATE TABLE public.market_price_oj_every_five_minute (
	id bigserial NOT NULL,
	high numeric(20,10) NULL,
	low numeric(20,10) NULL,
	"close" numeric(20,10) NULL,
	"open" numeric(20,10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_oj_every_minute_five_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_oj_every_five_minute_1 ON public.market_price_oj_every_five_minute USING btree ("time");



truncate market_price_cadusd_every_minute

select * from market_price_jpyusd_hourly order by time desc

select * from market_price_jpyusd_every_minute order by time desc



select * from expected_execution_macd

select eem.direction , eem.price as expected_price, case when eem.direction ='LONG' then eem.price*-1 else eem.price end as expected_amend_price, date_trunc('hour', eem.time),
 aoem.direction , aoem.price as actual_price, case when aoem.direction ='LONG' then aoem.price*-1 else aoem.price end as actual_amend_price, abs(eem.price-aoem.price)
from expected_execution_macd eem 
left join actual_order_execution_macd aoem on aoem.direction  = eem.direction and date_trunc('hour', eem.time)  = date_trunc('hour', aoem.time) and eem.symbol = aoem.symbol 
where eem.symbol = 'EURUSD' and  eem.time >= '2021-05-09' and eem.time <= '2021-05-15'

select sum(case when eem.direction ='LONG' then eem.price*-1 else eem.price end ) as expected_amend_price ,
 sum(case when aoem.direction ='LONG' then aoem.price*-1 else aoem.price end) as actual_amend_price, sum(abs(eem.price-aoem.price))
from expected_execution_macd eem 
left join actual_order_execution_macd aoem on aoem.direction  = eem.direction and date_trunc('hour', eem.time)  = date_trunc('hour', aoem.time) and eem.symbol = aoem.symbol 
where eem.symbol = 'EURUSD'



select sum(case when direction ='LONG' then price*-1 else price end ) from expected_execution_macd eem where symbol = 'EURUSD'
select sum(case when direction ='LONG' then price*-1 else price end ) from actual_order_execution_macd aoem where symbol = 'EURUSD'
select direction , price,  if direction = 'LONG' then 1 else 2 end if as a from expected_execution_macd eem where symbol = 'EURUSD'


select direction , price, case when direction ='LONG' then price*-1 else price end as a from actual_order_execution_macd eem where symbol = 'EURUSD'

select * from market_price_cadusd_every_minute mpcem order by time desc
select * from market_price_zg_daily order by time desc
select * from market_price_cadusd_hourly where id = 1617998400 or id = 1617994800
select * from market_price_xauusd_hourly order by time desc
select * from market_price_xauusd_every_minute mpxem order by time desc
select * from market_price_xauusd_daily mpxem order by time desc
select * from market_price_btc_hourly order by time

select * from market_price_cadusd_every_minute order by time desc

CREATE TABLE public.market_price_eurusd_hourly (
	id bigserial NOT NULL,
	high numeric(20,10) NULL,
	low numeric(20,10) NULL,
	"close" numeric(20,10) NULL,
	"open" numeric(20,10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_eurusd_hourly_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_eurusd_hourly_1 ON public.market_price_eurusd_hourly USING btree ("time");

CREATE TABLE public.market_price_eurusd_daily (
	id bigserial NOT NULL,
	high numeric(20,10) NULL,
	low numeric(20,10) NULL,
	"close" numeric(20,10) NULL,
	"open" numeric(20,10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_eurusd_daily_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_eurusd_daily_1 ON public.market_price_eurusd_daily USING btree ("time");

CREATE TABLE public.market_price_eurusd_every_minute (
	id bigserial NOT NULL,
	high numeric(20,10) NULL,
	low numeric(20,10) NULL,
	"close" numeric(20,10) NULL,
	"open" numeric(20,10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_eurusd_every_minute_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_eurusd_every_minute_1 ON public.market_price_eurusd_every_minute USING btree ("time");

CREATE TABLE public.market_price_eurusd_every_five_minute (
	id bigserial NOT NULL,
	high numeric(20,10) NULL,
	low numeric(20,10) NULL,
	"close" numeric(20,10) NULL,
	"open" numeric(20,10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_eurusd_every_minute_five_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_eurusd_every_five_minute_1 ON public.market_price_eurusd_every_five_minute USING btree ("time");

select * from market_price_eurusd_hourly mpeh where id = 1620252000

select * from macd_simulation_result where code = 'EURUSD' limit 2
select * from macd_simulation_result where code = 'EURUSD' 
and slow = 25 and fast = 30 and ema_period = 25 and closing_strategy  = 'WITH_SHORT_RANGE_10'  and opening_strategy = 'WAIT_MACD_POINT_2' 
and resolution = 'ONE_HOUR' and "period" = 'MONTH' and "start" = '2021-04-01' order by start desc
select * from macd_simulation_result where symbol = 'EURUSD' order by "time" desc 


and slow = 25 and fast = 30 and ema_period = 25 and closing_strategy  = 'WITH_SHORT_RANGE_10'  and opening_strategy = 'WAIT_MACD_POINT_2' 
and resolution = 'ONE_HOUR' and "period" = 'MONTH'
and "start" >= '2021-04-01'
order by start desc

select * from macd_simulation_result where code = 'EURUSD' 
and slow = 25 and fast = 30 and ema_period = 25 and closing_strategy  = 'WITH_SHORT_RANGE_10'  and opening_strategy = 'WAIT_MACD_POINT_2' 
and resolution = 'ONE_HOUR' and "period" = 'MONTH' and "start" >= '2021-04-01'
order by start desc

select distinct "start" from macd_simulation_result where code = 'DXY' and  resolution = 'ONE_HOUR'
"start" >= '2021-04-01'

select "start", count(1) from macd_simulation_result where code = 'EURUSD' and  resolution = 'ONE_HOUR' group by "start" order by "start" desc
select * from macd_simulation_result order by "start" desc limit 20




--delete from macd_simulation_result where code = 'EURUSD' and  "start" >= '2021-04-01'
and slow = 25 and fast = 30 and ema_period = 25 and closing_strategy  = 'WITH_SHORT_RANGE_10'  and opening_strategy = 'WAIT_MACD_POINT_2' 
and resolution = 'ONE_HOUR' and "period" = 'MONTH' and "start" >= '2021-04-01'
order by start desc

--delete from macd_simulation_result where code = 'EURUSD' and slow = 25 and fast = 30 and ema_period = 25 and closing_strategy  = 'WITH_SHORT_RANGE_10'  and opening_strategy = 'WAIT_MACD_POINT_2' 
and resolution = 'ONE_HOUR' and "period" = 'MONTH' and "start" = '2020-04-25'



select * from market_price_eurusd_hourly order by time desc
select * from market_price_ng_every_minute mpeem order by time desc
select * from market_price_gbpusd_hourly order by time desc

select * from macd_simulation_result where code = 'EURUSD' 
and slow = 25 and fast = 30 and ema_period = 25 and closing_strategy  = 'WITH_SHORT_RANGE_10'  and opening_strategy = 'WAIT_MACD_POINT_2' 
and resolution = 'ONE_HOUR' and "period" = 'MONTH' and "start" = '2021-04-06' order by start desc

select * from expected_execution_macd eem where time >= '2021-08-01' and time <= '2021-08-08' and symbol = 'GBPUSD' 
select * from expected_execution_macd eem  where time >= '2021-07-18' and time <= '2021-07-25' and symbol = 'GBPUSD'
select * from actual_order_execution_macd eem where time >= '2021-07-18' and time <= '2021-07-25' and symbol = 'EURUSD'
select * from expected_execution_macd eem where time >= '2021-05-30' and time <= '2021-06-06' and symbol = 'EURUSD'
select * from actual_order_execution_macd aoem where time >= '2021-05-16' and time <= '2021-05-23' and symbol = 'EURUSD'

select * from expected_execution_macd eem where time >= '2021-07-11' and time <= '2021-07-18' and symbol = 'GBPUSD'
select * from actual_order_execution_macd aoem where time >= '2021-07-11' and time <= '2021-07-18' and symbol = 'EURUSD'

select * from expected_execution_macd eem where time >= '2021-05-30' and time <= '2021-06-06' and symbol = 'EURUSD'

delete from macd_simulation_result where start >= '2021-07-01'
select * from macd_simulation_result where start >= '2021-07-01'

 
 select direction , price, case when direction ='LONG' then price*-1 else price end as a from actual_order_execution_macd eem where symbol = 'EURUSD'
 select time, direction , price, case when direction ='LONG' then price*-1 else price end as a from actual_order_execution_macd eem where symbol = 'EURUSD' and time between  '2021-05-01' and  '2021-06-01'  order by time
 
 select date_trunc('month',time), sum(case when direction ='LONG' then price*-1 else price end ) from actual_order_execution_macd eem where symbol = 'EURUSD' 
 and time between  '2021-04-01' and  '2021-06-01'  
 group by date_trunc('month',time)
 order by date_trunc('month',time)
 
 select date_trunc('month',time), sum(case when direction ='LONG' then price*-1 else price end ) from expected_execution_macd  where symbol = 'EURUSD' 
 and time between  '2021-04-01' and  '2021-06-01'  
 group by date_trunc('month',time)
 order by date_trunc('month',time)
 
 select * from actual_order_execution_macd
 
 
 
 SELECT last_value FROM actual_order_execution_macd_id_seq;
 SELECT currval('actual_order_execution_macd_id_seq') + 1;


 select nextval('actual_order_execution_macd_id_seq') 
 
 select * from market_price_ct_daily
 
 
 select * 

SELECT distinct start FROM macd_simulation_result_hk50 
SELECT * FROM macd_simulation_result_hk50 order by start desc
delete from macd_simulation_result_hk50 WHERE START >= '2021-08-01';
CREATE TABLE public.macd_simulation_result_sb (  "start" timestamptz NOT NULL,  "end" timestamptz NOT NULL,  slow numeric(20, 10) NOT NULL,  fast numeric(20, 10) NOT NULL,  resolution varchar(20) NOT NULL,  smoothing numeric(20, 10) NOT NULL,  ema_period  numeric(20, 10) NOT NULL,  closing_strategy varchar(50) NOT NULL,  profit_and_loss numeric(20, 10) NULL,  opening_strategy varchar(50) NOT NULL,  "period" varchar(50) NOT NULL,  CONSTRAINT macd_simulation_result_sb_pk PRIMARY KEY ( start, "end", slow, fast, resolution, smoothing, ema_period, closing_strategy, opening_strategy, period ) );  CREATE INDEX macd_simulation_result_idx_sb_1 ON public.macd_simulation_result_sb USING btree (resolution, slow, fast, smoothing, ema_period, closing_strategy, opening_strategy, period);
CREATE TABLE public.macd_simulation_result_hk50 (  "start" timestamptz NOT NULL,  "end" timestamptz NOT NULL,  slow numeric(20, 10) NOT NULL,  fast numeric(20, 10) NOT NULL,  resolution varchar(20) NOT NULL,  smoothing numeric(20, 10) NOT NULL,  ema_period  numeric(20, 10) NOT NULL,  closing_strategy varchar(50) NOT NULL,  profit_and_loss numeric(20, 10) NULL,  opening_strategy varchar(50) NOT NULL,  "period" varchar(50) NOT NULL,  CONSTRAINT macd_simulation_result_hk50_pk PRIMARY KEY ( start, "end", slow, fast, resolution, smoothing, ema_period, closing_strategy, opening_strategy, period ) );  CREATE INDEX macd_simulation_result_idx_hk50_1 ON public.macd_simulation_result_hk50 USING btree (resolution, slow, fast, smoothing, ema_period, closing_strategy, opening_strategy, period);

select * from macd_simulation_result_sb
insert into macd_simulation_result_sb (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'SB';



--insert into macd_simulation_result_hk50 (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'HK50';
--insert into macd_simulation_result_cadusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'CADUSD';
--insert into macd_simulation_result_fchi (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'FCHI';
--insert into macd_simulation_result_axjo (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'AXJO';
--insert into macd_simulation_result_xrpusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'XRPUSD';
--insert into macd_simulation_result_eurusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'EURUSD';
--insert into macd_simulation_result_eth (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'ETH';
--insert into macd_simulation_result_hg (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'HG';
--insert into macd_simulation_result_de30 (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'DE30';
--insert into macd_simulation_result_zc (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'ZC';
--insert into macd_simulation_result_zg (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'ZG';
--insert into macd_simulation_result_oj (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'OJ';
--insert into macd_simulation_result_gbpusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'GBPUSD';
--insert into macd_simulation_result_kc (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'KC';
--insert into macd_simulation_result_jp225 (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'JP225';
--insert into macd_simulation_result_hsce (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'HSCE';
--insert into macd_simulation_result_btc (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'BTC';
--insert into macd_simulation_result_us500 (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'US500';
--insert into macd_simulation_result_uk100 (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'UK100';
--insert into macd_simulation_result_dxy (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'DXY';
--insert into macd_simulation_result_zs (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'ZS';
--insert into macd_simulation_result_ct (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'CT';
--insert into macd_simulation_result_nzdusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'NZDUSD';
--insert into macd_simulation_result_pl (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'PL';
--insert into macd_simulation_result_xagusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'XAGUSD';
--insert into macd_simulation_result_chfusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'CHFUSD';
--insert into macd_simulation_result_zi (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'ZI';
--insert into macd_simulation_result_cc (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'CC';
--insert into macd_simulation_result_ng (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'NG';
--insert into macd_simulation_result_t (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'T';
--insert into macd_simulation_result_audusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'AUDUSD';
--insert into macd_simulation_result_ixic (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" ) select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from macd_simulation_result where code = 'IXIC';



--select * from macd_simulation_result_eurusd order by start desc


select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = '' & A1 &'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) )

select "start", "end" from macd_simulation_result_cadusd where "start" > '2019-12-31' and "period" = 'MONTH' limit 20
select * from pg_timezone_names where name like '%Hong%'
select distinct  "start" at time zone 'Asia/Hong_Kong', "end" at time zone 'Asia/Hong_Kong' from macd_simulation_result_eurusd

insert into macd_simulation_result_sb (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''SB'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_hk50 (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''HK50'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_cadusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''CADUSD'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_fchi (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''FCHI'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_axjo (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''AXJO'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_xrpusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''XRPUSD'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_eurusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''EURUSD'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_eth (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''ETH'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_hg (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''HG'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_de30 (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''DE30'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_zc (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''ZC'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_zg (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''ZG'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_oj (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''OJ'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_gbpusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''GBPUSD'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_kc (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''KC'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_jp225 (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''JP225'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_hsce (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''HSCE'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_btc (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''BTC'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_us500 (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''US500'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_uk100 (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''UK100'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_dxy (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''DXY'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_zs (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''ZS'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_ct (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''CT'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_nzdusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''NZDUSD'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_pl (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''PL'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_xagusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''XAGUSD'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_chfusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''CHFUSD'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_zi (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''ZI'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_cc (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''CC'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_ng (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''NG'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_t (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''T'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_audusd (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''AUDUSD'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );
insert into macd_simulation_result_ixic (  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )  select "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" from dblink('dbname=marketPrice_20211212 user=ahfish password=pascal port=5432 host=127.0.0.1', 'SELECT "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" FROM macd_simulation_result_intrim where code = ''IXIC'' and start >= ''2021-08-01''') as n(  "start" timestamptz ,  "end" timestamptz ,  slow numeric(20, 10) ,  fast numeric(20, 10) ,  resolution varchar(20) ,  smoothing numeric(20, 10) ,  ema_period numeric(20, 10) , closing_strategy varchar(50) ,  profit_and_loss numeric(20, 10),  opening_strategy varchar(50) ,  "period" varchar(50) );




select a.id, a.time, extract (epoch from (a.time - b.time))::integer/60/60 from market_price_eth_hourly a left join market_price_eth_hourly b on (a.id - 3600) = b.id order by a.time desc 

insert into vendor_market_price(
	provider,
	id,
	high,
	low,
	"close",
	"open",
	"time",
	interval_min,
	code
)
select 
	n.provider,
	n.id,
	n.high,
	n.low,
	n."close",
	n."open",
	n."time",
	n.interval_min,
	n.code
from vendor_market_price_tmp n
left join vendor_market_price o on (o.provider, o.id, o.code, o.interval_min) = (n.provider, n.id, n.code, n.interval_min) 
where o.provider is null and o.id  is null and  o.code  is null and  o.interval_min  is null

select * from vendor_market_price vmp where time >= '2021-08-05' and  time <= '2021-08-07' and code = 'GBPUSD' and interval_min =1 order by time desc  

CREATE TABLE public.vendor_market_price_fchi ( provider varchar(20) NOT NULL, id bigserial NOT NULL, high numeric(20, 10) NULL, low numeric(20, 10) NULL, "close" numeric(20, 10) NULL, "open" numeric(20, 10) NULL, "time" timestamptz NULL, interval_min int4 NOT NULL, CONSTRAINT vendor_market_price_pkey_fchi PRIMARY KEY (provider, id, interval_min) ); CREATE INDEX vendor_market_price_fchiidx_1 ON public.vendor_market_price USING btree ("time"); 



select * from vendor_market_price_eth vmpe order by time desc
select * from vendor_market_price_tmp where code = 'ZG' and interval_min  = 1 order by time desc 
select * from vendor_market_price_tmp where code = 'ZG' and interval_min  = 1 and time <= '2022-01-02' order by time desc
 
select distinct code from vendor_market_price_tmp order by code
select * from vendor_market_price_tmp where interval_min =1 order by time desc
select * from public.vendor_market_price_zi where time >= '2021-12-01' order by time desc
select * from vendor_market_price_ng order by time desc
truncate table vendor_market_price_tmp

select * from vendor_market_price_eurusd order by time desc
select * from public.vendor_market_price_zg order by time desc
select * from public.vendor_market_price_tmp where code = 'XAGUSD' order by time desc

insert into public.vendor_market_price_fchi( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_fchi o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'FCHI' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_axjo( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_axjo o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'AXJO' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_eurusd( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_eurusd o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'EURUSD' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_hg( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_hg o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'HG' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_eth( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_eth o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'ETH' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_de30( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_de30 o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'DE30' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_zg( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_zg o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'ZG' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_oj( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_oj o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'OJ' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_gbpusd( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_gbpusd o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'GBPUSD' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_kc( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_kc o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'KC' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_jp225( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_jp225 o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'JP225' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_btc( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_btc o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'BTC' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_us500( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_us500 o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'US500' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_uk100( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_uk100 o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'UK100' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_dxy( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_dxy o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'DXY' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_zs( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_zs o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'ZS' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_ct( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_ct o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'CT' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_nzdusd( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_nzdusd o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'NZDUSD' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_xagusd( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_xagusd o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'XAGUSD' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_pl( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_pl o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'PL' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_chfusd( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_chfusd o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'CHFUSD' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_zi( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_zi o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'ZI' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_cc( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_cc o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'CC' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_ng( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_ng o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'NG' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_t( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_t o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'T' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_audusd( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_audusd o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'AUDUSD' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_jpyusd( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_jpyusd o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'JPYUSD' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_ixic( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_ixic o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'IXIC' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_sb( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_sb o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'SB' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_hk50( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_hk50 o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'HK50' and o.id is null and o.interval_min is null  ;
insert into public.vendor_market_price_cadusd( provider, id, high, low,  "close",  "open",  "time", interval_min) select n.provider, n.id, n.high, n.low, n."close", n."open", n."time", n.interval_min from vendor_market_price_tmp n left join public.vendor_market_price_cadusd o on  n.provider = o.provider and n.id = o.id and o.interval_min  = n.interval_min where n.code = 'CADUSD' and o.id is null and o.interval_min is null  ;


select * from vendor_market_price_tmp where code = 'FCHI' order by time desc

select * from vendor_market_price_cadusd where interval_min =1 order by time desc 

select distinct code from market_price mp where code not in (
select distinct upper(replace(replace(replace(replace(replace(table_name, 'market_price_', ''), '_hourly', ''), '_daily', ''), '_every_five_minute', ''), '_every_minute', '')) from information_schema.tables where table_name like 'market_price_%' and table_name not like '%view'
)
select distinct code from vendor_market_price
select * from market_price where code = 'IXIC' order by time desc;
select * from market_price_gbpusd_every_minute where time <= '2021-05-14' order by time desc
select * from market_price_xagusd_every_minute order by time desc
select * from market_price where code = 'IXIC' and code != 'HK02800';
truncate table vendor_market_price


select distinct upper(replace(replace(replace(replace(replace(table_name, 'vendor_market_price_', ''), '_hourly', ''), '_daily', ''), '_every_five_minute', ''), '_every_minute', '')) from information_schema.tables where table_name like 'vendor_market_price_%' and table_name not like '%view'
truncate table vendor_market_price_tmp

insert into market_price(
	id,
	high,
	low,
	"close",
	"open",
	"time",
	interval_min,
	code
)
select
	n.id,
	n.high,
	n.low,
	n."close",
	n."open",
	n."time",
	n.interval_min,
	n.code
from market_price_tmp n left join market_price o on (n.id, n.code, n.interval_min) = (o.id, o.code, o.interval_min)
where o.id is null and o.code is null and o.interval_min is null 
truncate table market_price_tmp
select * from market_price where code = 'IXIC' order by time desc

select * from macd_simulation_result_audusd order by start desc
select * from market_price order by time desc


select * from macd_simulation_result_cc order by start  desc limit 2
select distinct start from macd_simulation_result where code = 'EURUSD' and  start >= '2021-04-01' order by start desc  limit 8

COPY (SELECT * FROM macd_simulation_result WHERE start >= '2021-04-01' ) TO '/tmp/macd_simulation_result_20220211.tsv'



CREATE TABLE public.macd_simulation_result_tmp (
	code varchar(20) NOT NULL,
	"start" timestamptz NOT NULL,
	"end" timestamptz NOT NULL,
	slow numeric(20, 10) NOT NULL,
	fast numeric(20, 10) NOT NULL,
	resolution varchar(20) NOT NULL,
	smoothing numeric(20, 10) NOT NULL,
	ema_period numeric(20, 10) NOT NULL,
	closing_strategy varchar(50) NOT NULL,
	profit_and_loss numeric(20, 10) NULL,
	opening_strategy varchar(50) NOT NULL,
	"period" varchar(50) NOT NULL,
	CONSTRAINT macd_simulation_result_tmp_pk PRIMARY KEY (code, start, "end", slow, fast, resolution, smoothing, ema_period, closing_strategy, opening_strategy, period)
);


macd_simulation_result_sb


insert into macd_simulation_result_sb 
(  "start" ,  "end" ,  slow ,  fast ,  resolution ,  smoothing ,  ema_period  ,  closing_strategy ,  profit_and_loss ,  opening_strategy ,  "period" )

select n."start" ,  n."end" ,  n.slow ,  n.fast ,  n.resolution ,  n.smoothing ,  n.ema_period  ,  n.closing_strategy ,  n.profit_and_loss ,  n.opening_strategy ,  n."period" from 
macd_simulation_result_tmp n left join macd_simulation_result_sb o on 
n.start = o.start and
n."end" = o."end" and
n.slow = o.slow and 
n.fast = o.fast and
n.resolution = o.resolution and
n.smoothing = o.smoothing and   
n.ema_period = o.ema_period and
n.closing_strategy = o.closing_strategy and
n.opening_strategy = o.opening_strategy and
n.period = o.period
where n.code = 'SB' and 
o.start is null and
o."end" is null and
o.slow is null and 
o.fast is null and
o.resolution is null and
o.smoothing is null and   
o.ema_period is null and
o.closing_strategy is null and
o.opening_strategy is null
order by n."start" 

select n."start" ,  n."end" ,  n.slow ,  n.fast ,  n.resolution ,  n.smoothing ,  n.ema_period  ,  n.closing_strategy ,  n.profit_and_loss ,  n.opening_strategy ,  n."period" from  macd_simulation_result_tmp n left join macd_simulation_result_hk50 o on  n.start = o.start and n."end" = o."end" and n.slow = o.slow and  n.fast = o.fast and n.resolution = o.resolution and n.smoothing = o.smoothing and    n.ema_period = o.ema_period and n.closing_strategy = o.closing_strategy and n.opening_strategy = o.opening_strategy and n.period = o.period where n.code = 'HK50' and  o.start is null and o."end" is null and o.slow is null and  o.fast is null and o.resolution is null and o.smoothing is null and    o.ema_period is null and o.closing_strategy is null and o.opening_strategy is null



truncate table macd_simulation_result_tmp
select * from macd_simulation_result_tmp where code = 'SB' order by start desc
select * from market_price_eurusd_daily order by time desc

select fi interval_min  from market_price order by time desc limit 20 
select *  from market_price where interval_min = 43200


select * from market_price_ixic_daily order by time desc

CREATE TABLE public.market_price_ixic_daily (
	id bigserial NOT NULL,
	high numeric(20, 10) NULL,
	low numeric(20, 10) NULL,
	"close" numeric(20, 10) NULL,
	"open" numeric(20, 10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_ixic_daily_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_ixic_daily_1 ON public.market_price_ixic_daily USING btree ("time");


CREATE TABLE public.market_price_ixic_every_five_minute (
	id bigserial NOT NULL,
	high numeric(20, 10) NULL,
	low numeric(20, 10) NULL,
	"close" numeric(20, 10) NULL,
	"open" numeric(20, 10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_ixic_every_minute_five_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_ixic_every_five_minute_1 ON public.market_price_ixic_every_five_minute USING btree ("time");


CREATE TABLE public.market_price_ixic_every_minute (
	id bigserial NOT NULL,
	high numeric(20, 10) NULL,
	low numeric(20, 10) NULL,
	"close" numeric(20, 10) NULL,
	"open" numeric(20, 10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_ixic_every_minute_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_ixic_every_minute_1 ON public.market_price_ixic_every_minute USING btree ("time");

CREATE TABLE public.market_price_ixic_hourly (
	id bigserial NOT NULL,
	high numeric(20, 10) NULL,
	low numeric(20, 10) NULL,
	"close" numeric(20, 10) NULL,
	"open" numeric(20, 10) NULL,
	"time" timestamptz NULL,
	CONSTRAINT market_price_ixic_hourly_pkey PRIMARY KEY (id)
);
CREATE INDEX market_price_ixic_hourly_1 ON public.market_price_ixic_hourly USING btree ("time");

insert into market_price_ixic_daily(id, high, low, "close", "open", "time") select id, high, low, "close", "open", "time"  from market_price where code = 'IXIC' and interval_min = 1440;
insert into market_price_ixic_hourly(id, high, low, "close", "open", "time") select id, high, low, "close", "open", "time"  from market_price where code = 'IXIC' and interval_min = 60;
insert into market_price_ixic_every_minute(id, higendh, low, "close", "open", "time") select id, high, low, "close", "open", "time" from market_price where code = 'IXIC' and interval_min = 1;


select id, high, low, "close", "open", "time"  from market_price where code = 'IXIC' and interval_min = 1440 order by time desc 

select * from market_price_ixic_hourly where time >= '2022-02-04'
select * from market_price_ixic_hourly order by time desc 
where time >= '2022-02-04'

select * from market_price_ixic_every_minute mpiem  order by time desc
select * from market_price_ixic_hourly mpiem  order by time desc
select * from market_price_ixic_daily order by time desc
select * from market_price_xauusd_daily order by time desc
select * from market_price_zg_daily order by time desc
select * from market_price_zg_every_minute mpzem  order by time desc
select * from market_price_cadusd_every_minute mpzem  order by time desc
select * from market_price_us500_every_minute mpzem  order by time desc
select * from market_price_zg_every_minute mpzem where time <= '2022-05-08' order by time d esc
select * from market_price_xauusd_hourly order by time desc
select * from market_price_xauusd_every_minute mpxem order by time desc
select time  at time zone 'Asia/Hong_Kong'  from market_price_hk50_every_minute mphem  order by time desc
select * from market_price_ixic_daily where time
select * from market_price_ixic_daily  order by time desc
select * from market_price_xauusd_daily  order by time desc

select * from market_price_xauusd_every_minute order by time desc 
select * from market_price_xauusd_hourly where time >= '2018-05-09' order by time desc


SELECT  tablename FROM pg_catalog.pg_tables WHERE schemaname != 'pg_catalog' and schemaname != 'information_schema' and tablename like 'vendor_market_price_%'

select * from vendor_market_price_eth order by time desc
select time at time zone 'Asia/Hong_Kong' from vendor_market_price_hk50 where interval_min = 1 order by time desc 
select * from vendor_market_price_zg where interval_min = 1 order by time desc

