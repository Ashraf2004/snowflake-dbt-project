-- models/userAge.sql

{{ config(materialized='table') }}

-- we can schedule queries using 'SCHEDULE' Command.
-- comment 1.6 from snow

SELECT
    first_name,
    last_name,
    dob,
    address,
    zipcode,
    DATEDIFF(year, dob, current_date()) AS age,
    refreshed_at
FROM SNOWFLAKE_LEARNING_DB.DUMMY_TABLE.DUMMY_USER_DATA

