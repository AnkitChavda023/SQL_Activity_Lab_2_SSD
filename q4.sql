CREATE DEFINER=`root`@`localhost` PROCEDURE `SendWatchTimeReport`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_subscriber_id INT;
    declare count int ;

    DECLARE cur CURSOR FOR
        SELECT SubscriberID FROM Subscribers;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	
	CREATE TEMPORARY TABLE IF NOT EXISTS WatchReport (
        SubscriberID INT,
        SubscriberName VARCHAR(100),
        ShowTitle VARCHAR(100),
        WatchTime INT
    );
    TRUNCATE WatchReport;
    
    
    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO v_subscriber_id;
        IF done THEN
            LEAVE read_loop;
        END IF;
        

      INSERT INTO WatchReport (SubscriberID, SubscriberName, ShowTitle, WatchTime)
		SELECT s.SubscriberID, s.SubscriberName, sh.Title, w.WatchTime
        FROM WatchHistory w
        JOIN Shows sh ON w.ShowID = sh.ShowID
        JOIN Subscribers s ON w.SubscriberID = s.SubscriberID
        WHERE w.SubscriberID = v_subscriber_id && w.WatchTime > 0;
        
    END LOOP;
    CLOSE cur;
    
    SELECT * FROM WatchReport;
END