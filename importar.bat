pg_dump.exe --host 192.168.10.5 --port 5432 --username "postgres" --no-password  --format custom --blobs --encoding SQL_ASCII --verbose --file "C:\sisconws\fguerrero13.backup" "fguerrero13"
pg_dump.exe --host 192.168.10.5 --port 5432 --username "postgres" --no-password  --format custom --blobs --encoding SQL_ASCII --verbose --file "C:\sisconws\fguerrero14.backup" "fguerrero14"
pg_dump.exe --host 192.168.10.5 --port 5432 --username "postgres" --no-password  --format custom --blobs --encoding SQL_ASCII --verbose --file "C:\sisconws\portilla13.backup" "portilla13"
pg_dump.exe --host 192.168.10.5 --port 5432 --username "postgres" --no-password  --format custom --blobs --encoding SQL_ASCII --verbose --file "C:\sisconws\portilla14.backup" "portilla14"

dropdb -h localhost -U postgres portilla13
dropdb -h localhost -U postgres fguerrero13
dropdb -h localhost -U postgres portilla14
dropdb -h localhost -U postgres fguerrero14 

createdb -h localhost -U postgres portilla13
createdb -h localhost -U postgres fguerrero13
createdb -h localhost -U postgres portilla14
createdb -h localhost -U postgres fguerrero14 

pg_restore.exe --host localhost --port 5432 --username "postgres" --dbname "portilla13" --no-password  --verbose "C:\sisconws\portilla13.backup"
pg_restore.exe --host localhost --port 5432 --username "postgres" --dbname "portilla14" --no-password  --verbose "C:\sisconws\portilla14.backup"
pg_restore.exe --host localhost --port 5432 --username "postgres" --dbname "fguerrero13" --no-password  --verbose "C:\sisconws\fguerrero13.backup"
pg_restore.exe --host localhost --port 5432 --username "postgres" --dbname "fguerrero14" --no-password  --verbose "C:\sisconws\fguerrero14.backup"