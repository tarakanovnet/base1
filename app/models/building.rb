class Building < ApplicationRecord
belongs_to :territory
has_many :floors
end
