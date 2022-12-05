# Seeds

# USERS

    alice = User.create!(
        username: 'alice',
        email: 'alice@email.com',
        password: 'password123',
        image: 'user_icon.png',
        description: "This is Alice's description."
    )

    bob=User.create!(
        username: 'bob',
        email: 'bob@email.com',
        password: 'password234',
        image: 'user_icon.png',
        description: "This is Bob's description."
    )

    eric=User.create!(
        username: 'eric',
        email: 'eric@email.com',
        password: 'password234',
        image: 'user_icon.png',
        description: "This is Eric's description."
    )

    joe=User.create!(
        username: 'joe',
        email: 'joe@email.com',
        password: 'password234',
        image: 'user_icon.png',
        description: "This is Joe's description."
    )




# TAGS

    action    = Tag.create!(name: 'Action')
    adventure = Tag.create!(name: 'Adventure')
    fighting  = Tag.create!(name: 'Fighting')
    indie     = Tag.create!(name: 'Indie')
    racing    = Tag.create!(name: 'Racing')
    rpg       = Tag.create!(name: 'Role-playing')
    shooter   = Tag.create!(name: 'Shooter')
    sim       = Tag.create!(name: 'Simulation')
    sports    = Tag.create!(name: 'Sports')

# GAMES

    advancedWarfare = Game.create!(
        title: 'Call of Duty: Advanced Warfare',
        description: 'Call of Duty: Advanced Warfare, developed by Sledgehammer Games (co-developers of Call of Duty®: Modern Warfare® 3), harnesses the first three-year, all next-gen development cycle in franchise history. Call of Duty®: Advanced Warfare envisions the powerful battlegrounds of the future, where both technology and tactic have evolved to usher in a new era of combat for the franchise. Delivering a stunning performance, Academy Award® winning actor Kevin Spacey stars as Jonathan Irons – one of the most powerful men in the world – shaping this chilling vision of the future of war.',
        image: 'Call of Duty Advanced Warfare.png',
        tag: shooter
    )

    blackOps4 = Game.create!(
        title: 'Call of Duty: Black Ops 4',
        description: 'Black Ops is back! Featuring gritty, grounded Multiplayer combat, the biggest Zombies offering ever with three full undead adventures at launch, and Blackout, where the universe of Black Ops comes to life in a massive battle royale experience.',
        image: 'Call of Duty Black Ops 4.png',
        tag: shooter
    )

    blackOps3 = Game.create!(
        title: 'Call of Duty: Black Ops 3',
        description: 'Welcome to Call of Duty: Black Ops III, a dark, twisted future where a new breed of Black Ops soldier emerges and the lines are blurred between our own humanity and the technology we created to stay ahead, in a world where cutting-edge military robotics define warfare.',
        image: 'Call of Duty Black Ops 3.png',
        tag: shooter
    )

    coldWar = Game.create!(
        title: 'Call of Duty: Black Ops Cold War',
        description: 'CoD Black Ops Cold War will drop fans into the depths of the Cold War’s volatile geopolitical battle of the early 1980s. Nothing is ever as it seems in a gripping single-player Campaign, where players will come face-to-face with historical figures and hard truths, as they battle around the globe through iconic locales like East Berlin, Vietnam, Turkey, Soviet KGB headquarters and more.',
        image: 'Call of Duty Black Ops Cold War.png',
        tag: shooter
    )

    advancedWarfare = Game.create!(
        title: 'Call of Duty: Modern Warfare',
        description: 'Call of Duty: Advanced Warfare envisions the powerful battlegrounds of the future, where both technology and tactic have evolved to usher in a new era of combat for the franchise. Delivering a stunning performance, Academy Award® winning actor Kevin Spacey stars as Jonathan Irons – one of the most powerful men in the world – shaping this chilling vision of the future of war.',
        image: 'Call of Duty Modern Warfare.png',
        tag: shooter,
    )

    destiny2 = Game.create!(
        title: 'Destiny 2',
        description: "Dive into the world of Destiny 2 to explore the mysteries of the solar system and experience responsive first-person shooter combat. Unlock powerful elemental abilities and collect unique gear to customize your Guardian's look and playstyle. Enjoy Destiny 2’s cinematic story, challenging co-op missions, and a variety of PvP modes alone or with friends.",
        image: 'Destiny 2.png',
        tag: shooter
    )

    destiny = Game.create!(
        title: 'Destiny',
        description: 'Destiny is a next generation first person shooter featuring an unprecedented combination of cinematic storytelling, cooperative, competitive, and public gameplay, and personal activities that are woven into an expansive, persistent online world. Venture out alone or join up with friends. The choice is yours.',
        image: 'Destiny.png',
        tag: shooter
    )

    forza2 = Game.create!(
        title: 'Forza Horizon 2',
        description: 'A world of beauty and freedom awaits in Forza Horizon 2! Explore a beautiful open world with dynamic day, night and spectacular weather effects in stunning 1080p. Drive 200+ cars in epic road trips through a massive, wide-open world of freedom.',
        image: 'Forza Horizon 2.png',
        tag: racing
    )

    forza3 = Game.create!(
        title: 'Forza Horizon 3',
        description: "Star in thrilling Showcase events that pit you and your car against a fleet of speed boats, even a giant airship! HIRE AND FIRE FRIENDS You're the boss. Hire your friends' Drivatars to help you gain fans and expand your festival, and form Convoys with them to explore the world even when they're not online.",
        image: 'Forza Horizon 3.png',
        tag: racing
    )

    forza4 = Game.create!(
        title: 'Forza Horizon 4',
        description: 'Go it alone or team up with others to explore beautiful and historic Britain in a shared open world. Collect, modify and drive over 450 cars. Race, stunt, create and explore – choose your own path to become a Horizon Superstar. ',
        image: 'Forza Horizon 4.png',
        tag: racing
    )

    forza5 = Game.create!(
        title: 'Forza Motorsport 5',
        description: "Forza Motorsport 5 is a cinematic automotive journey starring the world's greatest cars and tracks. Built from the ground up to take advantage of Xbox One and the vast power of the cloud, no game better delivers the wide-eyed thrill of racing.",
        image: 'Forza Motorsport 5.png',
        tag: racing
    )

    gta5 = Game.create!(
        title: 'Grand Theft Auto 5',
        description: 'Pull off daring co-operative Heists, enter adrenaline-fueled Stunt Races, compete in unique Adversary Modes, or hang out in social spaces including nightclubs, arcades, penthouse parties, car meetups, and much more.',
        image: 'Grand Theft Auto 5.png',
        tag: action
    )

    halo5 = Game.create!(
        title: 'Halo 5 Guardians',
        description: 'Halo 5: Guardians delivers epic multiplayer experiences that span multiple modes, full-featured level building tools, and a new chapter in the Master Chief saga. Play with friends and compete against rivals in three massive multiplayer modes new to the Halo franchise: Warzone, Warzone Assault, and Warzone Firefight.',
        image: 'Halo 5 Guardians.png',
        tag: shooter
    )

    madden20 = Game.create!(
        title: 'Madden NFL 20',
        description: "Be the Face of an NFL franchise where the decisions you make matter in your journey to become an NFL Superstar in 'FACE OF THE FRANCHISE: QB1'. Feel the emotion, personality, and power of NFL Superstars with 'SUPERSTAR XFACTOR', an all-new abilities progression system that reveals special abilities for today's most exciting NFL Superstars heightening the level strategy and excitement in every game.",
        image: 'Madden NFL 20.png',
        tag: sports
    )

    madden21 = Game.create!(
        title: 'Madden NFL 21',
        description: 'Madden NFL 21 delivers innovation including: Face of the franchise: Rise to fame: Rise to fame and become immortalized in Madden NFL 21 as you transcend NFL history and shape your path to greatness. Take control: Master all-new running enhancements and live playbooks to drive up the score in Madden NFL 21.',
        image: 'Madden NFL 21.png',
        tag: sports
    )

    madden22 = Game.create!(
        title: 'Madden NFL 22',
        description: 'Take down the competition, hone your skills, and build your fantasy roster with Madden 22 Face of the Franchise, The Yard, and Ultimate Team in this highly-anticipated NFL football video game.',
        image: 'Madden NFL 22.png',
        tag: sports
    )

    madden23 = Game.create!(
        title: 'Madden NFL 23',
        description: 'Control your impact with every decision in all-new ways. Call the shots in Franchise with free agency and trade logic updates, play your way into the history books in Face of the Franchise: The League, and assemble the most powerful roster in all of Madden Ultimate Team™.',
        image: 'Madden NFL 23.png',
        tag: sports
    )

    mortalKombat10 = Game.create!(
        title: 'Mortal Kombat 10',
        description: "Who's Next? Experience the Next Generation of the #1 Fighting Franchise.
        Mortal Kombat X combines unparalleled, cinematic presentation with all new gameplay. For the first time, players can choose from multiple variations of each character impacting both strategy and fighting style.Who’s Next? Experience the Next Generation of the #1 Fighting Franchise.",
        image: 'Mortal Kombat 10.png',
        tag: fighting
    )

    mortalKombat11 = Game.create!(
        title: 'Mortal Kombat 11',
        description: "Mortal Kombat is back and better than ever in the next evolution of the iconic franchise. The all new Custom Character Variations give you unprecedented control to customize the fighters and make them your own. The new graphics engine showcasing every skull-shattering, eye-popping moment, brings you so close to the fight you can feel it. And featuring a roster of new and returning Klassic Fighters, Mortal Kombat's best in class cinematic story mode continues the epic saga over 25 years in the making.",
        image: 'Mortal Kombat 11.png',
        tag: fighting
    )

    nba2k20 = Game.create!(
        title: 'NBA 2K20',
        description: "NBA 2K has evolved into much more than a basketball simulation. 2K continues to redefine what's possible in sports gaming with NBA 2K20, featuring best in class graphics & gameplay, ground breaking game modes, and unparalleled player control and customization. Plus, with its immersive open-world Neighborhood, NBA 2K20 is a platform for gamers and ballers to come together and create what's next in basketball culture.",
        image: 'NBA 2K20.png',
        tag: sports
    )

    nba2k21 = Game.create!(
        title: 'NBA 2K21',
        description: "NBA 2K21 is the latest release in the world-renowned, best-selling NBA 2K series. 2K21 leads the charge with next-gen innovations, while continuing to deliver an industry-leading sports video game experience on the current generation of gaming platforms. With extensive improvements upon its best-in-class graphics and gameplay, competitive and community online features, and deep, varied game modes, NBA 2K21 offers one-of-a-kind immersion into all facets of NBA basketball and culture - where Everything is Game.",
        image: 'NBA 2K21.png',
        tag: sports
    )

    nba2k22 = Game.create!(
        title: 'NBA 2K22',
        description: "A WORLD OF BASKETBALL. NBA 2K22 puts the entire basketball universe in your hands. PLAY NOW in real NBA and WNBA environments against authentic teams and players. Build your own dream team in MyTEAM with today's stars and yesterday's legends. Live out your own pro journey in MyCAREER and experience your personal rise to the NBA. Flex your management skills as a powerful Executive in MyGM and MyLEAGUE. Anyone, anywhere can hoop in NBA 2K22.",
        image: 'NBA 2K22.png',
        tag: sports
    )


    nba2k23 = Game.create!(
        title: 'NBA 2K23',
        description: "Become the MVP of the league with NBA 2K23 on Xbox One! Play as some of the biggest names in the NBA or write your own legacy in MyCAREER. Redefine the game as you put together your dream team in MyTEAM and develop your skills on the court with authentic gameplay in this iconic basketball video game.",
        image: 'NBA 2K23.png',
        tag: sports
    )

    redDead2 = Game.create!(
        title: 'Red Dead Redemption 2',
        description: "The end of the Wild West era has begun. After a robbery gone wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.
        Now featuring additional Story Mode content and a fully-featured Photo Mode, Red Dead Redemption 2 also includes free access to the shared living world of Red Dead Online, where players take on an array of roles to carve their own unique path on the frontier as they track wanted criminals as a Bounty Hunter, create a business as a Trader, unearth exotic treasures as a Collector or run an underground distillery as a Moonshiner and much more.",
        image: 'Red Dead Redemption 2.png',
        tag: action
    )

    rocketLeague = Game.create!(
        title: 'Rocket League',
        description: "Rocket League is futuristic Sports-Action game, in which players are equipped with booster-rigged vehicles that can be crashed into balls for incredible goals or epic saves across multiple, highly-detailed arenas. Using an advanced physics system to simulate realistic interactions, Rocket League relies on mass and momentum to give players a complete sense of intuitive control in this unbelievable, high-octane re-imagining of association football.",
        image: 'Rocket League.png',
        tag: sports
    )

    starWars = Game.create!(
        title: 'Star Wars Jedi: Fallen Order',
        description: 'A New Jedi Story Begins - As a former Padawan on the run from the Empire, you must complete your training before Imperial Inquisitors discover your plan to revive the Jedi Order. Aided by a former Jedi Knight, a cantankerous pilot, and a fearless droid, you must escape the evil machinations of the Empire in a story-driven adventure. Explore and overcome a wide range of challenges focused on combat, exploration, and puzzle-solving.',
        image: 'Star Wars Jedi Fallen Order.png',
        tag: action
    )

    farCry6 = Game.create!(
        title: 'Far Cry 6',
        description: "Become A Guerrilla - Play Dani Rojas as male or female and experience a compelling storyline that takes you from being a reluctant citizen to a leader fighting against Antón's regime. Jump into the action and chaos of guerrilla combat and gather soldiers and resources to help you in the fight.",
        image: 'Far Cry 6.png',
        tag: action
    )

    farCry6 = Game.create!(
        title: 'Cyberpunk 2077',
        description: "Play as a Mercenary Outlaw - Become a cyberpunk, an urban mercenary equipped with cybernetic enhancements and build your legend on the streets of Night City. ",
        image: 'Cyberpunk 2077.png',
        tag: action
    )
 
    minecraft = Game.create!(
        title: 'Minecraft Dungeons',
        description: "Minecraft Dungeons: Fight your way through an all-new action-adventure game, inspired by classic dungeon crawlersand set in the Minecraft universe!",
        image: 'Minecraft Dungeons.png',
        tag: adventure
    )    

    theWalkingDead = Game.create!(
        title: 'The Walking Dead',
        description: "Emotional, Gut-Wrenching Story - See Clementine's journey through to the end. As she builds a new life, you will have to grapple with new types of choices and live with the consequences as AJ looks on, learning from your every move.",
        image: 'The Walking Dead.png',
        tag: adventure
    )    

    Game.create!(
        title: 'Assassins Creed Valhalla',
        description: "In Assassin's Creed Valhalla you can become a legendary Viking Warrior. Raid your enemies, grow your settlement, and build your political power in the quest to earn a place among the gods in Valhalla. The advanced RPG mechanics allow you to shape your character and the world around you. Ensure that every choice you make is well thought out. From political alliances to gear progression, you create your own story and path to glory.",
        image: 'Assassins Creed Valhalla.png',
        tag: adventure
    )

    Game.create!(
        title: 'Life is Strange: True Colors',
        description: "In Life is Strange: True Colors on Xbox One, Alex Chen is on a quest to solve the mystery surrounding her brother’s death. Using her psychic power of empathy she discovers shocking secrets in the small mining town, Haven Springs. Embrace her supernatural ability to uncover the truth and reveal the mysteries buried by the town. Embark on a journey that will change fate and lives.",
        image: 'Life is Strange True Colors.png',
        tag: adventure
    )
    Game.create!(
        title: 'ARK Survival Evolved',
        description: "From primordial island jungles to the futuristic gardens of an interstellar starship, every sprawling environment is here for you to conquer! Discover the hundreds of unique species roaming these lands, from the prehistoric to the fantastical, and learn how to befriend these creatures, or to defeat them. Complete your collection of notes and dossiers left by past explorers to learn the surprising history of the ARKs. Test your tribe and your beasts in battle with every boss challenge from the franchise!",
        image: 'ARK Survival Evolved.png',
        tag: adventure
    )
    Game.create!(
        title: "TMNT Shredder's Revenge",
        description: "With Bebop and Rocksteady assaulting Channel 6 and stealing super gnarly devices to support Krang and Shredder’s latest twisted plan, Teenage Mutant Ninja Turtles: Shredder’s Revenge sees the Turtles battling across a righteous range of timeless TMNT locations. From Manhattan and Coney Island, to city rooftops and dank sewers, help the fearsome foursome trounce Foot Soldiers, Triceraton Warriors, and Rock Troops all the way to Dimension X!",
        image: "TMNT Shredder's Revenge.png",
        tag: fighting
    )
    Game.create!(
        title: 'Cobra Kai 2 Dojos Rising',
        description: "Eagle Fang, Cobra Kia, Miyagi-do – Which is your dojo? That choice begins your journey, but then it’s up to you to recruit the most powerful team as you master your fighting style and battle to solidify your dojo’s LEGACY as the All Valley Karate Grand Champion!",
        image: 'Cobra Kai 2 Dojos Rising.png',
        tag: fighting
    )
    Game.create!(
        title: 'Capcom Fighting Collection',
        description: "Fighting fans can celebrate 35 years of Capcom fighting games with Capcom Fighting Collection on Xbox One, an anthology of 10 classic titles – including the full Darkstalkers series together for the first time ever outside of Japan. Each of the 10 titles in the collection has been revitalized with online multiplayer, enhanced features, and quality of life updates.",
        image: 'Capcom Fighting Collection.png',
        tag: fighting
    )
    Game.create!(
        title: 'Lego Brawls',
        description: "It's a LEGO battle of the ages! LEGO Brawls is a light-hearted, casual-competitive video game the whole family can enjoy on Xbox One. LEGO Brawls is the first team fighting action game set in the LEGO universe. Build your own minifigure hero and brawl to the top in this multiplayer, brick-bashing platformer inspired by iconic LEGO sets! Battle solo or with family and friends! Collect minifigures and power-ups, combine them to create your ultimate brawler, and climb to the top of the global leaderboard",
        image: 'Lego Brawls.png',
        tag: fighting
    )
    Game.create!(
        title: 'Overcooked',
        description: "Overcooked is a chaotic couch co-op cooking game for one to four players. Working as a team, you and your fellow chefs must prepare, cook and serve up a variety of tasty orders before the baying customers storm out in a huff. Sharpen your knives and dust off your chef’s whites, there isn’t mushroom for error and the steaks are high in these crazy kitchens!",
        image: 'Overcooked.png',
        tag: indie
    )
    Game.create!(
        title: 'Worms Rumble',
        description: "Use a variety of fan-favorite weapons like the Bazooka, Shotgun and Sheep Launcher plus all-new additions to the armory to bring the pain to your invertebrate opponents as you climb the ranks. Customize your worm, take part in challenges and seasonal events and experiment with new ways to play in The Lab. This is Worms, reinvented.",
        image: 'Worms Rumble.png',
        tag: indie
    )
    Game.create!(
        title: 'Fobia St. Dinfna Hotel',
        description: "Treze Trilhas is home to the St. Dinfina Hotel, a decadent site that is the subject of numerous rumors including mysterious disappearances and paranormal activity. Hoping to break the story, amateur journalist Roberto Leite Lopes travels to Santa Catarina following a tip from his friend Stephanie. His investigative skills will be needed not only to uncover the truth but to survive when reality is turned upside down with his discovery of a camera that reveals different timelines, a fanatical cult, human experiments, and apparitions roaming the halls.",
        image: 'Fobia St Dinfna Hotel.png',
        tag: indie
    )
    Game.create!(
        title: 'The Crew 2',
        description: "In The Crew® 2, take on the American motorsports scene as you explore and dominate the land, air, and sea of the United States in one of the most exhilarating open worlds ever created. With a wide variety of exotic cars, bikes, boats, and planes to choose from, experience the unbridled thrill and adrenaline-pumping excitement of competing across the entire US as you test your skills in a wide range of driving disciplines. Record every heart-pounding, white-knuckle, asphalt-melting moment and share them with your friends and rivals with the simple push of a button. Fame is yours to take!",
        image: 'The Crew 2.png',
        tag: racing
    )
    Game.create!(
        title: 'NASCAR 21 Ignition',
        description: "Either dive straight into the action with Race Now, playing as your favorite official driver from the NASCAR Cup Series, or take on the immersive and engaging career mode as you build your reputation in the sport and battle your way toward the championship.",
        image: 'NASCAR 21 Ignition.png',
        tag: racing
    )
    Game.create!(
        title: 'The Elder Scrolls V: Skyrim',
        description: "Winner of more than 200 Game of the Year Awards, Skyrim Special Edition brings the epic fantasy to life in stunning detail. The Special Edition includes the critically acclaimed game and add-ons with all-new features like remastered art and effects, volumetric god rays, dynamic depth of field, screen-space reflections, and more. Skyrim Special Edition also brings the power of PC mods to consoles. New quests, environments, characters, dialogue, armor, weapons and more – with Mods, the possibilities of what you can experience are nearly endless.",
        image: 'The Elder Scrolls V Skyrim',
        tag: rpg
    )
    Game.create!(
        title: 'The Witcher III: Wild Hunt',
        description: "Become a professional monster slayer and embark on an adventure in The Witcher III: Wild Hunt Complete Edition. Experience a dark fantasy, open world RPG that focuses on a character-driven story, various decisions, and tactical combat. The third installment of the saga improves every aspect of the series, with a smoother combat system, new Witcher senses, monster hunting, improved alchemy, magic signs, crafting systems, and many more.",
        image: 'The Witcher III Wild Hunt.png',
        tag: rpg
    )
    Game.create!(
        title: 'Dragon Ball Z Kakarot',
        description: "Relive the story of Goku and other Z Fighters in DRAGON BALL Z: KAKAROT! Beyond the epic battles, experience life in the DRAGON BALL Z world as you fight, fish, eat, and train with Goku, Gohan, Vegeta and others. Explore the new areas and adventures as you advance through the story and form powerful bonds with other heroes from the DRAGON BALL Z universe.",
        image: 'Dragon Ball Z Kakarot.png',
        tag: rpg
    )
    Game.create!(
        title: 'Mass Effect',
        description: "One person is all that stands between humanity and the greatest threat it’s ever faced. Relive the legend of Commander Shepard in the highly acclaimed Mass Effect trilogy with the Mass Effect Legendary Edition on Xbox One. Includes single-player base content and over 40 DLC from Mass Effect, Mass Effect 2, and Mass Effect 3 games, including promo weapons, armors, and packs – remastered and optimized for 4K Ultra HD.",
        image: 'Mass Effect.png',
        tag: rpg
    )
    Game.create!(
        title: 'Fallout 4',
        description: "Bethesda Game Studios, the award-winning creators of Fallout 3 and The Elder Scrolls V: Skyrim, welcome you to the world of Fallout 4 – their most ambitious game ever, and the next generation of open-world gaming.",
        image: 'Fallout 4.png',
        tag: rpg
    )
    Game.create!(
        title: 'Farming Simulator 22',
        description: "Take on the role of a modern farmer and creatively build your farm in three diverse American and European environments. Farming Simulator 22 offers a huge variety of farming operations focusing on agriculture, animal husbandry and forestry - now with the exciting addition of seasonal cycles!",
        image: 'Farming Simulator 22.png',
        tag: sim
    )
    Game.create!(
        title: 'The Sims 4',
        description: "Unleash your imagination and create a unique world of Sims that’s an expression of you! Explore and customize every detail from Sims to homes, and much more. Choose how Sims look, act, and dress, then decide how they’ll live out each day. Design and build incredible homes for every family, then decorate with your favorite furnishings and décor.Tell your stories your way while developing relationships, pursuing careers and life aspirations, and immersing yourself in this extraordinary game, where the possibilities are endless. Play with life!",
        image: 'The Sims 4.png',
        tag: sim
    )
    Game.create!(
        title: 'Zoo Tycoon',
        description: "Let your imagination run wild with Zoo Tycoon on Xbox One! Choose from over 100 visually stunning animals and the largest, most detailed selection of environments ever, then build, manage and maintain your dream zoo alone or with up to four players on Xbox LIVE. For added fun, upload your creation to the cloud and work together with other Tycoons to care for and share your animals. With intuitive, easy-to-use controls and Kinect-enabled features that allow your animals to recognize your voice and react to your movements, this zoo simulation will charm animal lovers of all ages.",
        image: 'Zoo Tycoon.png',
        tag: sim
    )
    Game.create!(
        title: 'Pro Fishing Simulator',
        description: "THE NEXT BEST THING TO REAL FISHING!Pro Fishing Simulator is an authentic sport fishing simulation for both beginner and avid anglers. Set out for the most beautiful fishing holes in the world and hook the best catches using real-world equipment from licensed brands. Perfect your technique to become one of the top fishing pros in the world!",
        image: 'Pro Fishing Simulator.png',
        tag: sim
    )
    Game.create!(
        title: 'Cities Skylines',
        description: "Cities: Skylines - Xbox One Edition puts you in charge of a growing city – from the ground-breaking of its first streets to the ever-changing needs of thousands of citizens. Design, build, and manage the city of your dreams, from public services to civic policies, and challenge yourself to grow from a simple town to a bustling metropolitan hub.",
        image: 'Cities Skylines.png',
        tag: sim
    )

# Listings

    cod_bob= Listing.create!(
        description: 'I would like an indie game in exchange for this COD. Condition is new, never opened.',
        condition: 'New',
        status: 'active',
        user: bob,
        game: blackOps4

    )
    cod_alice = Listing.create!(
        description: 'I would like an indie game in exchange for this COD. I enjoyed it.  Condition is fine. Packaging is damaged',
        condition: 'Used-Acceptable',
        status: 'active',
        user: alice,
        game: blackOps4

    )

    nba2k_alice_listing = Listing.create!(
        description: 'I would like a sports game in exchange for this NBA2K. Condition is good, there are minor scratches',
        condition: 'Used-Acceptable',
        status: 'active',
        user: alice,
        game: nba2k23

    )
    
    rocket_league_alice=Listing.create!(
        description: 'I would like a sports game in exchange for this Rocket League. Condition is good, there are minor scratches',
        condition: 'Used-Good',
        status: 'inactive',
        user: alice,
        game: rocketLeague
    )
    rocket_league_bob=Listing.create!(
        description: 'I would like an indie game in exchange for this Rocket League. Condition is good, there are minor scratches',
        condition: 'Used-Good',
        status: 'active',
        user: bob,
        game: rocketLeague
    )
    rocket_league__eric=Listing.create!(
        description: 'I would like a sports game. Good condition, works well.',
        condition: 'Used-Good',
        status: 'active',
        user: eric,
        game: rocketLeague

    )

    bo3_bob=Listing.create!(
        description: 'I would like an indie game in exchange for Black Ops 3. Great condition.',
        condition: 'Used-Good',
        status: 'active',
        user: bob,
        game: blackOps3
    )
    bo3_joe=Listing.create!(
        description: 'I would like a sports game in exchange for Black Ops 3. Great condition.',
        condition: 'Used-Like New',
        status: 'active',
        user: bob,
        game: blackOps3
    )

    aw_eric=Listing.create!(
        description: 'I would like an indie game in exchange for COD. Great condition.',
        condition: 'Used-Very Good',
        status: 'active',
        user: eric,
        game: advancedWarfare
    )
    aw_joe=Listing.create(
        description: 'I would like a sports game in exchange for COD. Okay condition, minor scratches.',
        condition: 'Used-Acceptable',
        status: 'active',
        user: joe,
        game: advancedWarfare

    )

    destiny_joe=Listing.create!(
        description: 'I would like am rpg for this. Hardly used.',
        condition: 'Used-Like New',
        status: 'active',
        user: joe,
        game: destiny
    )
    destiny_alice=Listing.create!(
        description: 'I would like COD for this. Lightly used.',
        condition: 'Used-Very Good',
        status: 'active',
        user: alice,
        game: destiny
    )
    destiny_bob=Listing.create!(
        description: 'I would like GTA. Never opened.',
        condition: 'Used-New',
        status: 'active',
        user: bob,
        game: destiny
    )

    gta_eric=Listing.create!(
        description: 'Great Game. Heavily used.',
        condition: 'Used-Acceptable',
        status: 'active',
        user: eric,
        game: gta5
    )
    gta_joe=Listing.create!(
        description: 'I want COD for this. I have only played it once.',
        condition: 'Used-Like New',
        status: 'active',
        user: joe,
        game: gta5
    )

    mt_alice=Listing.create!(
        description: 'I want COD for this. I have only played it once.',
        condition: 'Used-Like New',
        status: 'active',
        user: alice,
        game: mortalKombat10
    )
    mt_bob=Listing.create!(
        description: 'Good condition, used it a couple of times.',
        condition: 'Used-Good',
        status: 'active',
        user: bob,
        game: mortalKombat10
    )

# OFFERS

    offer_1 = Offer.create!(
        condition: "New",
        description: "This game is in mint condition...",
        status: "active",
        listing: nba2k_alice_listing,
        game: coldWar,
        owner: bob
    )
    offer_2 = Offer.create!(
        condition: "Used-Acceptable",
        description: "My dog ate it, but threw it back up. It still works.",
        status: "declined",
        listing: nba2k_alice_listing,
        game: gta5,
        owner: alice
    )
    offer_3 = Offer.create!(
        condition: "Used-Like New",
        description: "This is the collector's edition of Barbie and Her Sisters: Puppy Rescue. The case is scuffed, but the game is in mint condition.",
        status: "active",
        listing: cod_alice,
        game: halo5,
        owner: bob
    )

    offer_4 = Offer.create!(
        condition: "Used-Like New",
        description: "The case is scuffed, but the game is in mint condition.",
        status: "active",
        listing: cod_alice,
        game: nba2k21,
        owner: joe
    )
    offer_5 = Offer.create!(
        condition: "Used-Like New",
        description: "In okay condition, do not care what game",
        status: "active",
        listing: nba2k_alice_listing,
        game: halo5,
        owner: joe
    )
    offer_6 = Offer.create!(
        condition: "Used-Like New",
        description: "In great condition",
        status: "active",
        listing: cod_alice,
        game: madden23,
        owner: eric
    )
    offer_7 = Offer.create!(
        condition: "Used-Like New",
        description: "In great condition",
        status: "active",
        listing: aw_eric,
        game: gta5,
        owner: joe
    )
    offer_8 = Offer.create!(
        condition: "Used-Acceptable",
        description: "In okay condition",
        status: "active",
        listing: aw_eric,
        game: rocketLeague,
        owner: alice
    )
    offer_9 = Offer.create!(
        condition: "Used-Acceptable",
        description: "In okay condition",
        status: "active",
        listing: bo3_bob,
        game: madden21,
        owner: alice
    )
    offer_10 = Offer.create!(
        condition: "Used-Acceptable",
        description: "In good condition, no scratches",
        status: "active",
        listing: bo3_bob,
        game: destiny2,
        owner: eric
    )





