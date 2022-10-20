class Wear < ApplicationRecord
  CATEGORY = [:jacket, :top, :bottom, :onepiece, :head, :shoes, :underwear, :other ]
  belongs_to :closet
  has_many :todays_items
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
    return :jacket if [
      :cardigan,:cloak,:coat,:jacket,:jumper,:poncho,
      :sweater,:tracksuit,:waistcoat
    ].include?(wear_type.to_sym)
    return :top if [
      :blouse,:bustier,:corset,:shirt,:tops,:tshirt
    ].include?(wear_type.to_sym)
    return :bottom if [
      :bloomers,:dungarees,:jeans,:kilt,
      :knickerbockers,:leggings,:legwarmers,
      :pants,:trousers,:petticoat,:shorts,
      :skirt,:skort
    ].include?(wear_type.to_sym)
    return :onepiece if [
      :blouse,:bodysuit,:caftan,:dress,
      :jumpsuit,:kimono,:leotard,:playsuit,
      :pyjamas,:sarong,:teddy
    ].include?(wear_type.to_sym)
    return :head if [
    ].include?(wear_type.to_sym)
    return :feet if [
      :shoes,:hills
    ].include?(wear_type.to_sym)
    return :underwear if [
      :panties,:bra,:tights
    ].include?(wear_type.to_sym)
    return :other if [
      :shawl,:sock,:swimsuit,:tie
    ].include?(wear_type.to_sym)
  end
end
