{{ config(materialized='table') }}

WITH tb1  as(
SELECT
    id,
    name,
    sprice,
    cprice,
    ({{ add_numbers('sprice', 'cprice') }}) AS sum_of_numbers
FROM
   {{source('datafeed_shared_schema','macro')}}
   )
   select * from tb1
