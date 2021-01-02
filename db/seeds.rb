require 'dotenv'
require 'faker'
require 'pexels'

Dotenv.load
client = Pexels::Client.new(ENV['PEXELS_API_KEY'])

Market.destroy_all
Farmer.destroy_all
Schedule.destroy_all

Item.destroy_all
Order.destroy_all
ItemOrder.destroy_all

Review.destroy_all
Message.destroy_all
User.destroy_all

### Markets w/ NYC API
manhattan = Market.market_grabber("New York")
brookyn = Market.market_grabber("Kings")
queens = Market.market_grabber("Queens")
bronx = Market.market_grabber("Bronx")
statenIsland = Market.market_grabber("Richmond")

### Farmers
bio = ["Fresh Organic Produce","Our crops are the best, buy from us","Nothing like farm fresh, come try some of what we offer!",
"You won't find a better stall for your shopping needs","Come for the Carrots, stay for the broccoli!","Long Island Fresh Produce",
"We feed more than chickens and pigs, come on down to our stalls!","From Farm to Plate, we commit to making the best organic produce!",
"Upstate Local Produce at a reasonable rate !"]

days_of_the_week = ["monday","tuesday","wednesday","thursday","friday","saturday","sunday "]


### Note: phone number is a string data type
10.times do
    Farmer.create!(
        username: Faker::Name.name,
        password_digest: "123",
        bio: "yum",
        address: Faker::Address.street_address,
        email: Faker::Internet.free_email,
        phone_number: Faker::PhoneNumber.cell_phone,
        open: "8:00am",
        close:"5:00pm", 
        days_open: "mondays thru fridays",
        is_open: Faker::Boolean.boolean(true_ratio: 0.75)
        )
end

### Schedule
131.times do 
    Schedule.create!(
        market_id: Market.all.uniq.sample.id,
        farmer_id: Farmer.all.sample.id,
        days_of_the_week: "monday, wednesday, friday"
        )
end

### Items
client.photos.search('tomatoes', per_page: 10).photos.each do |photo|
    Item.create!(
        farmer_id: Farmer.all.sample.id,
        name: "Heirloom Tomatoes",
        price: 5.99,
        purchase_unit: "/lb.",
        stock_amount: "50",
        item_pulled: false,
        url: photo.src.values[2]
        )
end

client.photos.search('corn', per_page: 10).photos.each do |photo|
    Item.create!(
        farmer_id: Farmer.all.sample.id,
        name: "Local Upstate Corn",
        price: 5.99,
        purchase_unit: "/lb.",
        stock_amount: "20",
        item_pulled: false,
        url: photo.src.values[2]
        )
end

client.photos.search('eggs', per_page: 10).photos.each do |photo|
    Item.create!(
        farmer_id: Farmer.all.sample.id,
        name: "Local Upstate Corn",
        price: 6.00,
        purchase_unit: "1/2 dozen",
        stock_amount: "20",
        item_pulled: false,
        url: photo.src.values[2]
        )
end

client.photos.search('butter', per_page: 10).photos.each do |photo|
    Item.create!(
        farmer_id: Farmer.all.sample.id,
        name: "Local Upstate Corn",
        price: 8.00,
        purchase_unit: "lb.",
        stock_amount: "20",
        item_pulled: false,
        url: photo.src.values[2]
        )
end

client.photos.search('Thyme', per_page: 10).photos.each do |photo|
    Item.create!(
        farmer_id: Farmer.all.sample.id,
        name: "Fresh-Cut Thyme",
        price: 2.00,
        purchase_unit: "bch.",
        stock_amount: "20",
        item_pulled: false,
        url: photo.src.values[2]
        ) 
end

client.photos.search('Bread', per_page: 10).photos.each do |photo|
    Item.create!(
        farmer_id: Farmer.all.sample.id,
        name: "Fresh Baked Bread",
        price: 4.50,
        purchase_unit: "each",
        stock_amount: "20",
        item_pulled: false,
        url: photo.src.values[2]
        )
end

client.photos.search('Pies', per_page: 10).photos.each do |photo|
    Item.create!(
        farmer_id: Farmer.all.sample.id,
        name: "Assorted Pies",
        price: 6.50,
        purchase_unit: "each",
        stock_amount: "20",
        item_pulled: false,
        url: photo.src.values[2]
        )
end

client.photos.search('Portrait', per_page: 1).photos.each do |photo|
    User.create(
        username: "Tobi Flenderson",
        password_digest: "123",
        bio: "Ever since I was divorced, I've really been into local sourced produce",
        email: "tobi@hr_dundermifflen.com",
        phone_number: "1234567890",
        avatar: photo.src.values[3]
        )
end

client.photos.search('Portrait', per_page: 1).photos.each do |photo|
    User.create(
        username: "Michael Gary Scott",
        password_digest: "123",
        bio: "I'm the best boss, because people like me !",
        email: "MikeyScottYo@yahoo.com",
        phone_number: "1234567890",
        avatar: photo.src.values[3]
        )
end

10.times do 
     Order.create!(
        user_id: User.all.sample.id,
        total: (100.00 * 0.80 + 100.00).to_f ,
        subtotal: 100.00 ,
        tax: 100.00 * 0.8,
        pick_up: true
    )
end

10.times do 
    ItemOrder.create!(
        item_id: Item.all.sample.id,
        order_id: Order.all.sample.id,
        quantity: Faker::Number.between(from: 1, to: 5),
        paid: false
    )
end


