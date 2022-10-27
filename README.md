Files in this folder
--------------------
readme.txt                          This file
fruitList.txt						List of fruits

Instructions
--------------------
1) Create and write your code in unfulfilledOrders.sh
2) Submit only unfulfilledOrders.sh

---

### PROBLEM DESCRIPTION: TAIGER CAFE EXPANSION (Bash only)

As Taiger Cafe expands, they decide to increase the menu items. Unfortunately, there were too many orders that went unfulfilled. Taiger’s Data Scientists request for some data so the Taiger Cafe Logistics Team may review how to better manage the inventory based on customer demand.

You decide to write another bash script named unfulfilledOrders.sh to help the Data Scientists which will output the 3 most recent unfulfilled orders for the specified date and order, sorted by timestamp from oldest to newest.

Your task: Download the project with the sample fruitList.txt and implement the bash script unfulfilledOrders.sh

Your script should take in 3 command line arguments:

Arg 1: absolute file path of the order list (eg orderLists.txt)
Arg 2: the customer's order
Arg 3: the order date in YYYY-MM-DD format
Other Specifications

There is an infinite list of orders that are not predefined. You can consider the orders to be case insensitive. You may also get orders which contain non-alphabetical characters.

Each line of the order list provided will contain only one order at one timestamp

If there are fewer than 3 orders which fulfill the requirements, you can just display those.

The order list provided contains orders in a random order

See the following examples of how the order list will be formatted

orderList.txt
~~~
2019-01-18 15:30:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 16:40:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 13:15:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 10:15:00 order="MILLE CREPE" fulfilled=FALSE
2019-01-18 08:30:00 order="MILLE CREPE" fulfilled=TRUE
2019-01-18 13:25:00 order="STRAWBERRY SHORTCAKE" fulfilled=TRUE
2019-01-18 17:00:00 order="STRAWBERRY SHORTCAKE" fulfilled=TRUE
2019-01-17 10:30:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-17 18:30:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 12:15:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 11:30:00 order="MILLE Crepe" fulfilled=FALSE`
~~~
Sample 1
>`Command: ./unfulfilledOrders.sh orderList.txt "STRAWBERRY SHORTCAKE" 2019-01-18`

Output: 
~~~
2019-01-18 13:15:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 15:30:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
2019-01-18 16:40:00 order="STRAWBERRY SHORTCAKE" fulfilled=FALSE
~~~
Explanation:
- Lines 1-3, 6-7 and 10 contain STRAWBERRY SHORTCAKE orders on 2019-01-18
- Lines 1-3, and 10 contain unfulfilled (fulfilled=FALSE) orders
- Arrange lines 1-3 and 10 in ascending order, and the last 3 timings are 13:15:00, 15:30:00 and 16:40:00

Sample 2
>`Command: ./unfulfilledOrders.sh orderList.txt "MILLE CREPE" 2019-01-18`

Output: 
~~~
2019-01-18 10:15:00 order="MILLE CREPE" fulfilled=FALSE
2019-01-18 11:30:00 order="MILLE Crepe" fulfilled=FALSE
~~~
Explanation:
- Lines 4-5 and 11 contain MILLE CREPE orders on 2019-01-18
- Lines 4 and 10 contain unfulfilled (fulfilled=FALSE) orders
- Arrange lines 4 and 10 in ascending order, and the last up to 3 timings are 10:15:00 and 11:30:00
~~~
