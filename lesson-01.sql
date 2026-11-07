-- Practice data only: these are fictional transactions.

CREATE TABLE dbo.transactions_demo (
    transaction_id INT PRIMARY KEY,
    customer_ref VARCHAR(10),
    amount DECIMAL(10, 2),
    transaction_date DATE
);

INSERT INTO dbo.transactions_demo
    (transaction_id, customer_ref, amount, transaction_date)
VALUES
    (101, 'C001', 250.00,  '2026-11-01'),
    (102, 'C002', 12000.00, '2026-11-02'),
    (103, 'C001', 5400.00,  '2026-11-03'),
    (104, 'C003', 800.00,   '2026-11-04');

SELECT transaction_id, customer_ref, amount
FROM dbo.transactions_demo
WHERE amount >= 1000
ORDER BY amount DESC;
