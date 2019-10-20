class Event < ApplicationRecord
  belongs_to :club,  optional: true

end
