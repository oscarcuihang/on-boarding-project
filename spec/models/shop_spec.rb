require 'rails_helper'

RSpec.describe Shop, type: :model do
  describe '#relationships' do
    it { is_expected.to belong_to(:user) }
  end
end
