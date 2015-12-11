require 'rails_helper'

RSpec.describe Employee, type: :model do

  subject(:employee) { FactoryGirl.create :employee }

  context 'validation checks' do

    it 'works like the happiness we love' do
      expect(subject).to be_valid
    end

    it 'requires the first_name' do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end

    it 'requires the last_name' do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end

    it 'requires the position' do
      subject.position = nil
      expect(subject).to_not be_valid
    end

  end

end
