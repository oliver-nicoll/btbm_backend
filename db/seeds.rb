# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Product.create(
    name: "Haitian Blue Mountain",
    image: "https://images.unsplash.com/photo-1580933073521-dc49ac0d4e6a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80",
    category: "Food",
    description: "Medium Roast - 1 lb of coffee beans from Bason Coffee Roasting - Grind: Drip",
    price: 12.00,
    stock: 25
)

Product.create(
    name: "Colombian Supremo Medium Roast",
    image: "https://images.unsplash.com/photo-1580933073521-dc49ac0d4e6a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80",
    category: "Food",
    description: "1 lb of coffee beans from Bason Coffee Roasting - Grind: Drip",
    price: 8.00,
    stock: 25
)

Product.create(
    name: "Fall Wildflower Honey",
    image: "https://images.unsplash.com/photo-1550411294-098af68c8c2d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
    category: "Food",
    description: "Keiner's Apiary local honey - Save our bees!",
    price: 9.50,
    stock: 25
)

Product.create(
    name: "Wildflower Honey",
    image: "https://images.unsplash.com/photo-1550411294-098af68c8c2d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
    category: "Food",
    description: "Keiner's Apiary local honey - Save our bees!",
    price: 9.50,
    stock: 30
)

Product.create(
    name: "Ginger Peach - Gayle's Kombucha",
    image: "https://gayleskombucha.com/wp-content/uploads/2020/05/Six-bottles-on-back-porch-rail-2048x1099.jpg",
    category: "Drinks",
    description: "The zesty flavor of ginger paired with peaches giving this kombucha a finishing taste of fresh picked peaches.",
    price: 6.50,
    stock: 15
)

Product.create(
    name: "Mountains",
    image: "https://scontent-iad3-2.xx.fbcdn.net/v/t1.6435-9/185039451_291915769084557_8742994522455112830_n.jpg?_nc_cat=100&ccb=1-3&_nc_sid=a26aad&_nc_ohc=4gUVXbOkNKQAX_9-_ej&_nc_ht=scontent-iad3-2.xx&oh=53a477d56c5b660cdaa0997d9e95c6b3&oe=60CC3369",
    category: "Decor",
    description: "To the mountains we go to find ourselves. Kerri Lovette Designs",
    price: 60,
    stock: 5
)

Product.create(
    name: "Wall Mount Grandma Clip Sign",
    image: "https://scontent-iad3-2.xx.fbcdn.net/v/t1.6435-9/182341554_288599946082806_6853644690957395965_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=a26aad&_nc_ohc=e5tl8a32xwIAX9lhTbb&_nc_oc=AQm2V4xIJx_o5nvo3hgBCmhLyAzlcHrpApy1nIzZbHOIJI1rnFQEu1NV8cy7ye6q36A&_nc_ht=scontent-iad3-2.xx&oh=3506b27335fc5feeaf35e86991218fa9&oe=60CE8118",
    category: "Decor",
    description: "My greatest blessing call me GRANDMA. Kerri Lovette Designs",
    price: 25,
    stock: 5
)

Product.create(
    name: "Wall Mount Mom Clip Sign",
    image: "https://scontent-iad3-2.xx.fbcdn.net/v/t1.6435-9/182055609_287952156147585_3085251966797354300_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=a26aad&_nc_ohc=0POLkfek-GgAX8eF-bk&_nc_ht=scontent-iad3-2.xx&oh=70857f350e9587e6ee31e3ebe1b39214&oe=60CD465B",
    category: "Decor",
    description: "If mothers were flowers I would pick you. Kerri Lovette Designs",
    price: 25,
    stock: 5
)

Product.create(
    name: "Wood Earrings",
    image: "https://scontent-iad3-2.xx.fbcdn.net/v/t1.6435-9/183087838_290053052604162_6443301198184404802_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=a26aad&_nc_ohc=4G1H9HTfZIAAX83D5pR&_nc_ht=scontent-iad3-2.xx&oh=f1bcd4b73a38b42db6a30a2caaf3d376&oe=60CF9C3F",
    category: "Fashion",
    description: "Come see my new hobby with wood earring. Light and non allergenic metal used. Kerri Lovette Designs",
    price: 18,
    stock: 5
)