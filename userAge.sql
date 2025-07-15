CREATE OR REPLACE TABLE SNOWFLAKE_LEARNING_DB.DUMMY_TABLE.USERAGE AS
SELECT
    first_name,
    last_name,
    dob,
    address,
    zipcode,
    DATEDIFF(year, dob, current_date()) AS age,
    refreshed_at
FROM SNOWFLAKE_LEARNING_DB.DUMMY_TABLE.DUMMY_USER_DATA;
