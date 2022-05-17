require "open-uri"

puts "Destroy all data"
Wear.destroy_all
Closet.destroy_all
User.destroy_all

puts "Create users..."
yann = User.create!(name: "Yann", password: "nani2022", email: "yann.klein@me.com", admin: true)
User.create!(name: "Kana", password: "nani2022", email: "kana@me.com")
puts "Done!"

puts "Create closets..."
closet = Closet.new(name: "My closet", user: yann)
puts "Done!"

puts "Create wears..."
file = URI.open('https://mlcwwwbh0wmk.i.optimole.com/Tgj5NYU.KKMp~63161/w:510/h:510/q:mauto/https://www.uniandjack.co.uk/wp-content/uploads/2018/04/Maxomorra-organic-short-sleeve-red-t-shirt.jpg')
wear = Wear.create!(closet: closet, wear_type: "tshirt", color: "red")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')

file = URI.open('http://d1x7zurbps6occ.cloudfront.net/product/xlarge/358227-119908.jpg')
Wear.create!(closet: closet, wear_type: "tshirt", color: "green")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')

file = URI.open('https://www.wholesaleclearance.co.uk/uploads/products/93193.jpg')
Wear.create!(closet: closet, wear_type: "jeans", color: "blue")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')

file = URI.open('https://s3-eu-west-1.amazonaws.com/images.linnlive.com/fa277a4a27060ab10fac46d8ded1244b/c4e24d21-4f7f-4dbf-a84a-ff021b540db7.jpg')
Wear.create!(closet: closet, wear_type: "pants", color: "black")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')

puts "Done!"
