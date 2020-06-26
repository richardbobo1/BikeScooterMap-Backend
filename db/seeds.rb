# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Company.destroy_all


user1 = User.create(username: "richard", admin: true, first_name: "Richard", last_name:"Bobo", 
        email: "richard@gmail.com" , password: 'password' , 
        about_me: "Richard is a software engineer living in DC who enjoys long distance running and cycling.",
        img_url: "https://semantic-ui.com/images/avatar2/large/matthew.png")
user2 = User.create(username: "elliott", first_name: "Elliott", last_name:"Smith",
    email: "Ellie@gmail.com" , password: 'password' , 
    img_url: "https://semantic-ui.com/images/avatar/large/elliot.jpg")
user3 = User.create(username: "jenny", first_name: "Jenny", last_name:"Chung",
    email: "JennyJo@gmail.com" , password: 'password', 
    img_url: "https://semantic-ui.com/images/avatar/large/jenny.jpg")



# Companies
company1 = Company.create(
    name: "Capital Bike Share",
    start_price: 1.00,
    price_per_minute: 0.05,
    link_to_app: "https://www.capitalbikeshare.com/",
    link_to_website: "https://www.capitalbikeshare.com/",
    fetch_url: "https://gbfs.capitalbikeshare.com/gbfs/en/station_information.json"
    )

company2 = Company.create(
    name: "JUMP Bikes",
    start_price: 1.00,
    price_per_minute: 0.35,
    link_to_app: "https://www.jump.com/",
    link_to_website: "https://www.jump.com/",
    fetch_url: "https://gbfs.uber.com/v1/dcb/free_bike_status.json"
    )

company3 = Company.create(
    name: "Helbiz",
    start_price: 1.00,
    price_per_minute: 0.35,
    link_to_app: "https://www.helbiz.com/",
    link_to_website: "https://www.helbiz.com/",
    fetch_url: "https://api.helbiz.com/admin/reporting/washington/gbfs/free_bike_status.json"
    )


