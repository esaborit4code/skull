require 'rails_helper'

describe Master do
  describe 'INGREDIENTS_TO_WIN' do
    it 'should be 5' do
      expect(described_class::INGREDIENTS_TO_WIN).to eq 5
    end
  end

  context 'with an assortment of resources in the game' do
    before { Rails.application.load_seed }

    context 'with Pepica and Blai as players' do
      let!(:pepica) { Player.create(name: 'Pepica') }
      let!(:blai) { Player.create(name: 'Blai') }

      describe '.find_winner' do
        subject { described_class.find_winner }

        context 'with no ingredients given to players' do
          it 'should return no winner' do
            expect(subject).to be_nil
          end
        end

        context 'with Pepica having 5 ingredients' do
          before { pepica.update(resources: Resource.where(item_type: 'Ingredient').first(5)) }

          it 'should return Pepica as the winner' do
            expect(subject).to eq pepica
          end
        end
      end
    end
  end
end
