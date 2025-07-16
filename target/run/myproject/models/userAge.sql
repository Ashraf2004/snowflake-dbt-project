
  
    

        create or replace transient table SNOWFLAKE_LEARNING_DB.DUMMY_TABLE.userAge
         as
        (-- models/userAge.sql



-- we can schedule queries using 'SCHEDULE' Command.

SELECT
    first_name,
    last_name,
    dob,
    address,
    zipcode,
    DATEDIFF(year, dob, current_date()) AS age,
    refreshed_at
FROM SNOWFLAKE_LEARNING_DB.DUMMY_TABLE.DUMMY_USER_DATA
        );
      
  