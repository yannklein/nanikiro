puts "Destroy all data"
User.destroy_all
Closet.destroy_all
Wear.destroy_all

puts "Create users..."
yann = User.create!(name: "Yann", password: "nani2022", email: "yann.klein@me.com", admin: true)
User.create!(name: "Kana", password: "nani2022", email: "kana@me.com")
puts "Done!"

puts "Create closets..."
closet = Closet.new(name: "My closet", user: yann)
puts "Done!"

puts "Create wears..."
Wear.create!(closet: closet, wear_type: "tshirt", color: "red")
Wear.create!(closet: closet, wear_type: "tshirt", color: "green")
Wear.create!(closet: closet, wear_type: "tshirt", color: "blue")
puts "Done!"
