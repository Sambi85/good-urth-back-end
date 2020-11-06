require 'dotenv'
require 'faker'
Dotenv.load

Market.destroy_all
# Tent.destroy_all
Farmer.destroy_all

Item.destroy_all
Order.destroy_all
ItemOrder.destroy_all

Review.destroy_all
Message.destroy_all
User.destroy_all

### Markets w/ NYC API
manhattan = Market.market_grabber("Manhattan")
# brookyn = Market.market_grabber("Kings")
# queens = Market.market_grabber("Queens")
# bronx = Market.market_grabber("Bronx")
# statenIsland = Market.market_grabber("Richmond")
# new_york = Market.market_grabber("New York")

### Farmers
bio = [
    "Fresh Organic Produce",
    "Our crops are the best, buy from us",
    "Nothing like farm fresh, come try some of what we offer!",
    "You won't find a better stall for your shopping needs",
    "Come for the Carrots, stay for the broccoli!",
    "Long Island Fresh Produce",
    "We feed more than chickens and pigs, come on down to our stalls!",
    "From Farm to Plate, we commit to making the best organic produce!",
    "Upstate Local Produce at a reasonable rate !"
]

10.times do
    Farmer.create(
        market_id: Market.all.sample,
        username: Faker::Name.name,
        password_digest: "123",
        bio: bio.unique.all,
        address: `#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.zip}`,
        email: Faker::Internet.free_email,
        phone_number: Faker::PhoneNumber.area_code,
        open: "8:00am",
        close:"5:00pm", 
        days_open: Faker::Date.between(1.month.ago, Time.now).weekdays,
        is_open: Faker::Boolean.boolean(true_ratio: 0.75)
        )
    end

### 
5.times do
Item.create(
    farmer_id: Farmer.all.sample.uniq,
    name: ,
    price: ,
    purchase_unit: ,
    stock_amount: ,
    item_pulled: ,
)

end