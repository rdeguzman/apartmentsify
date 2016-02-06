# apartmentsify
Apartment Services Startup

	RAILS_ENV=production rake assets:clean assets:precompile

## Assets

Before deploying, ensure to precompile the assets and commit

	RAILS_ENV=production rake assets:clean assets:precompile 


## Deployment

### First Time Deployment

1. Run bundle install

		bundle install -V --deployment --quiet --without development test
	
2. secrets key

		Upload config/secrets.yml
		
3. Upload app_env_vars.rb to shared/

		app_env_vars.rb -> /srv/rails/apartmentsify/shared/app_env_vars.rb		

### Normal Deployment

Currently not using capistrano

		cd /srv/rails/apartmentsify/current/config/initializers
		git pull
		sudo /etc/init.d/apache2 restart
		
## Test Users

	rupert@datalinktech.com.au - Normal User
	rupert@2rmobile.com - Facebook Landlord
	rndguzmanjr@gmail.com - Facebook Tenant		
