-- Create the Category table
CREATE TABLE Category (
    category_id VARCHAR(4) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

-- Create the Subcategory table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR(8) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL,
);

-- Create the Contact table
CREATE TABLE Contacts (
    contact_id int PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- Create the Campaign table
CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    goal DOUBLE PRECISION NOT NULL,
    pledged DOUBLE PRECISION NOT NULL,
    outcome VARCHAR(10) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);
