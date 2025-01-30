{{ config(materialized='table') }}

WITH tb1  as(
 select
     id,
     order_id 
     from {{source('datafeed_shared_schema','payments')}})
     select * from tb1