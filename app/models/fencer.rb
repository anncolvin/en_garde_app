class Fencer < ActiveRecord::Base

  has_many :bouts, dependent: :destroy
  belongs_to :user

  CATEGORIES = [
	["DV1"],
  ["DV2"],
  ["DV3"],
  ["CHR"],
  ["VET"],
  ["V40"],
  ["V50"],
  ["V60"],
  ["V70"],
  ["JR"],
  ["CDT"],
  ["Y14"],
  ["Y12"],
  ["Y10"]

  ].freeze

  validates :name, presence: true
  validates :user, presence: true
  validates :name, uniqueness: {
    scope: [:name],
    message: "already exists for this name"
  }

end
