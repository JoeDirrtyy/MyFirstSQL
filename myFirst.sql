Enter password: ************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 23
Server version: 8.0.31 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create table Movies(id int unsigned NOT NULL AUTO_INCREMENT,
    -> title varchar(20) NOT NULL DEFAULT '',
    -> genre varchar(100) NOT NULL DEFAULT '',
    -> duration int unsigned NOT NULL DEFAULT 0,
    -> PRIMARY KEY (id));
Query OK, 0 rows affected (0.04 sec)

mysql> describe movies;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int unsigned | NO   | PRI | NULL    | auto_increment |
| title    | varchar(20)  | NO   |     |         |                |
| genre    | varchar(100) | NO   |     |         |                |
| duration | int unsigned | NO   |     | 0       |                |
+----------+--------------+------+-----+---------+----------------+
4 rows in set (0.03 sec)

mysql> insert into movies(title,genre)
    -> values('Thor Love & Thunder','Action');
Query OK, 1 row affected (0.03 sec)

mysql> describe movies;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int unsigned | NO   | PRI | NULL    | auto_increment |
| title    | varchar(20)  | NO   |     |         |                |
| genre    | varchar(100) | NO   |     |         |                |
| duration | int unsigned | NO   |     | 0       |                |
+----------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> select * from movies;
+----+---------------------+--------+----------+
| id | title               | genre  | duration |
+----+---------------------+--------+----------+
|  1 | Thor Love & Thunder | Action |        0 |
+----+---------------------+--------+----------+
1 row in set (0.00 sec)

mysql> insert into movies(title,genre)
    -> values('Black Panther 2','Thriller');
Query OK, 1 row affected (0.01 sec)

mysql> describe movies;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| id       | int unsigned | NO   | PRI | NULL    | auto_increment |
| title    | varchar(20)  | NO   |     |         |                |
| genre    | varchar(100) | NO   |     |         |                |
| duration | int unsigned | NO   |     | 0       |                |
+----------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> select * from movies;
+----+---------------------+----------+----------+
| id | title               | genre    | duration |
+----+---------------------+----------+----------+
|  1 | Thor Love & Thunder | Action   |        0 |
|  2 | Black Panther 2     | Thriller |        0 |
+----+---------------------+----------+----------+
2 rows in set (0.00 sec)

mysql> insert into movies(title,genre,duration)
    -> values('Ant Man 3','Thriller','120');
Query OK, 1 row affected (0.01 sec)

mysql> select * from movies;
+----+---------------------+----------+----------+
| id | title               | genre    | duration |
+----+---------------------+----------+----------+
|  1 | Thor Love & Thunder | Action   |        0 |
|  2 | Black Panther 2     | Thriller |        0 |
|  3 | Ant Man 3           | Thriller |      120 |
+----+---------------------+----------+----------+
3 rows in set (0.00 sec)
