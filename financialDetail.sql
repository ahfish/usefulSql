
create table financial_detail (
    id SERIAL,
    source varchar(50), -- morningStar
    creationDate timestamptz NULL,
    updatedOn timestamptz NULL,
    exchangeSymbol varchar(50) NULL, 
    sourceUnderlyingType varchar(50) null,--large-cap-value-stocks
    sourceDataType varchar(50) null,  --keyRatio
    datatype varchar(50) null, -- Annual
    dataDateString varchar(50) null, --2020 Q1
    dataDate timestamptz NULL, -- 2020-03-31
    key varchar(255),
    value numeric(30,10) NULL
);
CREATE INDEX financial_detail_idx_3 ON financial_detail (source,exchangeSymbol,sourceUnderlyingType, sourceDataType, datatype, dataDateString,key);
CREATE INDEX financial_detail_idx_1 ON financial_detail (exchangesymbol);
CREATE INDEX financial_detail_idx_2 ON financial_detail (sourcedatatype,key);
CREATE INDEX financial_detail_idx_4 ON financial_detail (sourcedatatype,key,datatype);

select * from financial_detail where sourceunderlyingtype = 'large-cap-core-stocks'
select * from financial_detail  where exchangesymbol = 'AAL' and key like'%CashFlowfromFinancingActivities%'

CashFlowfromOperatingActivitiesIndirect
CashFlowfromInvestingActivities
CashFlowfromFinancingActivities

select * from financial_detail where exchangesymbol = 'NVDA' and upper(key) like '%PRICE%' order by 

CREATE OR REPLACE VIEW public.freecashflow_view
AS SELECT financial_detail.exchangesymbol,
    financial_detail."2010",
    financial_detail."2011",
    financial_detail."2012",
    financial_detail."2013",
    financial_detail."2014",
    financial_detail."2015",
    financial_detail."2016",
    financial_detail."2017",
    financial_detail."2018",
    financial_detail."2019"
   FROM crosstab('select distinct exchangesymbol::TEXT,datadate,value from financial_detail where sourcedatatype = ''key_ratios'' and key = ''FinancialsFreeCashFlowUSDMil'' order by 1,2'::text) financial_detail(exchangesymbol text, "2010" numeric, "2011" numeric, "2012" numeric, "2013" numeric, "2014" numeric, "2015" numeric, "2016" numeric, "2017" numeric, "2018" numeric, "2019" numeric);
  
  select distinct exchangesymbol::TEXT,datadate,value from financial_detail where sourcedatatype = 'key_ratios' and key = 'FinancialsFreeCashFlowUSDMil'
  and exchangesymbol = 'IAA'
  order by 1,2
  
  select * from freecashflow_view where exchangesymbol = 'IAA'

  
select exchangesymbol::TEXT,datadate,value from financial_detail where sourcedatatype = 'cash_flow' and key = 'CashFlowfromOperatingActivitiesIndirect' and datatype = 'quarterly' order by 1,2
select exchangesymbol::TEXT,datadate,value from financial_detail where sourcedatatype = 'cash_flow' and key = 'CashFlowfromOperatingActivitiesIndirect' and datatype = 'quarterly'  and exchangesymbol  = 'IAA'

create view cashflowoperating_quarterly_view as 
select * from crosstab('select exchangesymbol::TEXT,datadate,value from financial_detail where sourcedatatype = ''cash_flow'' and key = ''CashFlowfromOperatingActivitiesIndirect'' and datatype = ''quarterly'' order by 1,2')
AS financial_detail(exchangesymbol text,
    "2019Q2" numeric,
    "2019Q3" numeric,
    "2019Q4" numeric,
    "2020Q1" numeric,
    "2020Q2" numeric,
    "2020Q3" numeric,
    "2020Q4" numeric
    )    

select * from financial_detail  where exchangesymbol = 'AAL' and sourcedatatype = 'cash_flow' and key = 'CashFlowfromOperatingActivitiesIndirect' and datatype = 'annual'
select * from financial_detail  where exchangesymbol = 'AAL' and sourcedatatype = 'cash_flow' and key = 'CashFlowfromOperatingActivitiesIndirect' and datatype = 'quarterly'
 select exchangesymbol::TEXT,datadate::TEXT,value::TEXT from financial_detail where sourcedatatype = 'key_ratios' and key = 'ReturnonEquityPercentage' order by 1,2
 FinancialsEarningsPerShareUSD
  select exchangesymbol::TEXT,datadate::TEXT,value::TEXT from financial_detail where sourcedatatype = 'key_ratios' and key = 'FinancialsEarningsPerShareUSD' order by 1,2
  select exchangesymbol::TEXT,datadate::TEXT,value::TEXT from financial_detail where exchangesymbol = 'AAL' and sourcedatatype = 'key_ratios' and key = 'ReturnonEquityPercentage' order by 1,2

select * from crosstab('select exchangesymbol::TEXT,datadate::TEXT,value::TEXT from financial_detail where sourcedatatype = ''key_ratios'' and key = ''FinancialsEarningsPerShareUSD'' order by 1,2')
AS financial_detail(exchangesymbol text,
    datadate_1 TEXT,
    datadate_2 TEXT,
    datadate_3 TEXT,
    datadate_4 TEXT,
    datadate_5 TEXT,
    datadate_6 TEXT,
    datadate_7 TEXT,
    datadate_8 TEXT,
    datadate_9 TEXT,
    datadate_10 text)

    
    select * from financial_detail where sourcedatatype = 'key_ratios' and exchangesymbol  = 'IAA' and key like 'FinancialsFreeCashFlowUSDMil'

create view eps_view as 
select * from crosstab('select exchangesymbol::TEXT,datadate,value from financial_detail where sourcedatatype = ''key_ratios'' and key = ''FinancialsEarningsPerShareUSD'' order by 1,2')
AS financial_detail(exchangesymbol text,
    "2010" numeric,
    "2011" numeric,
    "2012" numeric,
    "2013" numeric,
    "2014" numeric,
    "2015" numeric,
    "2016" numeric,
    "2017" numeric,
    "2018" numeric,
    "2019" numeric)
    
   select * from freecashflow_view where exchangesymbol  = 'IAA'
   select * from freecashflowpershare_view
   select * from roe_view where exchangesymbol = 'EW'
   select * from eps_view
   select * from dividend_view
   select * from cashflowoperating_annual_view
   select * from cashflowinvesting_annual_view
   select * from cashflowfinancing_annual_view
select * from cashflowfinancing_quarterly_view
select * from cashflowinvesting_quarterly_view
select * from cashflowoperating_quarterly_view

select * from roe_view where "2019" = 'NaN'::float

select * from roe_view 
where ("2010"< "2011" or "2010" = 'NaN'::float)
and ("2011"< "2012" or "2011" = 'NaN'::float)
and ("2012"< "2013" or "2012" = 'NaN'::float)
and ("2013"< "2014" or "2013" = 'NaN'::float)
and ("2014"< "2015" or "2014" = 'NaN'::float)
and ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" )

select * from freecashflow_view 
where ("2010"< "2011" or "2010" = 'NaN'::float)
and ("2011"< "2012" or "2011" = 'NaN'::float)
and ("2012"< "2013" or "2012" = 'NaN'::float)
and ("2013"< "2014" or "2013" = 'NaN'::float)
and ("2014"< "2015" or "2014" = 'NaN'::float)
and ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" )

select * from eps_view 
where ("2010"< "2011" or "2010" = 'NaN'::float)
and ("2011"< "2012" or "2011" = 'NaN'::float)
and ("2012"< "2013" or "2012" = 'NaN'::float)
and ("2013"< "2014" or "2013" = 'NaN'::float)
and ("2014"< "2015" or "2014" = 'NaN'::float)
and ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" )

select * from dividend_view 
where ("2010"< "2011" or "2010" = 'NaN'::float)
and ("2011"< "2012" or "2011" = 'NaN'::float)
and ("2012"< "2013" or "2012" = 'NaN'::float)
and ("2013"< "2014" or "2013" = 'NaN'::float)
and ("2014"< "2015" or "2014" = 'NaN'::float)
and ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" )


select * from roe_view where
 ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" )

   
create view dividend_view as 
select * from crosstab('select exchangesymbol::TEXT,datadate,value from financial_detail where sourcedatatype = ''key_ratios'' and key = ''FinancialsDividendsUSD'' order by 1,2')
AS financial_detail(exchangesymbol text,
    "2010" numeric,
    "2011" numeric,
    "2012" numeric,
    "2013" numeric,
    "2014" numeric,
    "2015" numeric,
    "2016" numeric,
    "2017" numeric,
    "2018" numeric,
    "2019" numeric)    
    
select * from roe_view
select * from eps_view

drop table ct

CREATE TABLE ct(id SERIAL, rowid varchar(10), attribute TEXT, value TEXT);
INSERT INTO ct(rowid, attribute, value) VALUES('test','att1','val1');
INSERT INTO ct(rowid, attribute, value) VALUES('test1','att2','val2');
INSERT INTO ct(rowid, attribute, value) VALUES('test1','att3','val3');
INSERT INTO ct(rowid, attribute, value) VALUES('test1','att4','val4');
INSERT INTO ct(rowid, attribute, value) VALUES('test2','att1','val5');
INSERT INTO ct(rowid, attribute, value) VALUES('test2','att2','val6');
INSERT INTO ct(rowid, attribute, value) VALUES('test2','att3','val7');
INSERT INTO ct(rowid, attribute, value) VALUES('test2','att4','val8');

SELECT *
FROM crosstab(
  'select rowid, attribute, value
   from ct
   where attribute = ''att2'' or attribute = ''att3''
   order by 1,2')
AS ct(row_name varchar(10), category_1 text, category_2 text, category_3 text);


select * from freecashflow_view where exchangesymbol = 'IAA'

select * from freecashflow_view 
where ("2010"< "2011" or "2010" = 'NaN'::float)
and ("2011"< "2012" or "2011" = 'NaN'::float)
and ("2012"< "2013" or "2012" = 'NaN'::float)
and ("2013"< "2014" or "2013" = 'NaN'::float)
and ("2014"< "2015" or "2014" = 'NaN'::float)
and ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" ) 

select * from freecashflow_view where exchangesymbol = 'IAA'

select exchangesymbol from roe_view 
where ("2010"< "2011" or "2010" = 'NaN'::float)
and ("2011"< "2012" or "2011" = 'NaN'::float)
and ("2012"< "2013" or "2012" = 'NaN'::float)
and ("2013"< "2014" or "2013" = 'NaN'::float)
and ("2014"< "2015" or "2014" = 'NaN'::float)
and ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" )
intersect 
select exchangesymbol from eps_view 
where ("2010"< "2011" or "2010" = 'NaN'::float)
and ("2011"< "2012" or "2011" = 'NaN'::float)
and ("2012"< "2013" or "2012" = 'NaN'::float)
and ("2013"< "2014" or "2013" = 'NaN'::float)
and ("2014"< "2015" or "2014" = 'NaN'::float)
and ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" )
intersect
select exchangesymbol from freecashflow_view 
where ("2010"< "2011" or "2010" = 'NaN'::float)
and ("2011"< "2012" or "2011" = 'NaN'::float)
and ("2012"< "2013" or "2012" = 'NaN'::float)
and ("2013"< "2014" or "2013" = 'NaN'::float)
and ("2014"< "2015" or "2014" = 'NaN'::float)
and ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" )


select exchangesymbol from dividend_view where ("2010"< "2011" or "2010" = 'NaN'::float)
and ("2011"< "2012" or "2011" = 'NaN'::float)
and ("2012"< "2013" or "2012" = 'NaN'::float)
and ("2013"< "2014" or "2013" = 'NaN'::float)
and ("2014"< "2015" or "2014" = 'NaN'::float)
and ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" )
intersect
select exchangesymbol from eps_view 
where ("2010"< "2011" or "2010" = 'NaN'::float)
and ("2011"< "2012" or "2011" = 'NaN'::float)
and ("2012"< "2013" or "2012" = 'NaN'::float)
and ("2013"< "2014" or "2013" = 'NaN'::float)
and ("2014"< "2015" or "2014" = 'NaN'::float)
and ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" )
intersect 
select exchangesymbol from roe_view 
where ("2010"< "2011" or "2010" = 'NaN'::float)
and ("2011"< "2012" or "2011" = 'NaN'::float)
and ("2012"< "2013" or "2012" = 'NaN'::float)
and ("2013"< "2014" or "2013" = 'NaN'::float)
and ("2014"< "2015" or "2014" = 'NaN'::float)
and ("2015"< "2016" or "2015" = 'NaN'::float)
and ("2016"< "2017" or "2016" = 'NaN'::float)
and ("2017"< "2018" or "2017" = 'NaN'::float)
and ("2017"< "2018" or "2018" = 'NaN'::float)
and ("2018"< "2019" )

select * from macd_simulation_result order by profit_and_loss desc

select * from "MorningStarUnderlyings" where "exchangeName" = 'xlon' where "exchangeSymbol" = 'MMM'
select count(1) from "MorningStarShares" where "morningStarExchangeId" = 'xhkg' order by "marketCap" desc
select distinct "morningStarExchangeId" from "MorningStarShares"  
select * from "MorningStarShares" where  "exchangeSymbol" = 'DOL'

SELECT * from financial_detail where source = 'morningStart' and exchangeSymbol = 'NVDA' and sourceUnderlyingType = 'large-cap-growth-stocks' and datatype = 'annual' and dataDateString = '2024' and key = 'ReturnonAssetPercentage'
SELECT * from financial_detail where source = 'morningStart' and exchangeSymbol = 'NVDA' and sourceUnderlyingType = 'large-cap-growth-stocks' and datatype = 'annual' and key = 'TaxRatePercentage'



SELECT "id", "creationDate", "updatedOn", "exchangeName", "exchangeSymbol", "symbol", "underlyingType", "marketCapactiryType", "name", "financeUrl", "keyRatioUrl" FROM "MorningStarUnderlyings" AS "MorningStarUnderlying" WHERE "MorningStarUnderlying"."symbol" = 'MMM' LIMIT 1;
select distinct exchangesymbol::TEXT,datadate,value
from financial_detail 
where sourcedatatype = ''cash_flow'' and key = ''CashFlowfromFinancingActivities'' and datatype = ''annual'' 
order by 1,2'::text)' 

select * from public."MorningStarShares" where "exchangeSymbol" in ('JACS','AAM','ZUO','BEST','BALYT','FREY','ALTM','PNST','MPLN','LICY','CTV','MRP','') and "morningStarExchangeId" = 'xnys'


INSERT INTO financial_detail (source,creationDate,updatedOn,exchangeSymbol,sourceUnderlyingType,sourceDataType,datatype,dataDateString,dataDate,key,value ) 
SELECT 
    n.source,
    n.creationDate,
    n.updatedOn,
    n.exchangeSymbol, 
    n.sourceUnderlyingType,
    n.sourceDataType,
    n.datatype,
    n.dataDateString,
    n.dataDate,
    n.key,
    n.value
from financial_detail_tmp n left join financial_detail old 
on  
old.source = n.source and 
old.exchangeSymbol = n.exchangeSymbol and 
old.sourceUnderlyingType = n.sourceUnderlyingType and 
old.sourceDataType = n.sourceDataType and 
old.datatype = n.datatype and 
old.dataDateString = n.dataDateString and 
old.key = n.key
where old.value is null and old.source is null and old.exchangeSymbol is null and old.sourceUnderlyingType is null and old.sourceDataType is null and old.datatype is null
and old.dataDateString is null
and old.key is null


select * from public."MorningStarShares" where "exchangeSymbol" in ('08405','00592','01902','01469','02562','02207','01207','01665','01706','07836','01266','00668','08053','01992','06837') and "morningStarExchangeId" = ''

select * from financial_detail where sourcedatatype  in ('operatingandefficiency', 'growth', 'operatingandefficiency', 'cashflow') order by creationdate desc
select * from financial_detail where sourcedatatype  in ('operatingandefficiency', 'growth', 'operatingandefficiency', 'cashflow') and  creationdate <= '2023-01-01'


select distinct key from  public.financial_detail_xnas where exchangesymbol = 'EBMT' and lower(key) like '%dividend%'
select distinct key from public.financial_detail_xnys where lower(key) like '%dividend%share%'
select distinct key from public.financial_detail_xnas where lower(key) like '%dividend%share%'
select * from public."MorningStarShares" where "morningStarExchangeId" = 'xasx'
delete from public."MorningStarShares" where "morningStarExchangeId" = 'xasx'

select * from financial_detail where exchangesymbol = 'AEP' and sourcedatatype = 'growth' order by updatedon desc
select * from financial_detail where exchangesymbol = 'AEP' and sourcedatatype = 'operatingandefficiency' order by updatedon desc
select * from financial_detail where exchangesymbol = 'AEP' and sourcedatatype = 'financialhealth' order by updatedon desc

valuation
growth
financialHealth
cashFlow

select distinct sourcedatatype  from financial_detail_xnas
select * from financial_detail_xnas

select * from financial_detail where exchangesymbol = '09988' and sourcedatatype = 'balance_sheet' order by updatedon desc
select * from financial_detail where exchangesymbol = '09988' and sourcedatatype = 'balance_sheet' and datadatestring = 'Q3 2023'


delete from "MorningStarShares" where "exchangeSymbol" in ('317A','9675','3254','7125','8890','5935','3990','1973','6640','5573','8732','5594','232A','7342','') and "morningStarExchangeId" = 'xtks'

select * from financial_detail where exchangesymbol = 'TXN' and key like '%CashFlow%'

select * from public."investing_share_au" where symbol = 'RAS' order by "Date" desc

select "Date", count(1) from public."investing_share_in" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_au" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_ca" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_us" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_hk" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_jp" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_ge" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_uk" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_fr" group by "Date" order by "Date" desc

delete from public."MorningStarShares" where "exchangeSymbol" in ('AYUPA','LYK','MCY','DJW','') and "morningStarExchangeId" = 'xasx';

select * from public."MorningStarShares" where "exchangeSymbol" in ('AYUPA','LYK','MCY','DJW','') and "morningStarExchangeId" = 'xasx';

select * from public."investing_share_us"  where symbol = 'ENB' order by "Date" DESC

select distinct "morningStarExchangeId"  from public."MorningStarShares" r
select * from public."MorningStarShares" where "morningStarExchangeId" = 'xnas' and "updatedOn" <= '2025-03-12 11:52:13.462 +0100' order by "marketCap" DESC

select * from public."MorningStarShares" where "morningStarExchangeId" = 'xnse'  order by "marketCap" desc

--- List table count
WITH    tbl AS (
 SELECT Table_Schema, Table_Name
 FROM   information_schema.Tables
 WHERE  Table_Name NOT LIKE 'pg_%'
        AND Table_Schema IN ('public')
)
SELECT  Table_Schema AS Schema_Name
,       Table_Name
,       (xpath('/row/c/text()', query_to_xml(format(
          'SELECT count(*) AS c FROM %I.%I', Table_Schema, Table_Name
        ), FALSE, TRUE, '')))[1]::text::int AS Records_Count
FROM    tbl
ORDER   BY Records_Count DESC;
          
select * from "MorningStarShares" where "exchangeSymbol" = 'ENB'
select * from "MorningStarShares" where "morningStarExchangeId"  = 'xnys'


delete from public."MorningStarShares" where "exchangeSymbol" in ('7268','5610','9522','9243','8215','7518','1730','3857','3322','9388','1439','') and "morningStarExchangeId" = 'xtks';


delete from public."MorningStarShares" where "exchangeSymbol" in ('AADI','ICLK','CTCX','TBNK','LYT','GLAC','FFIE','DGHI','AVTE','OMGA','BECN','NXU','APTO','IVAC','BHIL','VBFC','CUTR','HCP','MSSA','CJJD','ME','AIEV','ALTR','AWH','CRKN','ICCH','VMCA','PEV','CFB','') and "morningStarExchangeId" = 'xnas'
delete from public."MorningStarShares" where "exchangeSymbol" in ('08045','00906','') and "morningStarExchangeId" = 'xhkg'

select distinct "morningStarExchangeId" from public."MorningStarShares" 

delete from public."MorningStarShares" where "exchangeSymbol" in ('CLRC','HPH','ACCD','BUJA','SPGC','GBBK','ACHL','') and "morningStarExchangeId" = 'xnas';



delete from public."MorningStarShares" where "exchangeSymbol" in ('ONVO','VRPX','BCOW','') and "morningStarExchangeId" = 'xnas';
delete from public."MorningStarShares" where "exchangeSymbol" in ('LGTY','SYRS','SDIG','') and "morningStarExchangeId" = 'xnas';

delete from public."MorningStarShares" where upper("exchangeSymbol") in ('ALVR','CDXC','GLST','TCTM','OCEA','CTHR','') and "morningStarExchangeId" = 'xnas'
delete from public."MorningStarShares" where "exchangeSymbol" in ('GDST','YOTA','SYRA','AFAR','PYCR','DECA','WINV','') and "morningStarExchangeId" = 'xnas';


delete from public."MorningStarShares" where "exchangeSymbol" in ('ENZ','NVRO','FNA','GOLD','FBMS','DESP','ENFN','ML','MKFG','EQC','DM','DFS','EARN','EDR','LGF.A','LGF.B','SWI','SHOP','AMPS','JWN','VRN','DTC','MYTE','BERY','SPLP','') and "morningStarExchangeId" = 'xnys'
delete from public."MorningStarShares" where "exchangeSymbol" in ('9161','5585','2107','2977','4304','9852','7559','5481','') and "morningStarExchangeId" = 'xtks'
delete from  public."MorningStarShares" where "exchangeSymbol" in ('3604','8905','7386','2372','6131','2397','3458','3264','3978','6715','6697','9070','6319','5277','9749','174A','8038','4298','6967','9260') and "morningStarExchangeId" = 'xtks'

delete from public."MorningStarShares" where "exchangeSymbol" in ('0R3G','AJAX','CRES','0Q1S','ROSE','0A2P','TLY','0A2L','0Q15','RAI','PRES','MSYS','RGP','0R0T','0QOS','0W2Y','NTOG','0A2Z','0RNH','0R16','0QZO','OHT','0QZ1','ACID','SHPC','0QZI','0QAH','AQX','0XWG','BIOM','STA','BAR','0HLU','') and "morningStarExchangeId" = 'xlon'

delete  from public."MorningStarShares" where "exchangeSymbol" in ('4173','4435','3666') and "morningStarExchangeId" = 'xtks'
select * from financial_detail_xnys where sourcedatatype = 'profitabilityandefficiency' and exchangesymbol = 'VTEX'
select distinct sourcedatatype  from financial_detail_xnys

select * from public."MorningStarShares" 

select 'create table ' || table_name  || ' AS SELECT * FROM postgres_scan(''host=localhost user=ahfish dbname=financialDetail port=5432'', ''public'', '''  || table_name ||  ''');' from information_schema."tables" t where t.table_schema = 'public'

'AS SELECT * FROM postgres_scan(''host=localhost user=ahfish dbname=financialDetail port=5432'', ''public'', ''investing_share_us'');'


create table investing_share_us_test AS SELECT * FROM postgres_scan('host=localhost user=ahfish dbname=financialDetail port=5432', 'public', 'investing_share_us');



CREATE TABLE IF NOT EXISTS investing_share_detail_australia ( symbol VARCHAR(20) NOT NULL, date DATE NOT NULL, datasourcetype VARCHAR(20) NOT NULL, valuetype VARCHAR(50) NOT NULL, value FLOAT,  PRIMARY KEY (symbol, date, datasourcetype, valuetype) );
INSERT INTO investing_share_detail_australia (symbol, date, datasourcetype, valuetype, value) VALUES ('SXL', '2025-06-19', 'Valuation', 'Price to Sales', 0.3) ON CONFLICT (symbol, date, datasourcetype, valuetype) DO UPDATE SET value = EXCLUDED.value;


select * from investing_share_detail_australia
select distinct valuetype from public.investing_share_detail_unitedstates
select date,datasourcetype, count(1) from public.investing_share_detail_unitedstates where datasourcetype = 'Valuation' group by date,datasourcetype order by date desc
select date,datasourcetype, count(1) from public.investing_share_detail_unitedkingdom where datasourcetype = 'Valuation' group by date,datasourcetype order by date desc
select date,datasourcetype, count(1) from public.investing_share_detail_japan where datasourcetype = 'Valuation' group by date,datasourcetype order by date desc
select date,datasourcetype, count(1) from public.investing_share_detail_india where datasourcetype = 'Valuation' group by date,datasourcetype order by date desc
select date,datasourcetype, count(1) from public.investing_share_detail_hongkong where datasourcetype = 'Valuation' group by date,datasourcetype order by date desc
select date,datasourcetype, count(1) from public.investing_share_detail_canada where datasourcetype = 'Valuation' group by date,datasourcetype order by date desc
select date,datasourcetype, count(1) from public.investing_share_detail_australia  where datasourcetype = 'Valuation' group by date,datasourcetype order by date desc
select date,datasourcetype, count(1) from public.investing_share_detail_france  where datasourcetype = 'Valuation' group by date,datasourcetype order by date desc
select date,datasourcetype, count(1) from public.investing_share_detail_germany where datasourcetype = 'Valuation' group by date,datasourcetype order by date desc

select *from public.investing_share_detail_australia  where datasourcetype = 'Valuation' order by date desc
INSERT INTO investing_share_detail_australia (symbol, date, datasourcetype, valuetype, value) VALUES ('CGF', '2025-06-30', 'Valuation', 'Price to Sales', 1.6) ON CONFLICT (symbol, date, datasourcetype, valuetype) DO UPDATE SET value = EXCLUDED.value;

select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_unitedstates where datasourcetype = 'Risk' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_unitedkingdom where datasourcetype = 'Risk' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_japan where datasourcetype = 'Risk' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_india where datasourcetype = 'Risk' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_hongkong where datasourcetype = 'Risk' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_canada where datasourcetype = 'Risk' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_australia  where datasourcetype = 'Risk' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_france  where datasourcetype = 'Risk' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_germany  where datasourcetype = 'Risk' group by date,datasourcetype, valuetype order by date desc


select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_unitedstates where datasourcetype = 'Growth' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_unitedkingdom where datasourcetype = 'Growth' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_japan where datasourcetype = 'Growth' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_india where datasourcetype = 'Growth' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_hongkong where datasourcetype = 'Growth' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_canada where datasourcetype = 'Growth' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_australia  where datasourcetype = 'Growth' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_france  where datasourcetype = 'Growth' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_germany  where datasourcetype = 'Growth' group by date,datasourcetype, valuetype order by date desc

select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_unitedstates where datasourcetype = 'Financials' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_unitedkingdom where datasourcetype = 'Financials' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_japan where datasourcetype = 'Financials' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_india where datasourcetype = 'Financials' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_hongkong where datasourcetype = 'Financials' group by date,datasourcetype, valuetype order by date desc
select date,datasourcetype, valuetype, count(1) from public.investing_share_detail_canada where datasourcetype = 'Financials' group by date,datasourcetype, valuetype order by date desc
 	


select distinct exchange from investing_share_detail where country = 'Australia'

select * from investing_share_detail where country = 'India' and exchange = 'BSE'
select 
'INSERT INTO public."MorningStarShares"
("creationDate", "updatedOn", "morningStarExchangeId", "exchangeSymbol", "morningStarId", sector, "stockType", "marketCap", "stockName", "financeUrl", "keyRatioUrl")
VALUES(' 
|| 'NOW(),' 
|| 'NOW(),' 
|| '''xasx'',' 
|| '''' || upper(symbol) || ''''
|| ','''',' 
|| '''' || sector || ''','
|| '''' || industry || ''',' 
|| marketCap || ','
|| '''' || name || ''','
|| '''https://www.morningstar.com/stocks/xnas/' || lower(symbol) || '/financials'','
|| '''https://www.morningstar.com/stocks/xnas/' || lower(symbol) || '/valuation'');'
from 
investing_share_detail where country = 'Australia'

select 
'INSERT INTO public."MorningStarShares"
("creationDate", "updatedOn", "morningStarExchangeId", "exchangeSymbol", "morningStarId", sector, "stockType", "marketCap", "stockName", "financeUrl", "keyRatioUrl")
VALUES(' 
|| 'NOW(),' 
|| 'NOW(),' 
|| '''xnse'',' 
|| '''' || upper(symbol) || ''''
|| ','''',' 
|| '''' || sector || ''','
|| '''' || industry || ''',' 
|| marketCap || ','
|| '''' || name || ''','
|| '''https://www.morningstar.com/stocks/xnse/' || lower(symbol) || '/financials'','
|| '''https://www.morningstar.com/stocks/xnse/' || lower(symbol) || '/valuation'');'
from 
investing_share_detail where country = 'India' and exchange = 'BSE'
select 


select 
'INSERT INTO public."MorningStarShares" VALUES(' 
from 
investing_share_detail where country = 'Australia'

select distinct exchange from investing_share_detail where country = 'India'

select
"avgVolume","exchangeId","flag","countryNameTranslated","fundamentalBeta","fundamentalMarketCap","fundamentalRatio","fundamentalRevenue","investingComid","lastPairDecimal","name","pairType","symbol","time"
from public."InvestingComShares" where flag = 'US'  

select distinct "countryNameTranslated" from public."InvestingComShares" 
select * from public."InvestingComShares" where "countryNameTranslated" = 'India' 


select * from public."InvestingComShares" where flag = 'US'
select * from public.investing_share_uk where "Date" = '2025-09-19' order by "Date" desc

insert into public."InvestingComShares" 
("avgVolume","exchangeId","flag","countryNameTranslated","fundamentalBeta","fundamentalMarketCap","fundamentalRatio","lastPairDecimal","pairType","symbol", "name", "fundamentalRevenue" )
select "avgvolume","exchangeid","flag","countrynametranslated","fundamentalbeta","fundamentalmarketcap","fundamentalratio","lastpairdecimal","pairtype","symbol","Name", 
       case
	    WHEN fundamentalrevenue = '' THEN 'NaN'::float8
        WHEN fundamentalrevenue ~ 'B$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'B$', '') AS DOUBLE PRECISION) * 1000000000
        WHEN fundamentalrevenue ~ 'M$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'M$', '') AS DOUBLE PRECISION) * 1000000
        WHEN fundamentalrevenue ~ 'T$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'T$', '') AS DOUBLE PRECISION) * 1000000000000
        WHEN fundamentalrevenue ~ 'K$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'K$', '') AS DOUBLE PRECISION) * 1000            
        ELSE CAST(fundamentalrevenue AS DOUBLE PRECISION)
    END AS "fundamentalrevenue"
from public.investing_share_uk where "Date" = '2025-09-19'


insert into public."InvestingComShares" 
("avgVolume","exchangeId","flag","countryNameTranslated","fundamentalBeta","fundamentalMarketCap","fundamentalRatio","lastPairDecimal","pairType","symbol", "name", "fundamentalRevenue" )
select "avgvolume","exchangeid","flag","countrynametranslated","fundamentalbeta","fundamentalmarketcap","fundamentalratio","lastpairdecimal","pairtype","symbol","Name", 
       case
	    WHEN fundamentalrevenue = '' THEN 'NaN'::float8
        WHEN fundamentalrevenue ~ 'B$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'B$', '') AS DOUBLE PRECISION) * 1000000000
        WHEN fundamentalrevenue ~ 'M$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'M$', '') AS DOUBLE PRECISION) * 1000000
        WHEN fundamentalrevenue ~ 'T$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'T$', '') AS DOUBLE PRECISION) * 1000000000000
        WHEN fundamentalrevenue ~ 'K$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'K$', '') AS DOUBLE PRECISION) * 1000            
        ELSE CAST(fundamentalrevenue AS DOUBLE PRECISION)
    END AS "fundamentalrevenue"
from public.investing_share_au where "Date" = '2025-09-19'

insert into public."InvestingComShares" 
("avgVolume","exchangeId","flag","countryNameTranslated","fundamentalBeta","fundamentalMarketCap","fundamentalRatio","lastPairDecimal","pairType","symbol", "name", "fundamentalRevenue" )
select "avgvolume","exchangeid","flag","countrynametranslated","fundamentalbeta","fundamentalmarketcap","fundamentalratio","lastpairdecimal","pairtype","symbol","Name", 
       case
	    WHEN fundamentalrevenue = '' THEN 'NaN'::float8
	    WHEN fundamentalrevenue = 'N/A' THEN 'NaN'::float8
        WHEN fundamentalrevenue ~ 'B$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'B$', '') AS DOUBLE PRECISION) * 1000000000
        WHEN fundamentalrevenue ~ 'M$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'M$', '') AS DOUBLE PRECISION) * 1000000
        WHEN fundamentalrevenue ~ 'T$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'T$', '') AS DOUBLE PRECISION) * 1000000000000
        WHEN fundamentalrevenue ~ 'K$' 
            THEN CAST(REGEXP_REPLACE(fundamentalrevenue, 'K$', '') AS DOUBLE PRECISION) * 1000            
        ELSE CAST(fundamentalrevenue AS DOUBLE PRECISION)
    END AS "fundamentalrevenue"
from public.investing_share_in where "Date" = '2025-09-19'

select distinct "countryNameTranslated" from public."InvestingComShares"
select * from public."InvestingComShares" where "countryNameTranslated"  = 'United Kingdom'
delete from public."InvestingComShares" where "countryNameTranslated"  = 'United Kingdom'



select* from public.investing_share_au


delete from public."MorningStarShares" where "exchangeSymbol" in ('ALIMR','0R24','MLPLC','0QZ6','ALENR','PIER','MLALV','MLCAC','MLPET','CMO','CNV','ALMET','0A6L','MLACT','ALAQU','0HLE','MLGAI','MLCMI','UNBL','MLERO','0A22','MLCHE','MLPRX','MLCLI','0R1W','MLGLB','MLVIE','MLARD','FAYE','0A2I','0HN0','0Q1F','CAFO','MLSRP','GOOD','MLVST','ALMDP','ALGAU','MLSTR','0K75','0R9U','RWI','PWG','LTG','NEOEN','KWG','CATG','ALAUR','TIFS','FINA','MLDYX','MLBSP','BMN','MLIMP','MLBMD','ALVET','MLCMG','MLVIR','MLMAD','MLEDU','MLVER','ALQP','ALIDS','MLONL','ALACT','MLSGT','MLCFD','MLSDN','ALDOL','0A2X','MLFNP','0R37','MLPRI','MLAEM','MLPHO','EXN','MLAA','INHC','MLMCA','MLHPE','GBP','0R0X','FDJ','0LQ0','ALNFL','MLFDV','MLUAV','ALVAZ','ALMIN','ALAST','ALESK','MLGRC','') and "morningStarExchangeId" = 'xpar'

delete from public."MorningStarShares" where "exchangeSymbol" in ('ALOPM','') and "morningStarExchangeId" = 'xpar';

INSERT INTO investing_share_GE ( "Date", AvgVolume, Chg, ChgPct, CountryNameTranslated , ExchangeId , Flag , FundamentalBeta , FundamentalMarketCap , FundamentalRatio , FundamentalRevenue, High , Id , IsCFD , IsOpen,"Last" , LastPairDecimal , Low, "Name", PairType, Performance3Year , PerformanceDay , PerformanceMonth , PerformanceWeek , PerformanceYear , PerformanceYtd , Symbol , TechnicalDay , TechnicalHour , TechnicalMonth , TechnicalWeek , "Time", Url , Volume) values('20250620', 0,0,0,'Germany','123','DE',0,0,0,'39.75M',91, '994894','false','0',91,2,91,'Calvatis GmbH','Equities',0,0,0,0,0,0,'CISg','sell','','sell','sell','1638431429','/equities/calvatis-gmbh',0) ON CONFLICT ( "Date", ExchangeId, Symbol) DO UPDATE SET AvgVolume = EXCLUDED.AvgVolume, Chg = EXCLUDED.Chg, ChgPct = EXCLUDED.ChgPct, CountryNameTranslated  = EXCLUDED.CountryNameTranslated , Flag  = EXCLUDED.Flag , FundamentalBeta  = EXCLUDED.FundamentalBeta , FundamentalMarketCap  = EXCLUDED.FundamentalMarketCap , FundamentalRatio  = EXCLUDED.FundamentalRatio , FundamentalRevenue = EXCLUDED.FundamentalRevenue, High  = EXCLUDED.High , Id  = EXCLUDED.Id , IsCFD  = EXCLUDED.IsCFD , IsOpen  = EXCLUDED.IsOpen , "Last"  = EXCLUDED."Last" , LastPairDecimal  = EXCLUDED.LastPairDecimal , Low  = EXCLUDED.Low , "Name" = EXCLUDED."Name", PairType = EXCLUDED.PairType, Performance3Year  = EXCLUDED.Performance3Year , PerformanceDay  = EXCLUDED.PerformanceDay , PerformanceMonth  = EXCLUDED.PerformanceMonth , PerformanceWeek  = EXCLUDED.PerformanceWeek , PerformanceYear  = EXCLUDED.PerformanceYear , PerformanceYtd  = EXCLUDED.PerformanceYtd , TechnicalDay  = EXCLUDED.TechnicalDay , TechnicalHour  = EXCLUDED.TechnicalHour , TechnicalMonth  = EXCLUDED.TechnicalMonth , TechnicalWeek  = EXCLUDED.TechnicalWeek , "Time"  = EXCLUDED."Time" , Url  = EXCLUDED.Url ,  Volume = EXCLUDED.Volume; 

 select * from public."InvestingComShares"
  select * from public.investing_share_us
 
 delete from public."MorningStarShares" where "exchangeSymbol" in ('NYMT','FLIC','TFIN','KWE','CLEU','HMST','LANC','RSLS','BLUE','KIRK','PWOD','FARO','NWTN','FGF','VXRT','RMBL','XYLO','IKNA','VERV','PTMN','LSEA','CHX','IPA','RGLS','SSBK','JNVR','VSTE','GLYC','OB','MULN','CKPT','EMCG','STRM','THRD','CGBS','OCX','BRAC','SLRN','MCAA','ESSA','PARAA','LGMK','SNRE','SNPX','SAGE','BIGC','PLYA','ZVSA','AYRO','ZCAR','PRLH','PPBI','OPTN','ELEV','CSWI','RDUS','AGFY','CRGX','FHLT','LIPO','LDTC','TPIC','LTRY','PET','VERB','JUNE','SHLT','SRM','BLDE','HOOK','PARA','HEES','SYT','EBTC','MODV','KDLY','MCVT','ANSS','HOFV','FMTO','HSON','PTPI','MRIN','VCSA','SANW','VIRT','STRR','AMED','GMFI','EYEN','ATNF','GRYP','CCIR','ZAPP','JVSA','ESGR','CEAD','DIST','UBX','STAF','PLL','GAN','ICCT','DADA','BSGM','GOGL','SHYF','ITOS','HLXB','SWTX','OTRK','BPMC','') and "morningStarExchangeId" = 'xnas';
 delete from public."MorningStarShares" where "exchangeSymbol" in ('BPT','MTR','KIND','JNPR','ETWO','EVRI','AC','X','SKX','AZEK','OLO','') and "morningStarExchangeId" = 'xnys';
 
 