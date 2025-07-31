CREATE TABLE employers (
    company_name VARCHAR(255),
    company_address VARCHAR(300),
    -- yearly_revenue FLOAT(5, 2) -- Approximation, Allowed: 123.12, 12.1; Not Allowed: 123.123, 12.123, 12.1234; Approximate, stores up to 5 digits with 2 after decimal. Extra decimal digits are rounded (e.g., 123.4567 becomes 123.46). May have precision issues.
    yearly_revenue NUMERIC(5, 2), -- Exact value, Allowed: 123.12, 12.1; Not Allowed: 123.123, 12.123, 12.1234; Exact, stores up to 5 digits with 2 after decimal. Rejects values with more than 2 decimal digits or more than 3 digits before decimal.
    is_hiring BOOLEAN DEFAULT FALSE
);