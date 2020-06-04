# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Route.destroy_all
Company.destroy_all

user1 = User.create(username: "richard3000", email: "richard@gmail.com" , password: "password" , img_url: "https://culturalvistas.org/cms/assets/uploads/2015/08/profilepif.jpg")
user2 = User.create(username: "ElliottSmelliott", email: "Ellie@gmail.com" , password: "password" , img_url: "https://semantic-ui.com/images/avatar/large/elliot.jpg")
user3 = User.create(username: "JennyLovesCats", email: "JennyJo@gmail.com" , password: "password" , img_url: "https://semantic-ui.com/images/avatar/large/jenny.jpg")


route1 = Route.create(name: "Trail XYZ",length: 10,difficulty: "Hard", surface: "Dirt", description: "This is a really long dirt trail...",tips: "Don't go alone",google_map: "http://bikewashington.org/trails/xdctrails.gif.pagespeed.ic.M0HhDzxwU0.webp" )
route2 = Route.create(name: "Trail ABC",length: 35,difficulty: "Easy", surface: "Paved", description: "This is a really long dirt trail...",tips: "Don't go alone",google_map: "http://bikewashington.org/trails/xdctrails.gif.pagespeed.ic.M0HhDzxwU0.webp" )
route3 = Route.create(name: "Trail Carli B",length: 75,difficulty: "Hard", surface: "Paved", description: "This is a really long dirt trail...",tips: "Don't go alone",google_map: "http://bikewashington.org/trails/xdctrails.gif.pagespeed.ic.M0HhDzxwU0.webp" )
route4 = Route.create(name: "Trail Jenny from the Block",length: 6,difficulty: "Moderate", surface: "Paved", description: "This is a really long dirt trail...",tips: "Don't go alone",google_map: "http://bikewashington.org/trails/xdctrails.gif.pagespeed.ic.M0HhDzxwU0.webp" )
route5 = Route.create(name: "Trail Mt. Vernon",length: 15,difficulty: "Easy", surface: "Mixed", description: "This is a really long dirt trail...",tips: "Don't go alone",google_map: "http://bikewashington.org/trails/xdctrails.gif.pagespeed.ic.M0HhDzxwU0.webp" )

favorite1 = FavoriteRoute.create(user_id: user1.id, route_id: route1.id, completed: false)
favorite2 = FavoriteRoute.create(user_id: user1.id, route_id: route2.id, completed: true)




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

    review1 = Review.create(user_id: user1.id, route_id: route1.id, rating: 4, comments: "My favorie roue in dc!")
    review2 = Review.create(user_id: user2.id, route_id: route1.id, rating: 2, comments: "A harder route than it looks! bring extra water!")

favComp1 = UserCompany.create(user_id: user1.id, company_id: company1.id, favorite: true )
favComp2 = UserCompany.create(user_id: user1.id, company_id: company2.id, favorite: true )
favComp3 = UserCompany.create(user_id: user1.id, company_id: company3.id, favorite: false )
