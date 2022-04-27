
SELECT dblink_connect('conexion', 'dbname=dvdrental options=-csearch_path=');
 dblink_connect

CREATE USER dblink_user WITH PASSWORD 'root';
CREATE USER MAPPING FOR dblink_user SERVER fdtest OPTIONS (user 'dblink_user', password 'root');
GRANT USAGE ON FOREIGN SERVER fdtest TO dblink_user;
GRANT SELECT ON TABLE foo TO dblink_user;






---para mysql: the federated storage engine. crea una tabla en base a una conexion remota
---











