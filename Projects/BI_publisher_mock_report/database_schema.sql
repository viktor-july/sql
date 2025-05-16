CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(100),
    contact_email VARCHAR(100)
);

CREATE TABLE Invoices (
    invoice_id INT PRIMARY KEY,
    invoice_date DATE,
    client_id INT REFERENCES Clients(client_id),
    total_amount DECIMAL(10, 2)
);

CREATE TABLE Invoice_Items (
    item_id INT PRIMARY KEY,
    invoice_id INT REFERENCES Invoices(invoice_id),
    description VARCHAR(200),
    quantity INT,
    unit_price DECIMAL(10, 2)
);
