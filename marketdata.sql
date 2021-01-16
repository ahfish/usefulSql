
--grant select on market_price_asc_view to web_anon
delete from market_price mp where interval_min =43200
ALTER TABLE market_price
DROP CONSTRAINT market_price_pkey;

ALTER TABLE market_price add PRIMARY KEY 
(id, code, interval_min)

select * from market_price limit 2
select * from market_price where id = 1593615600

select * from market_price mp  where code = 'EURUSD' and interval_min = 1 and "time" > '2017-12-11'  and  "time" < '2017-12-12 05:59' order by time 
select * from market_price mp  where code = 'CADUSD' and interval_min = 1440  and "time" > '1977-12-01'  and  "time" < '2017-12-12 05:59'  order by time asc
select * from market_price mp  where code = 'CADUSD' and interval_min = 1  order by time desc
select * from market_price mp  where code = 'JPYUSD' and interval_min = 1  order by time 
select * from market_price mp  where code = 'USDJPY' and interval_min = 1  order by time
select * from market_price mp  where code = 'GBPUSD' and interval_min = 1  order by time
select * from market_price mp  where code = 'ZG' and interval_min = 1  order by time desc

select * from market_price mp  where code = 'EURUSD' and interval_min = 1440  order by time
select * from market_price mp  where code = 'NZDUSD' and interval_min = 1  order by time
select * from market_price mp  where code = 'NZDUSD' and interval_min = 1440  order by time
select * from market_price mp  where code = 'JPYUSD' and interval_min = 1440  order by time
select * from market_price mp  where code = 'USDJPY' and interval_min = 1440  order by time
select * from market_price mp  where code = 'CHFUSD' and interval_min = 1440  order by time
select * from market_price mp  where code = 'CHFUSD' and interval_min = 1440  order by time desc
select * from market_price mp  where code = 'ZG' and interval_min = 1440  order by time
select * from market_price mp  where code = 'ZG' and interval_min = 1440  order by time desc

select * from market_price mp  where code = 'CHFUSD' and interval_min = 1  order by time desc
select * from market_price mp  where code = 'ETH' and interval_min = 1  order by time desc
select * from market_price mp  where code = 'BTC' and interval_min = 1  order by time


select * from market_price mp where id = 1514844060 and code = 'NZDUSD' 
delete from market_price mp where id = 1514844060 and code = 'NZDUSD'
select * from market_price mp  where code = 'AUDUSD' and interval_min = 1440  order by time asc
select * from market_price mp  where code = 'NZDUSD' and interval_min = 1  order by time desc 
select * from market_price mp  where code = 'JPYUSD' and interval_min = 1  order by time desc
select * from market_price mp  where code = 'ZI' and interval_min = 1440  order by time
select * from market_price mp  where code = 'ZI' and interval_min = 1440  order by time desc
select * from market_price mp  where code = 'EURUSD' and interval_min = 1440  order by time 
select * from market_price mp  where code = 'EURUSD' and interval_min = 1440  order by time 
java 


30 04:01 -> 2020-12-05 05:59:00
select * from market_price mp  where code = 'CADUSD' and interval_min = 1 and "time" > '2020-11-30'  and  "time" < '2020-12-06' order by time
select * from market_price mp  where code = 'CADUSD' and interval_min = 1 and id <= 1546029000 and high = 0 and low = 0 and "close" = 0 and "open" =0
delete from market_price mp  where code = 'CADUSD' and interval_min = 1 and id <= 1546029000 and high = 0 and low = 0 and "close" = 0 and "open" =0

select * from market_price mp  where code = 'T'  and interval_min = 1440 

select * from market_price mp  where code = 'ZG' and interval_min = 1 order by time desc
select * from market_price mp  where code = 'CADUSD' and interval_min = 1 order by time desc
select * from market_price mp  where code = 'CADUSD' and interval_min = 1440 order by time
select * from market_price mp  where code = 'AUDUSD' and interval_min = 1 order by time desc
select * from market_price mp  where code = 'GBPUSD' and interval_min = 1 order by time desc
select * from market_price mp  where code = 'GBPUSD' and interval_min = 1440 order by time 
select * from market_price mp  where code = 'JPYUSD' and interval_min = 1  and id <= 1546029000 order by time\
select * from market_price mp  where code = 'CHFUSD' and interval_min = 1  order by time
select * from market_price mp  where code = 'CHFUSD' and interval_min = 1440 order by time
select * from market_price mp  where code = 'CHFUSD' and interval_min = 1440 order by time
select * from market_price mp  where code = 'CHFUSD' and interval_min = 1 order by time
select * from market_price mp  where code = 'BTC' and interval_min = 1 order by time desc
select * from market_price mp  where code = 'ETH' and interval_min = 1 order by time desc

select * from market_price mp  where code = 'BTC' and interval_min = 1440 order by time desc
select * from market_price mp  where code = 'ETH' and interval_min = 1440 order by time desc

select * from market_price mp  where code = 'USDJPY' and interval_min = 1 order by time desc
select * from market_price mp  where code = 'USDJPY' and interval_min = 1440 order by time desc

curl -X PATCH http://127.0.01:8081/marketExecutor/fastDownload/USDJPY/from/2018-05-03/to/2021-01-06/with/ONE_MINUTE -H accept: application/json -o USDJPY.log

--delete from market_price mp  where code = 'JPYUSD' and interval_min = 1  and id <= 1546029000 

select * from market_price mp  where code = 'CHFUSD' and interval_min = 1440  and time >= '1989-01-01' and time <='1989-12-31'
select * from market_price mp  where code = 'ZG' and interval_min = 1440  and time >= '2015-01-01' and time <='2015-12-31'
select * from market_price mp  where code = 'CHFUSD' and interval_min = 1440 order by time desc
select * from market_price mp  where code = 'CHFUSD' and interval_min = 1 order by time desc

select * from simulation s
select * from financial_detail fd 
truncate financial_detail
select * from financial_detail
select count(1) from financial_detail fd
select * from market_price mp  where code = 'CADUSD' and interval_min = 1 and "time" > '2019-01-03'  and  "time" < '2019-01-04' order by time
select * from market_price mp  where code = 'CADUSD' and interval_min = 1440 order by time 

select * from macd_cache where id = 631843200
select * from macd_cache where code = 'CADUSD' and slow = 12 and fast = 26 and resolution = 'ONE_MINUTE' and smoothing =2 and ema_period = 27 order by time
delete from macd_cache where code = 'CADUSD' and slow = 12 and fast = 26 and resolution = 'ONE_MINUTE' and smoothing =2 and ema_period = 27
select * from macd_cache where code = 'CADUSD' and slow = 12 and fast = 26 and resolution = 'DAY' and smoothing =2 and ema_period = 27 order by time
delete from macd_cache where code = 'CADUSD' and slow = 12 and fast = 26 and resolution = 'DAY' and smoothing =2 and ema_period = 27 order by time

drop table macd_cache
CREATE TABLE public.macd_cache (
	start_time timestamptz not NULL,
	code varchar(20) NOT NULL,
	slow numeric(20,10) not NULL,
	fast numeric(20,10) not NULL,
	resolution varchar(20) NOT NULL,
	smoothing numeric(20,10) not NULL,
	ema_period numeric(20,10) not NULL,
	id numeric(30,10) not NULL,
	"time" timestamptz not NULL,
	short_ema numeric(30,10) NULL,
	long_ema numeric(30,10) NULL,
	diff numeric(30,10) NULL,
	dem numeric(30,10) NULL,
	CONSTRAINT macd_cache_pkey PRIMARY KEY (start_time, code, slow, fast, resolution, smoothing,ema_period,id )
);
CREATE INDEX macd_cache_idx_1 ON public.macd_cache USING btree (code);
CREATE INDEX macd_cache_idx_2 ON public.macd_cache USING btree (start_time, code, slow, fast, resolution, smoothing,ema_period, "time");
CREATE INDEX macd_cache_idx_3 ON public.macd_cache USING btree (start_time, code, slow, fast, resolution, smoothing,ema_period);

select count(1) from macd_cache


--truncate table macd_simulation_result

select * from macd_simulation_result where fast = 26 and resolution = 'DAY' and smoothing = 2 and ema_period = 9 order by profit_and_loss 
select * from macd_simulation_result where code = 'CHFUSD' order by profit_and_loss desc

select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss , start from macd_simulation_result where start = '2019-01-01'
select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss , start from macd_simulation_result where code = 'CADUSD' and start = '2019-01-01' order by profit_and_loss  desc

select a.* from macd_simulation_result a,
(
select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss , start from macd_simulation_result where code = 'CADUSD' and start = '2019-01-01' order by profit_and_loss  desc limit 1
) b 
where   (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = b.parameter
order by start desc 



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


select  * from macd_simulation_result where 
code = 'AUDUSD' and 
"end" = '2019-12-31' and
resolution = 'DAY' 
order by pl desc



select (slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss as pl from macd_simulation_result where 
code = 'AUDUSD' and 
start >= '2018-01-01' and
"end" <= '2019-12-31' and
resolution = 'DAY' 
--group by slow ,fast ,smoothing ,ema_period, closing_strategy
order by pl desc

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
	b.rownum = 7
order by 
	a.start desc
	
	


select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, sum(profit_and_loss), avg(profit_and_loss)  from macd_simulation_result where 
code = 'CADUSD' and 
start >= '2011-01-01' and 
profit_and_loss > 0
group by (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) having count(1) = 10 order by sum(profit_and_loss) desc  


//20 yrs lost 1 CADUSD
select * from macd_simulation_result where
(code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = ('CADUSD','DAY',30.0000000000,40.0000000000,2.0000000000,40.0000000000,'WITH_SHORT_RANGE_20')

select * from macd_simulation_result where
(code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = ('CADUSD','DAY',35.0000000000,40.0000000000,2.0000000000,40.0000000000,'WITH_SHORT_RANGE_30')

  
(code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = ('CADUSD','DAY',5.0000000000,10.0000000000,2.0000000000,5.0000000000,'ORIGINAL')



select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, start, "end", profit_and_loss as pl from macd_simulation_result where 
code = 'CADUSD' and 
start = '2019-01-01' and 
resolution = 'DAY' 
--group by slow ,fast ,smoothing ,ema_period, closing_strategy
order by pl desc
limit 1
) b where  (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = b.parameter
and start = '2020-01-01' 

select a.* from macd_simulation_result a,
(
select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss as pl from macd_simulation_result where 
code = 'AUDUSD' and 
start = '2019-01-01' and 
resolution = 'DAY' 
--group by slow ,fast ,smoothing ,ema_period, closing_strategy
order by pl desc
limit 1
) b where  (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = b.parameter
and start = '2020-01-01' 
union 
select a.* from macd_simulation_result a,
(
select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss as pl from macd_simulation_result where 
code = 'AUDUSD' and 
(start = '2018-01-01' )and 
resolution = 'DAY' 
--group by slow ,fast ,smoothing ,ema_period, closing_strategy
order by pl desc
limit 1
) b where  (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = b.parameter
and start = '2019-01-01' 
union 
select a.* from macd_simulation_result a,
(
select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, profit_and_loss as pl from macd_simulation_result where 
code = 'AUDUSD' and 
(start >= '2013-01-01' and start <= '2017-01-01'  )and 
resolution = 'DAY' 
--group by slow ,fast ,smoothing ,ema_period, closing_strategy
order by pl desc
limit 1
) b where  (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = b.parameter
and start = '2018-01-01' 


select * from macd_simulation_result where start = '2011-01-01' and code = 'NZDUSD'

select * from macd_simulation_result a,
(
select (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) as g from macd_simulation_result where 
code = 'ZG' and 
start >= '2018-01-01' and
"end" <= '2019-12-31' and
resolution = 'DAY' 
group by code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy
order by avg(profit_and_loss)  desc
limit 1
 ) b 
where (code, resolution, slow ,fast ,smoothing ,ema_period, closing_strategy) = b.g
order by start desc


select (code, slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter  from macd_simulation_result where 
code = 'AUDUSD' and 
start >= '2015-01-01' and
"end" <= '2020-12-31' and
resolution = 'DAY' 
group by code, slow ,fast ,smoothing ,ema_period, closing_strategy
order by avg(profit_and_loss)  desc
limit 1


select (slow ,fast ,smoothing ,ema_period, closing_strategy) as parameter, avg(profit_and_loss) as pl from macd_simulation_result where 
code = 'AUDUSD' and 
start >= '2015-01-01' and
"end" <= '2020-12-31' and
resolution = 'DAY' 
group by slow ,fast ,smoothing ,ema_period, closing_strategy
order by pl desc


15.0000000000	20.0000000000	2.0000000000	5.0000000000	WITH_SHORT_RANGE_20	0.45458000000000000000

select * from macd_simulation_result where 
code = 'CADUSD' and 
slow = 5 and 
fast = 20 and 
smoothing =2 and 
ema_period = 10 and
closing_strategy = 'WITH_SHORT_RANGE_30' and 
start >= '2010-01-01'

select * from macd_simulation_result where 
code = 'CADUSD' and 
slow = 15 and 
fast = 20 and 
smoothing =2 and 
ema_period = 5 and
closing_strategy = 'WITH_SHORT_RANGE_20' and 
start = '2018-01-01'


select * from macd_simulation_result where 
code = 'CADUSD' and 
start = '2018-01-01'

--truncate table macd_simulation_result
drop table macd_simulation_result
CREATE TABLE public.macd_simulation_result (
    code  varchar(20) NULL,
    "start" timestamptz NULL,
    "end" timestamptz NULL,
    slow numeric(20,10) NULL,
    fast numeric(20,10) NULL,
    resolution varchar(20) NULL,
    smoothing numeric(20,10) NULL,
    ema_period numeric(20,10) NULL,
    closing_strategy varchar(20) NULL,
    profit_and_loss numeric(20,10) null,
    CONSTRAINT macd_simulation_result_pkey PRIMARY KEY (code, "start", "end", slow, fast, resolution,smoothing,ema_period,closing_strategy )
)



