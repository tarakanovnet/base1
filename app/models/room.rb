class Room < ApplicationRecord
belongs_to :floor
has_many :workers

  def pos_x=(val)
    vals = val.split(/\s+/)
    self['pos_x'] = vals
  end
  def pos_y=(val)
    vals = val.split(/\s+/)
    self['pos_y'] = vals
  end
end
