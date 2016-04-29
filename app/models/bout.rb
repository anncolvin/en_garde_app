class Bout < ActiveRecord::Base
  QUALIFYING = [
    ["Yes"],
    ["No"]
  ]
  belongs_to :fencer
  validates :fencer, presence: true

end
