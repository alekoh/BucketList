CREATE PROCEDURE `sp_createUser`(`p_name` VARCHAR(20), `p_username` VARCHAR(20), `p_password` VARCHAR(100))
  BEGIN
    if ( select exists (select 1 from tbl_user where user_username = p_username) ) THEN
        select 'Username Exists !!';
    ELSE

        insert into tbl_user
        (
            user_name,
            user_username,
            user_password
        )
        values
        (
            p_name,
            p_username,
            p_password
        );

    END IF;
END