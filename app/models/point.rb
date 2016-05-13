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
      ["Too Far"]
    ], timing: [
      ["Reaction Time"],
      ["Hesitated"]
    ], technique: [
      ["Did Not Parry"],
      ["Did Not Attack"],
      ["Failed Attack"],
      ["Lunge"],
      ["Advance"],
      ["Retreat"],
      ["Fleche"],
      ["Unsuccessful Parry"],
      ["Stance Exposed Target"],
      ["Riposte"],
      ["Disengage"]
    ]
  }

  REASONS = [
  ["Too Close"],
  ["Too Far"],
  ["Reaction Time"],
  ["Hesitated"],
  ["Did Not Parry"],
  ["Did Not Attack"],
  ["Failed Attack"],
  ["Lunge"],
  ["Advance"],
  ["Retreat"],
  ["Fleche"],
  ["Unsuccessful Parry"],
  ["Stance Exposed Target"],
  ["Riposte"],
  ["Disengage"]


  ].freeze

  validates :bout, presence: true

end
