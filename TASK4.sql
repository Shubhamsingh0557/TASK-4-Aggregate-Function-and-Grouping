1. Create Publisher Table:

    CREATE TABLE publisher (
        publisher_id INTEGER PRIMARY KEY,
        name TEXT,
        country TEXT,
        established_year INTEGER
    );

2. Insert Sample data:

    INSERT INTO publisher (publisher_id, name, country, established_year) VALUES(1, 'Penguin Random House', 'USA', 1927);
    INSERT INTO publisher (publisher_id, name, country, established_year) VALUES(2, 'HarperCollins', 'USA', 1989);
    INSERT INTO publisher (publisher_id, name, country, established_year) VALUES(3, 'Macmillan Publishers', 'UK', 1843);
    INSERT INTO publisher (publisher_id, name, country, established_year) VALUES(4, 'Hachette Livre', 'France', 1826);
    INSERT INTO publisher (publisher_id, name, country, established_year) VALUES(5, 'Simon & Schuster', 'USA', 1924);
    INSERT INTO publisher (publisher_id, name, country, established_year) VALUES(6, 'Scholastic', 'USA', 1920);
    INSERT INTO publisher (publisher_id, name, country, established_year) VALUES(7, 'Oxford University Press', 'UK', 1586);
    INSERT INTO publisher (publisher_id, name, country, established_year) VALUES(8, 'Pearson', 'UK', 1844);
    INSERT INTO publisher (publisher_id, name, country, established_year) VALUES(9, 'Springer', 'Germany', 1842);

3. Aggregate Queries:

    a. COUNT – Number of Publishers per Country
        SELECT country,
               COUNT(*) AS publisher_count
        FROM publisher
        GROUP BY country;

Shows how many publishers are based in each country.

    b. AVG – Average Establishment Year per Country
        SELECT country,
               AVG(established_year) AS avg_established_year
        FROM publisher
        GROUP BY country;

Finds the average founding year of publishers in each country.

    c. MIN/MAX – Oldest and Newest Publisher per Country
        SELECT country,
               MIN(established_year) AS oldest_year,
               MAX(established_year) AS newest_year
        FROM publisher
        GROUP BY country;

Displays the range of establishment years for publishers in each country.

    d. Using HAVING to Filter Countries with Many Publishers
        SELECT country,
               COUNT(*) AS publisher_count
        FROM publisher
        GROUP BY country
        HAVING publisher_count > 2;

Shows only countries with more than 2 publishers.

    e. Multiple Aggregates Together
        SELECT country,
               COUNT(*) AS total_publishers,
               MIN(established_year) AS oldest,
               MAX(established_year) AS newest,
               AVG(established_year) AS avg_year
        FROM publisher
        GROUP BY country;

Provides a comprehensive view of publisher stats per country.
