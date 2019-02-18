require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_numericality_of(:age).greater_than_or_equal_to(0) }
    it { is_expected.to validate_inclusion_of(:gender).to_allow(0, 1, 2) }
  end

  describe '#relationships' do
    it { is_expected.to have_one(:shop) }
  end
end