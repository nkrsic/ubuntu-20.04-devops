
load(".env.user.js");

try {

  const user = USER;
  const password = PASSWORD;
  const db_name = DB_NAME;

} catch(e) {
  if(e instanceof ReferenceError){
    print("ERROR: Specify USER, PASSWORD, and DB_NAME in .env.user.js file.");
    quit();
  }
}

db = db.getSiblingDB(DB_NAME);

db.createUser({
	user: USER,
	pwd: PASSWORD,
	roles: [
	  { role: "readWrite", db: DB_NAME }
	]
});

