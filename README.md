## Wynstore

<img width="1440" alt="wynstore" src="https://user-images.githubusercontent.com/55222951/72000513-79f2a780-3211-11ea-9c9e-1d7f4e60a5eb.png">

## Description

An e-commerce site mostly based on Ruby, Ruby on Rails, React.js and API for signed-up/guest account to purchase Wyncode Academy merchandises and admin account to manager orders.
* Use Taxjar gem to fetch different states sales rates and calculate combined tax for orders
* Take care of signed-up accounts, guest accounts and admin account which can handle orders statuses with Devise gem on Ruby on Rails
* Build payment system with Stripe API
* Use React to create interactive functions like carousel

## Check on Website

http://wynstore.herokuapp.com/

## How to Use

1. `rails db:drop db:creat db:migrate` 
2. `bundle`
3. `yarn`
4.  `rails s` or `PORT = **** rails s`
