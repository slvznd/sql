/* Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке. */

-- Windows 10. Установил, в корневой директории C:\ создал файл my.cnf и внес необходимую конфигурацию, в CMD проверил - всё ок!
-- Единственно не разобрался с %PATH%

/* Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.*/

create database example ;
use example ;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED,
  name VARCHAR(255) 
);

/* Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample. */

/* Лог выполнения задачи
 * C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump example > example.sql
 * C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql
 * mysql> create database sample;
 * mysql> \q
 * C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump sample < example.sql
 * -- Dump completed on 2020-07-21 20:24:12
 */

/*(по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. 
 * Создайте дамп единственной таблицы help_keyword базы данных mysql. 
 * Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.*/

-- C:\Program Files\MySQL\MySQL Server 8.0\bin>mysqldump --where="true limit 100" mysql help_keyword > safe.sql
