SELECT * FROM sales.transactions;

/Total Records in transaction /
SELECT count(*)
FROM sales.transactions;

/total number of customers/
SELECT count(*)
FROM sales.customers;

/sales transaction from only chennai/
SELECT *
FROM sales.transactions 
WHERE market_code="Mark001";

/total number of transaction from only chennai/
SELECT count(*)
FROM sales.transactions 
WHERE market_code="Mark001";

/ transactions in usd/
SELECT *
FROM sales.transactions
WHERE transactions.currency= 'USD'

SELECT sales.transactions.*, sales.date.*
FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year=2020;

.....total revenue in year 2020
SELECT SUM(sales.transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year=2020;

total revenue in year 2019
SELECT SUM(sales.transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year=2019;

.....total revenue in year 2020 in chennai
SELECT SUM(sales.transactions.sales_amount)
FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year=2020 AND sales.transactions.market_code="Mark001" ;

/want to know the distinct product sold in chennai/
SELECT DISTINCT product_code
FROM sales.transactions
WHERE sales.transactions.market_code="Mark001"

select*
from sales.transactions
where sales_amount = -1

.... sales transaction = 0
select*
from sales.transactions
where sales_amount <= 0

....currency duplications
SELECT DISTINCT(transactions.currency)
FROM sales.transactions;
'INR'

SELECT count(*)
FROM sales.transactions
WHERE transactions.currency= 'INR\r'

SELECT count(*)
FROM transactions
WHERE transactions.currency= 'INR'

---Want to know the numbr of transaction in USD
SELECT count(*)
FROM sales.transactions
WHERE transactions.currency= 'USD'

SELECT *
FROM transactions
WHERE transactions.currency= 'USD\r' or transactions.currency= 'USD'

...Show total revenue in year 2020, January Month,

SELECT SUM(transactions.sales_amount) 
FROM transactions INNER JOIN date ON transactions.order_date=date.date 
where date.year=2020 and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r");
