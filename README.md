# :monkey: Jungle

A mini e-commerce application built with Rails 4.2.

## Final Product

![Screenshot of register functionality](https://github.com/racheldallaire/jungle-rails/blob/master/docs/register.gif)

Upon registration, users are automatically logged in and linked to existing Gravar accounts. They are then redirected to their profile page and may start shopping.

![Screenshot of checkout](https://github.com/racheldallaire/jungle-rails/blob/master/docs/checkout.gif)

App uses stripe to checkout purchases, and a confirmation is sent to the user-inputted email. Users are then redirected to a page confirming their order.

![Screenshot of prodcut reviews](https://github.com/racheldallaire/jungle-rails/blob/master/docs/review.gif)

Logged-in users can leave reviews of products. If a user is not logged-in, this functionality is not available.

## Project Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
