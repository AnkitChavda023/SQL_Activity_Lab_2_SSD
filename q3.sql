CREATE DEFINER=`root`@`localhost` PROCEDURE `AddSubscriberIfNotExists`(IN subName VARCHAR(100))
BEGIN
    DECLARE existing_count INT;

    -- Check if subscriber already exists
    SELECT COUNT(*) INTO existing_count
    FROM Subscribers
    WHERE SubscriberName = subName;

    -- If not exists, insert a new record
    IF existing_count = 0 THEN
        INSERT INTO Subscribers (SubscriberName, SubscriptionDate)
        VALUES (subName, CURDATE());

        SELECT CONCAT('Subscriber "', subName, '" Added with SubscriberID: ', LAST_INSERT_ID()) AS Message;
    ELSE
        SELECT CONCAT('Subscriber "', subName, '" already exists.') AS Message;
    END IF;
END