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
wishlist = Closet.new(name: "My Wishlist", user: yann)
puts "Done!"

puts "Create wears..."
file = URI.open('https://cdn.shopify.com/s/files/1/1889/4591/products/red_custom_printed_next_level_100_ringspun_cotton_unisex_t_shirt.png?v=1511211183')
wear = Wear.create!(closet: closet, wear_type: "tshirt", color: "red")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')
wear.save

file = URI.open('https://www.yorkshirecnd.org.uk/wp-content/uploads/2014/05/t-shirt-CND-green.jpg')
wear = Wear.create!(closet: closet, wear_type: "tshirt", color: "green")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')
wear.save

file = URI.open('https://i5.walmartimages.com/asr/1706f77f-8b92-4ff8-bdf5-00275e312ffd.c8a8df8efc31fa003b8deb7f96c3edba.jpeg')
wear = Wear.create!(closet: closet, wear_type: "jeans", color: "blue")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')
wear.save

file = URI.open('https://s3-eu-west-1.amazonaws.com/images.linnlive.com/fa277a4a27060ab10fac46d8ded1244b/c4e24d21-4f7f-4dbf-a84a-ff021b540db7.jpg')
wear = Wear.create!(closet: closet, wear_type: "pants", color: "black")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')
wear.save

puts "Create wishlist wears..."
file = URI.open('https://static.shiekh.com/media/catalog/product/cache/image/2000x2000/e9c3970ab036de70892d86c6d221abfe/9/7/97f7495135ad8bc0b7b37f417e2f99a7.jpg')
wear = Wear.create!(closet: wishlist, wear_type: "tshirt", color: "blue")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')
wear.save

file = URI.open('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fen.yournewstyle.pl%2Ffiles%2Fclothes%2Fbig%2Fce54b4170a44d94bbd451ad8f30363c1.jpg')
wear = Wear.create!(closet: wishlist, wear_type: "jeans", color: "blue")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')
wear.save

file = URI.open('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi5.walmartimages.com%2Fasr%2Fe79f1f08-3c39-4d90-aa23-cc20c5d9dd51_1.bb3d234fbe35466af3bf19dbecf4841e.jpeg')
wear = Wear.create!(closet: wishlist, wear_type: "pants", color: "brown")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')
wear.save

file = URI.open('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.shopify.com%2Fs%2Ffiles%2F1%2F0070%2F7032%2Ffiles%2Ft-shirt-business-quality-product.jpg%3Fv%3D1597403404&f=1&nofb=1')
wear = Wear.create!(closet: wishlist, wear_type: "tshirt", color: "brown")
wear.photo.attach(io: file, filename: 'image.jpg', content_type: 'image/jpg')
wear.save



puts "Done!"
