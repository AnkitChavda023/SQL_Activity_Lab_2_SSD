DELIMITER $$

CREATE PROCEDURE GetWatchHistoryBySubscriber(IN sub_id INT)
BEGIN
    SELECT s.SubscriberName,
           sh.Title AS ShowTitle,
           wh.WatchTime
    FROM WatchHistory wh
    JOIN Subscribers s ON wh.SubscriberID = s.SubscriberID
    JOIN Shows sh ON wh.ShowID = sh.ShowID
    WHERE wh.SubscriberID = sub_id;
END$$

DELIMITER ;

