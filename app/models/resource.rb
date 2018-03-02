class Resource < ApplicationRecord
  belongs_to :item, polymorphic: true
  belongs_to :player, optional: true
end
