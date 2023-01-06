class Join < ApplicationRecord
  belongs_to :user
    serialize :roomjoin, Array
end
