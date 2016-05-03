class Bout < ActiveRecord::Base
  QUALIFYING = [
    ["Yes"],
    ["No"]
  ].freeze

  belongs_to :fencer
  validates :fencer, presence: true

end
