CREATE TABLE Companies (
  id int,
  name varchar(50),
  address text,
  email varchar(50),
  phone varchar(10)
);

INSERT INTO Companies (id, name, address, email, phone)
VALUES 
(1, 'Tech Innovators', '123 Main St, New York, NY', 'contact@techinnovators.com', '2125551234'),
(2, 'Green Solutions', '456 Park Ave, San Francisco, CA', 'info@greensolutions.com', '4155555678'),
(3, 'Global Traders', '789 Elm St, Chicago, IL', 'support@globaltraders.com', '3125558765'),
(4, 'Health First', '321 Maple Dr, Austin, TX', 'hello@healthfirst.com', '5125554321'),
(5, 'EduVision', '654 Oak St, Boston, MA', 'admin@eduvision.com', '6175550987');

SELECT DISTINCT id,NAME
FROM [dbo].[Companies]
WHERE ID=4