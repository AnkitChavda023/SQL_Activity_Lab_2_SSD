# SQL_Activity_Lab_2_SSD



======================== SSD SQL Activity Lab-2 ======================

# GitHub Repo link : https://github.com/AnkitChavda023/SQL_Activity_Lab_2_SSD

# - ** Note **
please ensure that all relational table are in the database; 
if not then please gp through this link and first setup the database

link : https://github.com/AnkitChavda023/SQL_Activity_Lab_2_SSD/blob/main/database_setup.sql

-----------------------------------------------------------------------------------------------------

## Q1. `ListAllSubscribers()`

**Description:**  
Iterates through all subscribers using a cursor and prints their names.  

## **Implementation Steps**
1 --> Declare variables → a place to hold each row fetched.
2 --> Declare cursor → define the query (e.g., SELECT SubscriberName FROM Subscribers).
3--> Declare handler → tell MySQL what to do when the cursor has no more rows.
4 --> Open cursor → start reading the query results.
5 --> Loop:
      Fetch one row into the variable.
      Do something with it (print/insert/etc.).
      Repeat.
6 --> Close cursor → free resources.

**Execution Step:**
--> first clone the code for ListAllSubscribers() from github

github link : https://github.com/AnkitChavda023/SQL_Activity_Lab_2_SSD/blob/main/q1.sql

 2--> run this quety :
# >> CALL ListAllSubscribers();


----------------------------------------------------------------------------------------------------


## Q2. GetWatchHistoryBySubscriber(IN sub_id INT)

- **Description:**
Given a SubscriberID, returns all shows that subscriber has watched along with watch time.

**Execution Step:**
--> first clone the code for GetWatchHistoryBySubscriber(<subscriberId>) from github


github link : https://github.com/AnkitChavda023/SQL_Activity_Lab_2_SSD/blob/main/q2.sql

 2--> run this quety :
 #  >>  'CALL GetWatchHistoryBySubscriber(<subscriberId>); '


-----------------------------------------------------------------------------------------------------

## Q3. AddSubscriberIfNotExists(IN subName VARCHAR(100))
- **Description:**
Adds a new subscriber only if they don’t already exist in the Subscribers table.

**Execution Step:**
1 --> first clone the code for GetWatchHistoryBySubscriber(<subscriberId>) from github

github link : https://github.com/AnkitChavda023/SQL_Activity_Lab_2_SSD/blob/main/q3.sql

2--> run this quety :
#  >>" CALL AddSubscriberIfNotExists('Subscriber_Name'); "

>> expected output :
If subscriber already exists → No duplicate will be inserted.
If not → A new subscriber row is added with the current date.


-------------------------------------------------------------------------------------------------------

## Q4. SendWatchTimeReport()

- **Description:**
Loops through all subscribers and internally calls GetWatchHistoryBySubscriber() for each one, but only if they have at least one watch history record.


**Execution Step:**
--> first clone the code for SendWatchTimeReport() from github

github link : https://github.com/AnkitChavda023/SQL_Activity_Lab_2_SSD/blob/main/q4.sql

2--> run this quety :
# CALL SendWatchTimeReport()

---------------------------------------------------------------------------------------------------------

##  Q5. SubscriberWatchHistoryReport()

- **Description:**
Uses a cursor to loop through each subscriber. For each subscriber, it calls GetWatchHistoryBySubscriber() to print their watch history.

**Execution Step:**
1--> first clone the code for PrintAllSubscribersWatchHistory(<subscriberId>) from github

github link : https://github.com/AnkitChavda023/SQL_Activity_Lab_2_SSD/blob/main/q5.sql

2--> run this quety :
# CALL PrintAllSubscribersWatchHistory()
