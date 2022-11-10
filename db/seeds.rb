# Seeds

# users
alice = User.create!(
    username: 'alice',
    password: 'password123',
    image: 'user_icon.png',
  )

# games

nba2k = Game.create!(
    title: 'NBA 2K23',
    description: "This is a basketball game",
    image: 'NBA 2k23.png'
)

madden22 = Game.create!(
    title: 'Madden NFL 22',
    description: 'This is a football game',
    image: 'Madden NFL 22.png'
)

# offers
#  accepted    :boolean
#  condition   :string  -> valid: 'New', 'Used-Like New', 'Used-Very Good', 'Used-Good', 'Used-Acceptable'
#  description :string
#  status      :string  -> valid: 'active', 'inactive', 'accepted'

offer_1 = Offer.create!(
    accepted: false,
    condition: "New",
    description: "This game is in mint condition...",
    status: "active"
)
offer_2 = Offer.create!(
    accepted: false,
    condition: "Used-Acceptable",
    description: "My dog ate it, but threw it back up. It still works.",
    status: "inactive"
)
offer_3 = Offer.create!(
    accepted: true,
    condition: "Used-Like New",
    description: "This is the collector's edition of Barbie and Her Sisters: Puppy Rescue. The case is scuffed, but the game is in mint condition.",
    status: "inactive"
)
#listings
nba2k_alice_listing= Listing.create!(
    description: 'I would like a sports game in exchange for this NBA2K. Condition is good, there are minor scratches',
    condition: 'Used-Good',
    status: 'active'
)
