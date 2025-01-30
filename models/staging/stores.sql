{{ config(materialized='table') }}

WITH tb1  as(
 select
        id ,
        name,
        opened_at,
        tax_rate
     from {{source('datafeed_shared_schema','stores')}})
     select * from tb1

