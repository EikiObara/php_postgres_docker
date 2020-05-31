set -e
psql -U test_user test_db << EOSQL
CREATE TABLE users(
  account_id    SERIAL PRIMARY KEY,
  account_name  VARCHAR(30),
  password      CHAR(100),
  status        VARCHAR(20)
);

CREATE TABLE user_status(
  status  VARCHAR(20) PRIMARY KEY
);
EOSQL
