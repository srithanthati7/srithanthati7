{{ config(materialized='view') }}

WITH tb1  as(
 select * from {{source('datafeed_shared_schema','raw_products')}})
     select * from tb1
