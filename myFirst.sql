mysql> drop table movies;
Query OK, 0 rows affected (0.06 sec)

mysql> create table Movies(id int unsigned NOT NULL AUTO_INCREMENT,
    -> title varchar(20) NOT NULL DEFAULT '',
    -> genre varchar(100) NOT NULL DEFAULT '',
    -> duration int unsigned NOT NULL DEFAULT 0,
    -> PRIMARY KEY (id));
Query OK, 0 rows affected (0.01 sec)

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

mysql> insert into movies(title,genre,duration)
    -> values('Metropolis','Sci-Fi','153');
Query OK, 1 row affected (0.01 sec)

mysql> insert into movies(title,genre,duration)
    -> values('Noseferatu','Horror','94');
Query OK, 1 row affected (0.03 sec)

mysql> insert into movies(title,genre,duration)
    -> values('');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into movies(title,genre,duration)
    -> values('The Kid','Comedy','68');
Query OK, 1 row affected (0.01 sec)

mysql> insert into movies(title,genre,duration)
    -> values('The Gold Rush','Adventure','95');
Query OK, 1 row affected (0.03 sec)

mysql> select * from Movies;
+----+---------------+-----------+----------+
| id | title         | genre     | duration |
+----+---------------+-----------+----------+
|  1 | Metropolis    | Sci-Fi    |      153 |
|  2 | Noseferatu    | Horror    |       94 |
|  3 | The Kid       | Comedy    |       68 |
|  4 | The Gold Rush | Adventure |       95 |
+----+---------------+-----------+----------+
4 rows in set (0.00 sec)
