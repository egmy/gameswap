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