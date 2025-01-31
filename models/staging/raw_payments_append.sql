{{ 
    config(materialized="incremental",
    unique_key='id',
     incremental_stretogy="merge",
) }}

 select * from {{source('datafeed_shared_schema','payments')}}