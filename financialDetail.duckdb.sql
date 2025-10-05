
COPY (select * from financialDetail.main.InvestingComShares) 
TO '/home/ahfish/bin/yahoo/shareDetail.parquet' (FORMAT PARQUET);

select "Date", count(1) from "investing_share_in" group by "Date" order by "Date" desc
select "Date", count(1) from "investing_share_au" group by "Date" order by "Date" desc
select "Date", count(1) from "investing_share_ca" group by "Date" order by "Date" desc
select "Date", count(1) from "investing_share_us" group by "Date" order by "Date" desc
select "Date", count(1) from "investing_share_hk" group by "Date" order by "Date" desc
select "Date", count(1) from "investing_share_jp" group by "Date" order by "Date" desc
select "Date", count(1) from "investing_share_ge" group by "Date" order by "Date" desc
select "Date", count(1) from "investing_share_uk" group by "Date" order by "Date" desc
select "Date", count(1) from "investing_share_fr" group by "Date" order by "Date" desc


select distinct key from financialDetail.main.financial_detail_xnys where lower(key) like '%divi%' and exchangesymbol = 'ENB'
select * from financialDetail.main.financial_detail_xnys where lower(key) like '%divi%' and exchangesymbol = 'ENB' and key = 'DividendPerShare'
select distinct key from financialDetail.main.financial_detail_xnys where lower(key) like '%divi%' and exchangesymbol = 'ENB' 
select distinct key from financialDetail.main.financial_detail_xnys where exchangesymbol = 'ENB' and sourcedatatype = 'financialsummary'


select * from financialDetail.main.financial_detail_xnys

select * from financialDetail.main.financial_detail_xnys where lower(key) like '%cash%flow%' and sourcedatatype = 'key_ratios'

select distinct key,sourcedatatype from financialDetail.main.financial_detail_xnys where lower(key) like '%cash%flow%%op%' 

select Symbol from read_csv('/home/ahfish/Documents/Euronext_Equities_2025-10-03.csv') where Market like 'Euronext Paris%' or Market like 'Euronext Growth Paris%' 
select distinct Market from read_csv('/home/ahfish/Documents/Euronext_Equities_2025-10-03.csv') where Market like '%Paris%'

select * from financialDetail.main.financial_detail_xnys where sourcedatatype = 'operatingandefficiency' and exchangesymbol = 'VTEX'
select * from financialDetail.main.InvestingComShares where countryNameTranslated= 'Germany'
select distinct fundamentalMarketCap from financialDetail.main.InvestingComShares 
select distinct countryNameTranslated from financialDetail.main.InvestingComShares
select "Date", count(1) from "investing_share_us" group by "Date" order by "Date" desc

INSTALL postgres;
LOAD postgres;

INSTALL postgres_scanner;
LOAD postgres_scanner;
SELECT * FROM postgres_scan('dbname=financialDetail user=ahfish host=localhost');

SELECT * FROM postgres_scan(
    'host=localhost user=ahfish dbname=financialDetail port=5432',
      'public',
  'investing_share_us'
);

SELECT version();

SET postgres_conn = 'host=127.0.0.1 port=5432 user=127.0.0.1 dbname=financialDetail';
select * from financialDetail.main.investing_share_detail_hongkong where symbol = '0836'and valuetype ='Price to Book' order by date desc
select fundamentalmarketcap/last,* from financialDetail.main.investing_share_hk where symbol = '0836' order by date desc
select distinct key from financialDetail.main.financial_detail_xhkg where exchangesymbol = '00836' and datatype = 'annual' and lower(key) like '%return%'
select distinct key from financialDetail.main.financial_detail_xhkg where exchangesymbol = '00836' and datatype = 'annual' and lower(key) like '%total%'

select distinct key from financialDetail.main.financial_detail_xhkg where exchangesymbol = '03998' and datatype = 'annual' and lower(key) like '%eps%'


select distinct key from financialDetail.main.financial_detail_xhkg where exchangesymbol = '03998' and datatype = 'annual' and lower(key) like '%price%'
TotalEquity
       |
select  distinct exchange from investing_share_detail

select exchangesymbol,datadatestring,value from financialDetail.main.financial_detail_xhkg where exchangesymbol = '03998' and datatype = 'annual' and key = 'ReturnonEquityPercentage' and sourcedatatype = 'profitabilityandefficiency'
select exchangesymbol,datadatestring,value from financialDetail.main.financial_detail_xhkg where exchangesymbol = '03998' and datatype = 'annual' and key = 'BasicEPS' and sourcedatatype = 'financialsummary'
select exchangesymbol,datadatestring,value from financialDetail.main.financial_detail_xhkg where exchangesymbol = '03998' and datatype = 'annual' and key = 'TotalEquity' and sourcedatatype = 'financialsummary'
select exchangesymbol,datadatestring,value from financialDetail.main.financial_detail_xhkg where exchangesymbol = '03998' and datatype = 'annual' and key = 'PriceBook' and sourcedatatype = 'valuation'
select exchangesymbol,datadatestring,value from financialDetail.main.financial_detail_xhkg where exchangesymbol = '03998' and datatype = 'annual' and key = 'PriceEarnings'   and sourcedatatype = 'valuation'

select * from financialDetail.main.financial_detail_xtks
select * from investing_share_jp

select exchangesymbol,datadatestring,value from financialDetail.main.financial_detail_xhkg where datatype = 'annual' and key = 'ReturnonEquityPercentage' and sourcedatatype = 'profitabilityandefficiency'

select exchangesymbol,datadatestring,value from financialDetail.main.financial_detail_us where datatype = 'annual' and key = 'BasicEPS' and sourcedatatype = 'financialsummary'


select distinct key from financialDetail.main.financial_detail_xhkg where exchangesymbol = '00836' and datatype = 'annual' and lower(key) like '%share%'
select * from financialDetail.main.financial_detail_xhkg where exchangesymbol = '00836' and datatype = 'annual' and key = 'CommonSharesOutstanding' order 

select * from financialDetail.main.investing_share_detail_hongkong
select fundamentalmarketcap/last as outstanding_share, * from financialDetail.main.investing_share_hk where symbol = '0836' order by date desc

select symbol, date, last from financialDetail.main.investing_share_hk

SELECT symbol, Date, Last, fundamentalmarketcap/last as outstanding_share
FROM (
    SELECT 
        symbol, 
        Date, 
        Last,
        fundamentalmarketcap,
        ROW_NUMBER() OVER (PARTITION BY symbol ORDER BY Date DESC) AS rn
    FROM financialDetail.main.investing_share_hk
) t
WHERE rn = 1;

select exchangesymbol,datadatestring,value from (
select exchangesymbol,datadatestring,value, ROW_NUMBER() OVER (PARTITION BY exchangesymbol ORDER BY datadatestring DESC) AS rn  from financialDetail.main.financial_detail_xhkg where datatype = 'annual' and key = 'TotalEquity' and sourcedatatype = 'financialsummary'
) t
WHERE rn = 1;


select  from financialDetail.main.investing_share_hk group by symbol

select fundamentalmarketcap/last as outstanding_share, * from financialDetail.main.investing_share_hk where symbol = '3998' order by date desc
select exchangesymbol, datadatestring, count(value) from financial_detail_xnas where  lower(key) = 'dividendpershare' and datatype = 'annual' and exchangesymbol not in ('WHLR') group by exchangesymbol, datadatestring
having count(value) = 1

select exchangesymbol, datadatestring, count(value) from financial_detail_xnas where  lower(key) = 'dividendpershare' and datatype = 'annual' and exchangesymbol not in ('WHLR') and exchangesymbol = 'WING' group by exchangesymbol, datadatestring

select * from financial_detail_xnas where  lower(key) = 'dividendpershare' and datatype = 'annual' and exchangesymbol not in ('WHLR')  and exchangesymbol = 'WING' and datadatestring= '2016'

select exchangesymbol, datadatestring, key, sourcedatatype, case when (value is null) then 99999999 else value end  from financial_detail_xnas where  lower(key) = 'dividendpershare' and datatype = 'annual' and exchangesymbol not in ('WHLR')  and exchangesymbol = 'WING' and datadatestring= '2016'

select exchangesymbol, datadatestring, min(value) as value
from (
select exchangesymbol, datadatestring, key, datatype, sourcedatatype, case when (value is null) then 99999999 else value end as value from financial_detail_xnas
) a 
where lower(key) = 'dividendpershare' and datatype = 'annual' and exchangesymbol not in ('WHLR')  
group by exchangesymbol, datadatestring having min(value) != 99999999


create or replace view us_market_detail as
select 'xnas' as exchange, exchangesymbol, datadatestring, key, datatype, sourcedatatype, updatedon, value from financial_detail_xnas
union
select 'xnys' as exchange , exchangesymbol, datadatestring, key, datatype, sourcedatatype, updatedon, value from financial_detail_xnys 


create or replace view financial_detail_us as 
select 'xnys' as exchange, exchangesymbol,datadatestring,key,sourcedatatype,datatype,updatedon,value from financial_detail_xnys
union 
select 'xnas' as exchange, exchangesymbol,datadatestring,key,sourcedatatype,datatype,updatedon,value from financial_detail_xnas

select exchangesymbol,datadatestring,value from financialDetail.main.financial_detail_us where datatype = 'annual' and key = 'BasicEPS' and sourcedatatype = 'financialsummary'
select exchangesymbol,datadatestring, count(value) from financialDetail.main.financial_detail_us where datatype = 'annual' and key = 'BasicEPS' and sourcedatatype = 'financialsummary' group by exchangesymbol,datadatestring having count(value) > 1

select exchangesymbol, datadatestring, value from 
(select 
exchangesymbol,
datadatestring, 
value, 
ROW_NUMBER() OVER (PARTITION BY exchangesymbol ORDER BY updatedon DESC) AS rn 
from financialDetail.main.financial_detail_us where datatype = 'annual' and key = 'PriceBook' and sourcedatatype = 'valuation' 
) t where t.rn = 1




select * from financialDetail.main.financial_detail_xnas where datatype = 'annual' and key = 'PriceBook' and sourcedatatype = 'valuation' and exchangesymbol = 'CPB' and datadatestring = '2015'
union
select * from financialDetail.main.financial_detail_xnys where datatype = 'annual' and key = 'PriceBook' and sourcedatatype = 'valuation' and exchangesymbol = 'CPB' and datadatestring = '2015'



select * from financialDetail.main.financial_detail_us where datatype = 'annual' and key = 'PriceBook' and sourcedatatype = 'valuation' and exchangesymbol = 'CPB' and datadatestring = '2015'

select exchangesymbol, datadatestring, sourcedatatype from financialDetail.main.us_market_detail where  lower(key) = 'basiceps' and datatype = 'annual' and exchangesymbol not in ('WHLR')
group by exchangesymbol, datadatestring, sourcedatatype

select exchangesymbol, datadatestring, count(1) from financialDetail.main.us_market_detail where  lower(key) = 'cashflowfromoperatingactivitiesindirect' and datatype = 'annual' and sourcedatatype = 'cash_flow' and exchangesymbol not in ('WHLR')
group by exchangesymbol, datadatestring
select exchangesymbol, datadatestring, sourcedatatype, value, key from financialDetail.main.us_market_detail where  lower(key) = 'returnonequitypercentage' and datatype = 'annual' and exchangesymbol = 'VRNS' and datadatestring  = '2023'

select exchangesymbol, datadatestring, min(value) from financialDetail.main.us_market_detail where  lower(key) = 'cashflowfromoperatingactivitiesindirect' and datatype = 'annual' and sourcedatatype = 'cash_flow' and not ISNAN(value) and exchangesymbol not in ('WHLR')
group by exchangesymbol, datadatestring 


select * from financialDetail.main.financial_detail_xnas where  lower(key) = 'cashflowfromoperatingactivitiesindirect' and datatype = 'annual' and sourcedatatype = 'cash_flow' 
and exchangesymbol  in ('CSX') and datadatestring = '2018'

select * from financialDetail.main.investing_share_us
select * from index_detail where symbol = 'SP500'
financialDetail.main.InvestingComShares


select exchangesymbol, datadatestring, value, rn from 
(select 
exchangesymbol,
datadatestring, 
value, 
ROW_NUMBER() OVER (PARTITION BY exchangesymbol,datadatestring ORDER BY updatedon DESC) AS rn 
from financialDetail.main.financial_detail_us where datatype = 'annual' and key = 'PriceBook' and sourcedatatype = 'valuation' 
) t where 
exchangesymbol= 'COST'
and t.rn = 1


select * from financialDetail.main.financial_detail_us where datatype = 'annual' and key = 'PriceBook' and sourcedatatype = 'valuation' and exchangesymbol= 'COST'



select distinct key from financialDetail.main.financial_detail_xhkg where exchangesymbol = '03998' and  lower(key) like '%yield%'
select * from financialDetail.main.financial_detail_xhkg where exchangesymbol = '03998' and datatype = 'annual' and key= 'DividendPerShare'
select exchangesymbol, 
datadatestring, 
key, 
datatype, 
sourcedatatype, 
updatedon, from financialDetail.main.financial_detail_xhkg where exchangesymbol = '03998' and datatype = 'annual' and key= 'TotalYieldPercentage'


select 
exchangesymbol, 
datadatestring, 
key, 
datatype, 
sourcedatatype, 
updatedon,
value
from (
select 
exchangesymbol, 
datadatestring, 
key, 
datatype, 
sourcedatatype, 
updatedon,
value,
ROW_NUMBER() OVER (PARTITION BY exchangesymbol,datadatestring ORDER BY updatedon DESC) AS rn from 
financialDetail.main.financial_detail_xhkg where datatype = 'annual' and key= 'DividendPerShare' and value is not null
) t where t.rn =1

select distinct exchange from investing_share_detail 
select LPAD(CAST(symbol AS VARCHAR), 5, '0') exchangesymbol,name,sector,industry from investing_share_detail where exchange = 'Hong Kong'
select * from investing_share_detail_hongkong

select * from investing_share_hk

select 'ge' as exchange, exchangesymbol,datadatestring,key,sourcedatatype,datatype,updatedon,value from financial_detail_xwbo
select 'au' as exchange, exchangesymbol,datadatestring,key,sourcedatatype,datatype,updatedon,value from financial_detail_xasx


select 'ge' exchange, symbol exchangesymbol, Name, Date, Last,fundamentalmarketcap from financialDetail.main.investing_share_ge
select 'au' exchange, symbol exchangesymbol, Name, Date, Last,fundamentalmarketcap from financialDetail.main.investing_share_au
select * from financialDetail.main.investing_share_detail_australia
select distinct exchange from  investing_share_detail where exchange = 'Sydney'

select distinct exchange from  investing_share_detail where exchange = 'Sydney'
select * from  investing_share_detail where symbol= 'ADSGN'
select * from  investing_share_ge where symbol= 'ADSGN'
select distinct exchange from  investing_share_detail where country = 'Australia' and  upper(symbol) = 'ADSGN'
select * from financialDetail.main.InvestingComShares where countryNameTranslated = 'Canada'
select * from financialDetail.main.InvestingComShares  where countryNameTranslated = 'Australia'
select distinct morningStarExchangeId from MorningStarShares where countryNameTranslated = 'Canada'
select * from "MorningStarShares" where "morningStarExchangeId" = 'xtse';


select * from financialDetail.main.InvestingComShares where symbol = 'F'
 



delete from public."MorningStarShares" where "exchangeSymbol" in ('NYMT','FLIC','TFIN','KWE','CLEU','HMST','LANC','RSLS','BLUE','KIRK','PWOD','FARO','NWTN','FGF','VXRT','RMBL','XYLO','IKNA','VERV','PTMN','LSEA','CHX','IPA','RGLS','SSBK','JNVR','VSTE','GLYC','OB','MULN','CKPT','EMCG','STRM','THRD','CGBS','OCX','BRAC','SLRN','MCAA','ESSA','PARAA','LGMK','SNRE','SNPX','SAGE','BIGC','PLYA','ZVSA','AYRO','ZCAR','PRLH','PPBI','OPTN','ELEV','CSWI','RDUS','AGFY','CRGX','FHLT','LIPO','LDTC','TPIC','LTRY','PET','VERB','JUNE','SHLT','SRM','BLDE','HOOK','PARA','HEES','SYT','EBTC','MODV','KDLY','MCVT','ANSS','HOFV','FMTO','HSON','PTPI','MRIN','VCSA','SANW','VIRT','STRR','AMED','GMFI','EYEN','ATNF','GRYP','CCIR','ZAPP','JVSA','ESGR','CEAD','DIST','UBX','STAF','PLL','GAN','ICCT','DADA','BSGM','GOGL','SHYF','ITOS','HLXB','SWTX','OTRK','BPMC','') and "morningStarExchangeId" = 'xnas';

