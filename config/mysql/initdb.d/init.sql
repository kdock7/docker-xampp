DROP TABLE IF EXISTS sample_table;

CREATE TABLE sample_table (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name TEXT NOT NULL
) charset=urf8;

INSERT INT sample_table(name) VALUES ("TEST1"), ("TEST2"), ("TEST3");
