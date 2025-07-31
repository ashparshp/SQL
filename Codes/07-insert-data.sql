INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Tech Innovations', '123 Tech Lane, Silicon Valley, CA', 0.88, TRUE);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Green Solutions', '456 Eco St, Portland, OR', 11.5, TRUE);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('HealthCare Systems', '789 Wellness Blvd, Austin, TX', 19.10, FALSE);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('EduTech Corp', '321 Learning Ave, Boston, MA', 123.50, TRUE);

-- VALUE Works in MySQL but not in PostgreSQL - VALUE ('EduTech Corp', '321 Learning Ave, Boston, MA', 123.50, TRUE);
-- INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
-- VALUE ('EduTech Corp', '321 Learning Ave, Boston, MA', 123.50, TRUE);

INSERT INTO conversations (user_name, employer_name, message, date_sent)
VALUES ('Sparsh Pandey', 'Tech Innovations', 'Hello, I am interested in your job openings.', '2023-10-01 10:00:00');

INSERT INTO conversations (user_name, employer_name, message, date_sent)
VALUES ('Rohit Sharma', 'Green Solutions', 'I would like to apply for the software engineer position.', '2023-10-02 14:30:00');

INSERT INTO conversations (user_name, employer_name, message, date_sent)
VALUES ('Virat Kohli', 'HealthCare Systems', 'Are there any job opportunities available?', '2023-10-03 09:15:00');