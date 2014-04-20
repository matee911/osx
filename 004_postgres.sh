brew install makedepend
brew install postgresql

initdb /usr/local/var/postgres
pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
createuser -d postgres

