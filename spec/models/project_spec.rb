require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'validations' do
    describe 'all columns is valid' do
      let(:project) { build(:project) }

      it 'is valid' do
        expect(project.valid?).to be true
      end
    end

    describe 'name is not presence' do
      let(:project) { build(:project, name: '') }

      it 'is invalid' do
        expect(project.valid?).to be false
      end
    end

    describe 'name is too long' do
      let(:project) { build(:project, :too_long_name) }

      it 'is invalid' do
        expect(project.valid?).to be false
      end
    end
  end
end
