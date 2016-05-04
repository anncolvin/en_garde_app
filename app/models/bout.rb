class Bout < ActiveRecord::Base
  QUALIFYING = [
    ["Yes"],
    ["No"]
  ].freeze

  has_many :points
  belongs_to :fencer
  validates :fencer, presence: true

end
