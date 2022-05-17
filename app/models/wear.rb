class Wear < ApplicationRecord
  belongs_to :closet
  has_one_attached :photo
  enum season: [:summer, :spring, :winter, :fall]
  enum color: [:white,:black,:grey,:yellow,:red,:blue,:green,:brown,:pink,:orange,:purple]
  enum wear_type: [
    :bloomers,:blouse,:bodysuit,:bra,:bustier,:caftan,
    :cardigan,:cloak,:coat,:corset,:dress,:dungarees,
    :jacket,:jeans,:jumper,:jumpsuit,:kilt,:kimono,
    :knickerbockers,:leggings,:legwarmers,:leotard,
    :panties,:pants,:trousers,:petticoat,:playsuit,
    :poncho,:pyjamas,:sarong,:shawl,:shirt,:shorts,
    :skirt,:skort,:sock,:sweater,:swimsuit,:teddy,
    :tie,:tights,:tops,:tracksuit,:waistcoat,
    :shoes,:hills,:tshirt
  ]
  
  def category
    :top_jacket if [
      :cardigan,:cloak,:coat,:jacket,:jumper,:poncho,
      :sweater,:tracksuit,:waistcoat
    ].include?(type)
    :top if [
      :blouse,:bustier,:corset,:shirt,:tops,:tshirt
    ].include?(type)
    :bottom if [
      :bloomers,:dungarees,:jeans,:kilt,
      :knickerbockers,:leggings,:legwarmers,
      :pants,:trousers,:petticoat,:shorts,
      :skirt,:skort
    ].include?(type)
    :onepiece if [
      :blouse,:bodysuit,:caftan,:dress,
      :jumpsuit,:kimono,:leotard,:playsuit,
      :pyjamas,:sarong,:teddy
    ].include?(type)
    :head if [
    ].include?(type)
    :shoes if [
      :shoes,:hills
    ].include?(type)
    :underwear if [
      :panties,:bra,:tights
    ].include?(type)
    :other if [
      :shawl,:sock,:swimsuit,:tie
    ].include?(type)
  end
end
