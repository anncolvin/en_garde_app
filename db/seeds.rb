user1 = User.find_by(email: "fencingcoach@example.com")
unless user1.present?
  user1 = User.create(
    user_name: "fencingcoach1",
    email: "fencingcoach@example.com",
    password: "ilovefencing",
    password_confirmation: "ilovefencing"
)
end

fencer1 = Fencer.find_or_create_by(
  name: "Alicia",
  dominant_hand: "Right",
  letter_rating: "U",
  profile_photo: "http://www.absolutefencing.com.sg/wordpress/wp-content/uploads/2012/12/Nicolette-Profile.jpg",
  notes: "Not interested in competing. All around great fencer with strong commitment to training. Working on becoming more aggressive and not hesitating.",
  user: user1

)

fencer2 = Fencer.find_or_create_by(
name: "Ann",
dominant_hand: "Right",
letter_rating: "U",
notes: "Significant progress on her technique, especially parries. Slow reaction time. Occassionally hesitates.",
user: user1
)

fencer3 = Fencer.find_or_create_by(
name: "Ernest",
dominant_hand: "Left",
profile_photo: "http://vivofencingclub.com/wp-content/uploads/Aaron-larger-file-e1379030339588.jpeg",
letter_rating: "C",
notes: "Ernest is very interested in continuing to advance through qualifying tournaments. Expect that he will compete in Nationals this year.",
user: user1
)

fencer4 = Fencer.find_or_create_by(
name: "Hannah",
dominant_hand: "Right",
letter_rating: "A",
profile_photo: "http://40.media.tumblr.com/d87b1eff19bda1574969b637b63d6461/tumblr_n2gk4jkSQJ1qkgjfwo1_400.jpg",
category: "DV1",
notes: "Currently ranked 96th in US. She will be competing on her college team when she attends next year.",
user: user1
)

fencer5 = Fencer.find_or_create_by(
name: "Nehal",
dominant_hand: "Right",
letter_rating: "D",
category: "Y14",
notes: "Footwork is much improved. She still needs practice with left-handed fencers.",
user: user1
)

fencer6 = Fencer.find_or_create_by(
name: "Bob",
dominant_hand: "Right",
profile_photo: "http://www.absolutefencing.com.sg/wordpress/wp-content/uploads/2012/12/ZZG-Profile.jpg",
letter_rating: "U",
notes: "New member with no prior fencing experience.",
user: user1
)

fencer7 = Fencer.find_or_create_by(
name: "Tom",
dominant_hand: "Right",
letter_rating: "B",
category: "V50",
notes: "Experienced fencer looking to maintain current level",
user: user1
)

fencer8 = Fencer.find_or_create_by(
name: "Chris",
dominant_hand: "Right",
letter_rating: "U",
notes: "Beginner level. He just completed the first level of group lessons.",
user: user1
)

fencer9 = Fencer.find_or_create_by(
name: "Sofia",
dominant_hand: "Right",
letter_rating: "C",
category: "Y14",
notes: "Sofia has a lot of potential. She needs to practice with a wider variety of fencers.",
user: user1
)

fencer10 = Fencer.find_or_create_by(
name: "Jenny",
dominant_hand: "Right",
letter_rating: "U",
notes: "New fencer that expressed an interest in private lessons.",
user: user1
)

fencer11 = Fencer.find_or_create_by(
name: "Carson",
dominant_hand: "Right",
letter_rating: "U",
notes: "Carson needs to keep working on fleching.",
user: user1
)

# f3_bout1 = Bout.find_or_create_by()
# fencer: fencer3,
# location: "Pomme de Terre",
# qualifying: "Yes",
# notes: "This was a heartbreaker but I was really proud of his fencing."
#
# f3_bout2 = Bout.find_or_create_by()
# fencer: fencer3,
# location: "Pomme de Terre",
# qualifying: "Yes"
#
# f3_bout3 = Bout.find_or_create_by()
# fencer: fencer3,
# location: "Pomme de Terre",
# qualifying: "Yes",
# # notes: "Nicely done! His work on parrying really paid off!"
#
# f3_bout4 = Bout.find_or_create_by()
# fencer_id: fencer3

# f3_bout5 = Bout.find_or_create_by()
# fencer: fencer3
#
# f3_bout6 = Bout.find_or_create_by()
# fencer: fencer3
#
# f3_bout7 = Bout.find_or_create_by()
# fencer: fencer3
#
# f3_bout8 = Bout.find_or_create_by()
# fencer: fencer3
#
# f3_bout9 = Bout.find_or_create_by()
# fencer: fencer3
#
# f3_bout10 = Bout.find_or_create_by()
# fencer: fencer3
#
# f3_bout11 = Bout.find_or_create_by()
# fencer: fencer3
#
# f3_bout12 = Bout.find_or_create_by()
# fencer: fencer3
#
# f3_bout13 = Bout.find_or_create_by()
# fencer: fencer3
#
# f3_bout14 = Bout.find_or_create_by()
# fencer: fencer3
#
# f3_bout15 = Bout.find_or_create_by()
# fencer: fencer3
