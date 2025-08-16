CREATE DEFINER=`root`@`localhost` PROCEDURE `ListAllSubscribers`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE sub_name VARCHAR(100);
    
    DECLARE cur_subscriber CURSOR FOR
        SELECT Title FROM Shows;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    CREATE TEMPORARY TABLE IF NOT EXISTS Sub_Name_Temp (
			SubscriberName VARCHAR(25)
    );
    TRUNCATE Sub_Name_Temp;

    OPEN cur_subscriber;

    read_loop: LOOP
        FETCH cur_subscriber INTO sub_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        INSERT INTO Sub_Name_Temp VALUES(sub_name);
    END LOOP;
    CLOSE cur_subscriber;
    
    SELECT * FROM Sub_Name_Temp;
ENDS