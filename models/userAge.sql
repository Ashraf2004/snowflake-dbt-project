-- models/userAge.sql

{{ config(materialized='table') }}

-- we can schedule queries using 'SCHEDULE' Command.
<<<<<<< local
-- comment 1.4 from snow
=======
-- comment 1.4 from git
>>>>>>> remote

SELECT
    first_name,
    last_name,
    dob,
    address,
    zipcode,
    DATEDIFF(year, dob, current_date()) AS age,
    refreshed_at
FROM SNOWFLAKE_LEARNING_DB.DUMMY_TABLE.DUMMY_USER_DATA

