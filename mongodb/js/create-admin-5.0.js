
// NOTE: Past versions of MongoDB used different names for super user roles, 
//       but "root" is now desired role name. The docs mention that this 
//       super user role exists as a convenience helper by default ONLY on the 
//       the 'admin' database.

load(".env.admin.js");

try{
  const u = USER;
  const p = PASSWORD;
} catch(e) {
  if( e instanceof ReferenceError){
    print("Error: USER and PASSWORD consts must be specified in '.env.admin.js'\nExiting..");
    quit();
  }
}

db = db.getSiblingDB('admin');

db.createUser(
  {
    user: USER, // loaded from ".env.admin.js" above
    pwd: PASSWORD, // loaded from ".env.admin.js" above
    roles: [
    	{ role: "root", db: "admin" }
	]
  }
);

