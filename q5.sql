CREATE DEFINER=`root`@`localhost` PROCEDURE `PrintAllSubscribersWatchHistory`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_subscriber_id INT;

    DECLARE cur CURSOR FOR
        SELECT SubscriberID FROM Subscribers;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	CREATE TEMPORARY TABLE IF NOT EXISTS WatchTimeReport (
        SubscriberID INT,
        SubscriberName varchar(25),
        ShowTitle VARCHAR(100),
        WatchTime INT
    );
    TRUNCATE WatchTimeReport;
	
    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO v_subscriber_id;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        CALL GetWatchHistoryBySubscriber(v_subscriber_id);
       
    END LOOP;
    CLOSE cur;
    
     SELECT * FROM WatchTimeReport;
END