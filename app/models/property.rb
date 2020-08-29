class Property < ApplicationRecord
  belongs_to :user
  self.inheritance_column = "_"
end
