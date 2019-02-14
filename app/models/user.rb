class User
  include Mongoid::Document

  has_one :shop

  field :first_name, type: String
  field :last_name, type: String
  field :age, type: Integer
  field :gender, type: Integer
  field :address, type: Hash, default: {'country': nil, 'adrress_1': nil, 'adrress_2':nil}

  validates_presence_of :first_name, :last_name
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # 0: male, 1: female, 2: others
  validates :gender, inclusion: { in: [ 0, 1, 2 ] }
end
