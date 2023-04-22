puts "Start Seeding"

Photo.destroy_all
Category.destroy_all
Comment.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('photos')
ActiveRecord::Base.connection.reset_pk_sequence!('categories')
ActiveRecord::Base.connection.reset_pk_sequence!('comments')

puts "Sedding Categories"

wallpaper = Category.create(
            name: "Wallpapers",
            description: "From epic drone shots to inspiring moments in nature, find free HD wallpapers worthy of your screens."
            )
wallpaper.cover.attach(io: File.open('db/images/cover/wallpaper.png'), filename: 'wallpaper.png')
nature = Category.create(
            name: "Nature",
            description: "Let's celebrate the magic of Mother Earth - with images of everything our planet has to offer."
            )
nature.cover.attach(io: File.open('db/images/cover/nature.png'), filename: 'nature.png')
people = Category.create(
            name: "People",
            description: "Real people, captured. Photography has the power to reflect the world around us, give voice to individuals and groups."
            )
people.cover.attach(io: File.open('db/images/cover/people.png'), filename: 'people.png')
food = Category.create(
            name: "Food",
            description: "Let's celebrate the magic of Mother Earth - with images of everything our planet has to offer."
            )
food.cover.attach(io: File.open('db/images/cover/food.png'), filename: 'food.png')
technology = Category.create(
            name: "Technology",
            description: "Let's celebrate the magic of Mother Earth - with images of everything our planet has to offer."
            )
technology.cover.attach(io: File.open('db/images/cover/technology.png'), filename: 'technology.png')
animals = Category.create(
              name: "Animals",
              description: "Let's celebrate the magic of Mother Earth - with images of everything our planet has to offer."
              )
animals.cover.attach(io: File.open('db/images/cover/animal.png'), filename: 'animal.png')

puts "Seeding Photos"

purple_lake = Photo.create(title: "Purple Lake", description: "Nice and big purple lake.", category: nature)
green_plant = Photo.create(title: "Green Plant", description: "Nice and big purple lake.", category: nature)
lonely_bird = Photo.create(title: "Lonely Bird", description: "Nice and big purple lake.", category: nature)
three = Photo.create(title: "Three", description: "Nice and big purple lake.", category: nature)
squirrel = Photo.create(title: "Squirrel", description: "Nice and big purple lake.", category: nature)
universe = Photo.create(title: "Universe", description: "Nice and big purple lake.", category: nature)

purple_lake.image.attach(io: File.open('db/images/nature/purple_lake.png'), filename: 'purple_lake.png')
green_plant.image.attach(io: File.open('db/images/nature/green_plant.png'), filename: 'green_plant.png')
lonely_bird.image.attach(io: File.open('db/images/nature/lonely_bird.png'), filename: 'lonely_bird.png')
three.image.attach(io: File.open('db/images/nature/three.png'), filename: 'three.png')
squirrel.image.attach(io: File.open('db/images/nature/squirrel.png'), filename: 'squirrel.png')
universe.image.attach(io: File.open('db/images/nature/universe.png'), filename: 'universe.png')

desert_sunset = Photo.create(title: "Desert Sunset", description: "Nice and big purple lake.", category: wallpaper)
ocean_sunset = Photo.create(title: "Ocean Sunset", description: "Nice and big purple lake.", category: wallpaper)
city_sunset = Photo.create(title: "City Sunset", description: "Nice and big purple lake.", category: wallpaper)

desert_sunset.image.attach(io: File.open('db/images/wallpaper/desert_sunset.png'), filename: 'desert_sunset.png')
ocean_sunset.image.attach(io: File.open('db/images/wallpaper/ocean_sunset.png'), filename: 'ocean_sunset.png')
city_sunset.image.attach(io: File.open('db/images/wallpaper/city_sunset.png'), filename: 'city_sunset.png')

people1 = Photo.create(title: "People 1", description: "Nice and big purple lake.", category: people)
people2 = Photo.create(title: "People 2", description: "Nice and big purple lake.", category: people)
people3 = Photo.create(title: "People 3", description: "Nice and big purple lake.", category: people)
people4 = Photo.create(title: "People 4", description: "Nice and big purple lake.", category: people)
people5 = Photo.create(title: "People 5", description: "Nice and big purple lake.", category: people)
people6 = Photo.create(title: "People 6", description: "Nice and big purple lake.", category: people)

people1.image.attach(io: File.open('db/images/people/people1.png'), filename: 'people1.png')
people2.image.attach(io: File.open('db/images/people/people2.png'), filename: 'people2.png')
people3.image.attach(io: File.open('db/images/people/people3.png'), filename: 'people3.png')
people4.image.attach(io: File.open('db/images/people/people4.png'), filename: 'people4.png')
people5.image.attach(io: File.open('db/images/people/people5.png'), filename: 'people5.png')
people6.image.attach(io: File.open('db/images/people/people6.png'), filename: 'people6.png')

food1 = Photo.create(title: "Food 1", description: "Nice and big purple lake.", category: food)
food2 = Photo.create(title: "Food 2", description: "Nice and big purple lake.", category: food)
food3 = Photo.create(title: "Food 3", description: "Nice and big purple lake.", category: food)
food4 = Photo.create(title: "Food 4", description: "Nice and big purple lake.", category: food)

food1.image.attach(io: File.open('db/images/food/food1.png'), filename: 'food1.png')
food2.image.attach(io: File.open('db/images/food/food2.png'), filename: 'food2.png')
food3.image.attach(io: File.open('db/images/food/food3.png'), filename: 'food3.png')
food4.image.attach(io: File.open('db/images/food/food4.png'), filename: 'food4.png')

technology1 = Photo.create(title: "Technology 1", description: "Nice and big purple lake.", category: technology)
technology2 = Photo.create(title: "Technology 2", description: "Nice and big purple lake.", category: technology)
technology3 = Photo.create(title: "Technology 3", description: "Nice and big purple lake.", category: technology)
technology4 = Photo.create(title: "Technology 4", description: "Nice and big purple lake.", category: technology)
technology5 = Photo.create(title: "Technology 5", description: "Nice and big purple lake.", category: technology)

technology1.image.attach(io: File.open('db/images/technology/technology1.png'), filename: 'technology1.png')
technology2.image.attach(io: File.open('db/images/technology/technology2.png'), filename: 'technology2.png')
technology3.image.attach(io: File.open('db/images/technology/technology3.png'), filename: 'technology3.png')
technology4.image.attach(io: File.open('db/images/technology/technology4.png'), filename: 'technology4.png')
technology5.image.attach(io: File.open('db/images/technology/technology5.png'), filename: 'technology5.png')

animals1 = Photo.create(title: "Animals 1", description: "Nice and big purple lake.", category: animals)
animals2 = Photo.create(title: "Animals 2", description: "Nice and big purple lake.", category: animals)
animals3 = Photo.create(title: "Animals 3", description: "Nice and big purple lake.", category: animals)
animals4 = Photo.create(title: "Animals 4", description: "Nice and big purple lake.", category: animals)

animals1.image.attach(io: File.open('db/images/animals/animals1.png'), filename: 'animals1.png')
animals2.image.attach(io: File.open('db/images/animals/animals2.png'), filename: 'animals2.png')
animals3.image.attach(io: File.open('db/images/animals/animals3.png'), filename: 'animals3.png')
animals4.image.attach(io: File.open('db/images/animals/animals4.png'), filename: 'animals4.png')

category_comment = Comment.create(comment: "This is an example of a comment for this category.", commentable: nature)
photo_comment = Comment.create(comment: "This is an example of a comment for this photo.", commentable: purple_lake)

puts "End Seeding"