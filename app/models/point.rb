class Point < ActiveRecord::Base
  belongs_to :bout
  STATUSES = [
  ["Won"],
  ["Lost"],
  ["Double Touch"],

  ].freeze

  REASONCATEGORIES = [
  ["Technique"],
  ["Timing"],
  ["Distance"]

  ].freeze

  REASONS_HASH = {
    distance: [
      ["Too Close"],
      ["Too Far"],
    ]

  }

  REASONS = [
  ["Too Close"],
  ["Too Far"],
  ["Did Not Parry"],
  ["Reaction Time"],
  ["Hesitated"],
  ["Lunge"],
  ["Fleche"],
  ["Unsuccessful Parry"],
  ["Stance Exposed Target"],
  ["1"],
  ["2"],
  ["3"],
  ["4"],
  ["5"],
  ["6"],
  ["7"],
  ["8"]

  ].freeze

  validates :bout, presence: true

end
