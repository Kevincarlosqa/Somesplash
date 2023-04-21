puts "Start Seeding"

Photo.destroy_all
Category.destroy_all

ActiveRecord: :Base.connection.reset_pk_sequence!('photos')
ActiveRecord: :Base.connection.reset_pk_sequence!('categories')

puts "Sedding Categories"

wallpaper = Category.create(
            name: "Wallpapers",
            description: "From epic drone shots to inspiring moments in nature, find free HD wallpapers worthy of your screens."
            )
nature = Category.create(
            name: "Nature",
            description: "Let's celebrate the magic of Mother Earth - with images of everything our planet has to offer."
            )
people = Category.create(
            name: "People",
            description: "Real people, captured. Photography has the power to reflect the world around us, give voice to individuals and groups."
            )
food = Category.create(
            name: "Food",
            description: "Let's celebrate the magic of Mother Earth - with images of everything our planet has to offer."
            )
technology = Category.create(
            name: "Technology",
            description: "Let's celebrate the magic of Mother Earth - with images of everything our planet has to offer."
            )
animals = Category.create(
              name: "Animals",
              description: "Let's celebrate the magic of Mother Earth - with images of everything our planet has to offer."
              )

puts "Seeding Photos"

purple_lake = Photo.create