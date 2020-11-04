require 'dotenv'
Dotenv.load

Market.destroy_all
Tent.destroy_all
Farmer.destroy_all

Item.destroy_all
Order.destroy_all
ItemOrder.destroy_all

Review.destroy_all
Message.destroy_all
User.destroy_all

