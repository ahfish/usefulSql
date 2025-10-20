SHOW TABLES 

select * from ctrader_market_price_us500_daily order by time desc;

select * from marketPrice.main.ctrader_market_price_gbpjpy_hourly order by time asc

select * from marketPrice.main.ctrader_market_price_gbpjpy_every_fifteen_minute order by time asc


select * from marketPrice.main.market_price_gbpjpy_hourly order by time desc

select * from marketPrice.main.market_price_gbpjpy_every_fifteen_minute order by time asc



select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_FIFTEEN_MINUTE_20220101T000000_20250927T000000_99.0.parquet') where  "end" > '2021-12-31 21:45:00'
LastTrendTime=[2021-12-31T21:45:00Z] StartTrendTime=[2021-10-21T09:30:00Z]

LastTrendTime=[2017-12-29T21:00:00Z] StartTrendTime=[2017-07-04T13:00:00Z]
select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20180101T000000_20250927T000000_99.0.parquet') where  trendType = 'Trend' and  "end" > '2017-12-29 21:00:00' and abs(scope) >= slopeLevel99 and abs(diff) > breakingLevel99 order by start

select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20180101T000000_20250927T000000_99.0.parquet') where  trendType = 'Trend' 

create or replace view highLowPerWeekGbpjpyHourly_v as 
select max(high) highest, min(low) lowest, EXTRACT(YEAR FROM "time") "year", EXTRACT(WEEK FROM "time") "week" from marketPrice.main.market_price_gbpjpy_hourly group by EXTRACT(YEAR FROM "time"), EXTRACT(WEEK FROM "time")

create or replace view highLowPerWeekGbpjpyHourlySummary_v as
select v."year", v."week", 
v.highest, 
v.lowest,
h."time" hTime,
l."time" lTime,
EXTRACT(ISODOW FROM  h."time") hWeekDay,
EXTRACT(ISODOW FROM  l."time") lWeekDay
from highLowPerWeekGbpjpyHourly_v v 
left join marketPrice.main.market_price_gbpjpy_hourly h on
EXTRACT(YEAR FROM h."time") = v."year" and
EXTRACT(WEEK FROM h."time") = v."week" and
h.high = v.highest
left join marketPrice.main.market_price_gbpjpy_hourly l on
EXTRACT(YEAR FROM l."time") = v."year" and
EXTRACT(WEEK FROM l."time") = v."week" and
l.low = v.lowest


select weekDay, sum(cnt) cnt from (
select lWeekDay weekDay, count(1) cnt from highLowPerWeekGbpjpyHourlySummary_v group by lWeekDay
union
select hWeekDay weekDay, count(1) cnt from highLowPerWeekGbpjpyHourlySummary_v group by hWeekDay
) group by weekDay order by cnt


create or replace view highLowPerDateGbpjpyHourly_v as
select max(high) highest, min(low) lowest,  strftime("time", '%Y-%m-%d') "date" from marketPrice.main.market_price_gbpjpy_hourly group by strftime("time", '%Y-%m-%d')

create or replace view highLowPerWeekGbpjpyPerDateSummary_v as
select v."date", 
v.highest, 
v.lowest,
h."time" hTime,
l."time" lTime,
EXTRACT(HOUR FROM h."time") hHour,
EXTRACT(HOUR FROM l."time") lHour
from highLowPerDateGbpjpyHourly_v v 
left join marketPrice.main.market_price_gbpjpy_hourly h on
strftime(h."time", '%Y-%m-%d') = v."date" and
h.high = v.highest
left join marketPrice.main.market_price_gbpjpy_hourly l on
strftime(l."time", '%Y-%m-%d') = v."date" and
l.low = v.lowest


select "hour", sum(cnt) cnt from (
select hHour "hour", count(1) cnt from highLowPerWeekGbpjpyPerDateSummary_v group by hHour
union
select lHour "hour", count(1) cnt from highLowPerWeekGbpjpyPerDateSummary_v group by lHour
) group by "hour" order by cnt



create or replace view highLowPerDateGbpusdHourly_v as
select max(high) highest, min(low) lowest,  strftime("time", '%Y-%m-%d') "date" from marketPrice.main.market_price_gbpusd_hourly group by strftime("time", '%Y-%m-%d');

create or replace view highLowPerWeekGbpusdPerDateSummary_v as
select v."date", 
v.highest, 
v.lowest,
h."time" hTime,
l."time" lTime,
EXTRACT(HOUR FROM h."time") hHour,
EXTRACT(HOUR FROM l."time") lHour
from highLowPerDateGbpusdHourly_v v 
left join marketPrice.main.market_price_gbpusd_hourly h on
strftime(h."time", '%Y-%m-%d') = v."date" and
h.high = v.highest
left join marketPrice.main.market_price_gbpusd_hourly l on
strftime(l."time", '%Y-%m-%d') = v."date" and
l.low = v.lowest


select "hour", sum(cnt) cnt from (
select hHour "hour", count(1) cnt from highLowPerWeekGbpusdPerDateSummary_v group by hHour
union
select lHour "hour", count(1) cnt from highLowPerWeekGbpusdPerDateSummary_v group by lHour
) group by "hour" order by cnt



create or replace view highLowPerDateEurusdHourly_v as
select max(high) highest, min(low) lowest,  strftime("time", '%Y-%m-%d') "date" from marketPrice.main.market_price_eurusd_hourly group by strftime("time", '%Y-%m-%d');

create or replace view highLowPerWeekEurusdPerDateSummary_v as
select v."date", 
v.highest, 
v.lowest,
h."time" hTime,
l."time" lTime,
EXTRACT(HOUR FROM h."time") hHour,
EXTRACT(HOUR FROM l."time") lHour
from highLowPerDateEurusdHourly_v v 
left join marketPrice.main.market_price_eurusd_hourly h on
strftime(h."time", '%Y-%m-%d') = v."date" and
h.high = v.highest
left join marketPrice.main.market_price_eurusd_hourly l on
strftime(l."time", '%Y-%m-%d') = v."date" and
l.low = v.lowest


select "hour", sum(cnt) cnt from (
select hHour "hour", count(1) cnt from highLowPerWeekEurusdPerDateSummary_v group by hHour
union
select lHour "hour", count(1) cnt from highLowPerWeekEurusdPerDateSummary_v group by lHour
) group by "hour" order by cnt






create or replace view highLowPerDateAudusdHourly_v as
select max(high) highest, min(low) lowest,  strftime("time", '%Y-%m-%d') "date" from marketPrice.main.market_price_audusd_hourly group by strftime("time", '%Y-%m-%d');

create or replace view highLowPerWeekAudusdPerDateSummary_v as
select v."date", 
v.highest, 
v.lowest,
h."time" hTime,
l."time" lTime,
EXTRACT(HOUR FROM h."time") hHour,
EXTRACT(HOUR FROM l."time") lHour
from highLowPerDateAudusdHourly_v v 
left join marketPrice.main.market_price_audusd_hourly h on
strftime(h."time", '%Y-%m-%d') = v."date" and
h.high = v.highest
left join marketPrice.main.market_price_audusd_hourly l on
strftime(l."time", '%Y-%m-%d') = v."date" and
l.low = v.lowest


select "hour", sum(cnt) cnt from (
select hHour "hour", count(1) cnt from highLowPerWeekAudusdPerDateSummary_v group by hHour
union
select lHour "hour", count(1) cnt from highLowPerWeekAudusdPerDateSummary_v group by lHour
) group by "hour" order by cnt






select distinct trendType from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_FIFTEEN_MINUTE_20221230T000000_20230110T000000_95.0.parquet')
select *, (high-low) from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_FIFTEEN_MINUTE_20221230T000000_20230110T000000_99.0.parquet') where trendType= 'NormalizedTrend' order by start
select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_FIFTEEN_MINUTE_20220101T000000_20250927T000000_99.0.parquet') 


select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_FIFTEEN_MINUTE_20220101T000000_20250927T000000_99.0.parquet') where  "end" > '2021-12-31 21:45:00'
LastTrendTime=[2021-12-31T21:45:00Z] StartTrendTime=[2021-10-21T09:30:00Z]

LastTrendTime=[2017-12-29T21:00:00Z] StartTrendTime=[2017-07-04T13:00:00Z]
select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20180101T000000_20250927T000000_99.0.parquet') where  trendType = 'Trend' and  "end" > '2017-12-29 21:00:00' and abs(scope) >= slopeLevel99 order by start

--------------------------------------------------------------------------------------------------------------

create or replace view market_price_gbpjpy_weekly_v as
select extract(YEAR FROM "time") || '-' || strftime('%W', CAST(time as date)) grp, 
max(high) high, 
min(low) low,
arg_max(time,"high") highTime,
arg_min(time,"low") lowTime,
arg_max(high,"time") lastHigh, 
arg_max(low,"time") lastLow
from marketPrice.main.market_price_gbpjpy_hourly group by
extract(YEAR FROM "time") || '-' || strftime('%W', CAST(time as date))

select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20180101T000000_20250927T000000_99.0.parquet') main where "high" <= 0 or "low" <= 0
select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20181210T000000_20250927T000000_99.0.parquet') main where "high" <= 0 or "low" <= 0

=---------------------------------=---------------------------------=---------------------------------=---------------------------------=---------------------------------

create or replace view gbpjpy_one_hour_reduce_v as 
select extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date)) grp,
main.high, 
main.low, 
main."start",
main."end",
main.breakingLevel99,
abs(main.diff) diff,
abs(main."scope") "scope",
main.slopeLevel99,
main.trendDirection,

(select max(high) from 
(select high from marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date)) 
and m.time > main."end" and main."end" + interval 48 hour > m.time order by "time"
)
) as weekHighAfter,

(select min(low) from 
(select low from marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date))
and m.time > main."end" and main."end" + interval 48 hour > m.time order by "time"
)
) as weekLowAfter,

(select arg_max(time, high) from 
(select high, "time" from  marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date)) 
and m.time > main."end" and main."end" + interval 48 hour > m.time order by "time"
)
) as highTime,

(select arg_min(time, low) from 
(select low, "time" from  marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date)) 
and m.time > main."end" and main."end" + interval 48 hour > m.time order by "time"
)
) as lowTime,

 from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20181210T000000_20250927T000000_99.0.parquet') main where 
trendType = 'Trend' and 
abs(diff) >= breakingLevel99 + 0.05
--and abs("scope") >= slopeLevel99
and
endTimeWeekDay in (
'MONDAYaaa','TUESDAY', 'WEDNESDaaaaaAY'
)
order by extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date));



create or replace view gbpjpy_one_hour_reduce_check_v as
select *,
case 
	when trendDirection = 'BULLISH' then low < weekLowAfter
	else high > weekHighAfter
end as priceCheck
from gbpjpy_one_hour_reduce_v where grp >= '2019-04';

select count(1) "all", 
(select count(1) from gbpjpy_one_hour_reduce_check_v group by priceCheck having priceCheck is true) win,
(select count(1) from gbpjpy_one_hour_reduce_check_v group by priceCheck having priceCheck is true)/count(1) * 100 "percentage"
from gbpjpy_one_hour_reduce_check_v 



------------------------------------------------------------------
select * from market_price_gbpjpy_every_fifteen_minute order by time asc
where high <= 0 or low <= 0 order by time 

------------------------------------------------------------------------------------------------------------


select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_FIFTEEN_MINUTE_20210901T000000_20250927T000000_99.0.parquet')



create or replace view gbpjpy_15m_reduce_v as 
select extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date)) grp,
main.high, 
main.low, 
main."start",
main."end",
abs(main.diff) diff,
abs(main."scope") "scope",
main.slopeLevel90,
main.breakingLevel90,
main.trendDirection,

(select max(high) from 
(select high from marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date)) 
and m.time > main."end" and main."end" + interval 6 hour > m.time order by "time" 
)
) as weekHighAfter,

(select min(low) from 
(select low from marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date))
and m.time > main."end" and main."end" + interval 6 hour > m.time order by "time"
)
) as weekLowAfter,

(select arg_max(time, high) from 
(select high, "time" from  marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date)) 
and m.time > main."end" and main."end" + interval 6 hour > m.time order by "time"
)
) as highTime,

(select arg_min(time, low) from 
(select low, "time" from  marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date)) 
and m.time > main."end" and main."end" + interval 6 hour > m.time order by "time"
)
) as lowTime,

 from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_FIFTEEN_MINUTE_20210901T000000_20250927T000000_99.0.parquet') main where 
trendType = 'Trend' and 
abs(diff) >= breakingLevel99 + 0.05
and
endTimeWeekDay in (
'TUESDAY'
)
order by extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date));




create or replace view gbpjpy_15m_reduce_check_v as
select *,
case 
	when trendDirection = 'BULLISH' then low < weekLowAfter and weekHighAfter > High
	else high > weekHighAfter and weekLowAfter < Low
end as priceCheck
from gbpjpy_15m_reduce_v where grp >= '2021-10';



select
(select count(1) from gbpjpy_15m_reduce_check_v group by priceCheck HAVING priceCheck  = true) as success,
(select count(1) from gbpjpy_15m_reduce_check_v group by priceCheck HAVING priceCheck  = false) as fail,
(select count(1) from gbpjpy_15m_reduce_check_v ) as total,
(select count(1) from gbpjpy_15m_reduce_check_v group by priceCheck HAVING priceCheck  = true)/(select count(1) from gbpjpy_15m_reduce_check_v ) *100 as ratio


select * from gbpjpy_15m_reduce_check_v where priceCheck  = true order by start

------------------------------------------------------------------------------------------------------------

create or replace view gbpjpy_one_hour_reduce_v as
select extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date)) grp,
main.high,
main.low,
main."start",
main."end",
main.breakingLevel99,
abs(main.diff) diff,
abs(main."scope") "scope",
main.slopeLevel99,
main.trendDirection,

(select max(high) from
(select high from marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date))
and m.time > main."end" order by "time" limit 24
)
) as weekHighAfter,

(select min(low) from
(select low from marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date))
and m.time > main."end" order by "time"  limit 24
)
) as weekLowAfter,

(select arg_max(time, high) from
(select high, "time" from  marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date))
and m.time > main."end" order by "time"  limit 24
)
) as highTime,

(select arg_min(time, low) from
(select low, "time" from  marketPrice.main.market_price_gbpjpy_hourly m where
extract(YEAR FROM m."time") || '-' || strftime('%W', CAST(m.time as date)) = extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date))
and m.time > main."end" order by "time" limit 24
)
) as lowTime,

 from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20170901T000000_20250927T000000_99.0.parquet') main where
trendType = 'Trend' and
abs(diff) >= breakingLevel99 
and endTimeWeekDay in (
'TUESDAY',
--'MONDAY'
--'WEDNESDAY'
)
order by extract(YEAR FROM main."end") || '-' || strftime('%W', CAST(main."end" as date));



create or replace view gbpjpy_one_hour_reduce_check_v as
select *,
case
	when trendDirection = 'BULLISH' then low < weekLowAfter and weekHighAfter > high
	else high > weekHighAfter and weekLowAfter < low
end as priceCheck
from gbpjpy_one_hour_reduce_v where grp >= '2018-01';


select
(select count(1) from gbpjpy_one_hour_reduce_check_v group by priceCheck HAVING priceCheck  = true) as success,
(select count(1) from gbpjpy_one_hour_reduce_check_v group by priceCheck HAVING priceCheck  = false) as fail,
(select count(1) from gbpjpy_one_hour_reduce_check_v ) as total,
(select count(1) from gbpjpy_one_hour_reduce_check_v group by priceCheck HAVING priceCheck  = true)/(select count(1) from gbpjpy_one_hour_reduce_check_v ) *100 as ratio


-------------------




create or replace view main_normalized as
select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20170901T000000_20250927T000000_99.0.parquet') where trendType = 'NormalizedTrend' 


select sameDirectionGount from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20170901T000000_20250927T000000_99.0.parquet') where trendType = 'NormalizedTrend' group by sameDirectionGount having count(1) == 1



create or replace view sameDirectionAgg as
select 
min_by(startPrice, start) sameDirectionAggStartPrice,
max_by(endPrice, start) sameDirectionAggEndPrice,
max_by(lastDirection, lastDirection) sameDirectionAggLastDirection,
max_by(high, high) sameDirectionAggHigh,
min_by(low, low) sameDirectionAggLow,
count(1) wave,
sameDirectionGount as sameDirectionAggSameDirectionGount 
from main_normalized where 
trendType = 'NormalizedTrend' and 
lastDirection == newDirection
group by sameDirectionGount 

select * from sameDirectionAgg

select * from sameDirectionAgg

select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20170901T000000_20250927T000000_99.0.parquet') where trendType = 'NormalizedTrend' and lastDirection != newDirection
select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20170901T000000_20250927T000000_99.0.parquet') where trendType = 'Trend' and lastDirection != newDirection

select * from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20170901T000000_20250927T000000_99.0.parquet') where sameDirectionGount  = 2

select count(distinct sameDirectionGount) from read_parquet('/home/ahfish/git/marketExecutor/marketExecutorRunner/GBPJPY_ONE_HOUR_20170901T000000_20250927T000000_99.0.parquet') where trendType = 'NormalizedTrend' and lastDirection != newDirection

select 
main .*,
sameDirectionAgg.sameDirectionAggSameDirectionGount,
sameDirectionAgg.sameDirectionAggEndPrice,
sameDirectionAggLastDirection,
sameDirectionAggHigh,
sameDirectionAggLow,
wave
from main_normalized main left join sameDirectionAgg on main.sameDirectionGount = sameDirectionAgg.sameDirectionAggSameDirectionGount
where main .trendType = 'NormalizedTrend' and main.lastDirection != main.newDirection





