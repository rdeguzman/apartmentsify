# apartmentsify
Apartment Services Startup

	RAILS_ENV=production rake assets:clean assets:precompile

## Assets

Before deploying, ensure to precompile the assets and commit

	RAILS_ENV=production rake assets:clean assets:precompile 


## Deployment

1. Run bundle install

		bundle install -V --deployment --quiet --without development test
	
2. secrets key

		config/secrets.yml

