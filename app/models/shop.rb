class Shop
  include Mongoid::Document
  belongs_to :user
end
