# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(4).is_at_most(128) }
  end

  describe 'mehthods' do
    subject { create(:author) }

    describe '#to_s' do
      it { expect(subject.to_s).to eq(subject.name) }
    end
  end
end
