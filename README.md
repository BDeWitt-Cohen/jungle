# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.
More features are being added for a fuller user and admin experience.

## Finished Product
* Home Page - User - Logged In
!["Home Page - User - Logged In"](https://github.com/BDeWitt-Cohen/jungle/blob/master/docs/Home%20Page%20-%20Logged%20In.png)
* Category View - User - Logged In
!["Category View - User - Logged In"](https://github.com/BDeWitt-Cohen/jungle/blob/master/docs/Categories%20-%20User.png)
* Add Products - Admin View
!["Add Products - Admin View"](https://github.com/BDeWitt-Cohen/jungle/blob/master/docs/Add%20Products%20-%20Admin.png)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
