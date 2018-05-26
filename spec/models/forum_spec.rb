require 'rails_helper'

RSpec.describe Forum, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  #it { is_expected.to have_many(:articles).dependent(:destroy) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name) }
end
