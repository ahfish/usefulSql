
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
order by 1,2'::text) 




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




select * from financial_detail where sourcedatatype  in ('operatingandefficiency', 'growth', 'operatingandefficiency', 'cashflow') order by creationdate desc
select * from financial_detail where sourcedatatype  in ('operatingandefficiency', 'growth', 'operatingandefficiency', 'cashflow') and  creationdate <= '2023-01-01'


 

select * from financial_detail where exchangesymbol = 'AEP' and sourcedatatype = 'growth' order by updatedon desc
select * from financial_detail where exchangesymbol = 'AEP' and sourcedatatype = 'operatingandefficiency' order by updatedon desc
select * from financial_detail where exchangesymbol = 'AEP' and sourcedatatype = 'financialhealth' order by updatedon desc

valuation
growth
financialHealth
cashFlow



select * from financial_detail where exchangesymbol = '09988' and sourcedatatype = 'balance_sheet' order by updatedon desc
select * from financial_detail where exchangesymbol = '09988' and sourcedatatype = 'balance_sheet' and datadatestring = 'Q3 2023'



select * from financial_detail where exchangesymbol = 'TXN' and key like '%CashFlow%'


select "Date", count(1) from public."investing_share_ca" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_us" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_hk" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_jp" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_ge" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_uk" group by "Date" order by "Date" desc
select "Date", count(1) from public."investing_share_fr" group by "Date" order by "Date" desc

select * from public."investing_share_us"  where symbol = 'ENB' order by "Date" DESC



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
          
          