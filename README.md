# Ubuntu 20.04 (LTS) Devops

Devops scripts for Ubuntu 20.04 LTS (Focal Fossa)

# Tools

* MongoDB 5.0
* Node 16
* python3-{pip, venv, setuptools}
* yq

## Newest MongoDB (5.0)

The version of MongoDB included with Ubuntu 20.04 LTS is 2 major
versions old (included is 3.6, current is 5.0). There are two
complementary scripts:


```mongo-clean.sh```

- Use this only if you've already installed the 'mongodb' metapackage
  that comes included with Ubuntu 20.04 LTS repos.

```mongo-install.sh```

- Use this to install the newest version of MongoDB (5.0). If at
  some point the older version (3.6) was installed from Ubuntu's
  main repos, **FIRST** run the ```clean-old-mongo.sh``` script referenced
  above, or the meta-script that does both below.

- If no MongoDB was ever installed on the Ubuntu 20.04 installation,
  then use this script freely.

```mongo-clean-install.sh```

- This script combines both the cleaning and installation in one script.

<hr></hr>

## Mongo Shell Scripts (5.0)

In the ```mongodb/js``` folder there are Mongo shell scripts, tested with
the newer ```mongosh``` shell interpreter. They depend on the following environment
files, which are again ```.js``` files declaring simple const values. The
const values are loaded by the ```mongosh``` via the built-in ```load()```
function.

| Shell Script | Environment file | User must provide
| -- | -- | -- |
| create-admin-5.0.js | .env.admin.js | USER, PASSWORD |
| create-user-5.0.js  | .env.user.js  | USER, PASSWORD, DB_NAME |
