# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    %i[title author code].each do |attribute|
      it { should validate_presence_of(attribute) }
      it { should validate_length_of(:title).is_at_least(4).is_at_most(128) }
    end
  end

  describe 'mehthods' do
    subject { create(:book) }

    describe '#to_s' do
      it { expect(subject.to_s).to eq(subject.title) }
    end
  end
end
