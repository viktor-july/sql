-- Header: Invoice Summary per Client
SELECT
    c.client_name,
    i.invoice_id,
    i.invoice_date,
    i.total_amount
FROM Invoices i
JOIN Clients c ON i.client_id = c.client_id
ORDER BY i.invoice_date;

-- Detailed: Items per Invoice
SELECT
    i.invoice_id,
    ii.description,
    ii.quantity,
    ii.unit_price,
    (ii.quantity * ii.unit_price) AS line_total
FROM Invoice_Items ii
JOIN Invoices i ON ii.invoice_id = i.invoice_id
ORDER BY i.invoice_id, ii.item_id;

-- Total Amount per Client (Aggregated)
SELECT
    c.client_name,
    SUM(i.total_amount) AS total_billed
FROM Invoices i
JOIN Clients c ON i.client_id = c.client_id
GROUP BY c.client_name;
