class User
  include Mongoid::Document

  field :first_name, type: String
  field :last_name, type: String
  field :age, type: Integer
  field :gender, type: Integer

  validates_presence_of :first_name, :last_name
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :gender, inclusion: { in: [ 0, 1, 2 ] }
end
