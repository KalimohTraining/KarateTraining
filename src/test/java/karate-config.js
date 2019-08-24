function() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	myVarName: 'someValue'
  }
  if (env == 'dev') {
    karate.configure('connectTimeout', 20000);
     karate.configure('readTimeout', 20000);
  } else if (env == 'e2e') {
    // customize
  }
  karate.configure('connectTimeout', 30000);
  karate.configure('readTimeout', 30000);
    return config;
}