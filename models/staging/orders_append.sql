{{ 
    config(materialized="incremental",
     incremental_stretogy="append",
) }}

 select * from {{source('datafeed_shared_schema','raw_orders_data')}}