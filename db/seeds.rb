# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

susan = User.create(email: 'susan@example.com', password_hash: '657eoi567jio')
pault = User.create(email: 'pault@example.com', password_hash: '657eoi435jui')
jeffy = User.create(email: 'jeff@example.com', password_hash: '657eoi325jui')

susan_profile = Profile.create(first_name: 'Susan', last_name: 'Boyle', phone: '55555', user: susan)
pault_profile = Profile.create(first_name: 'Paul', last_name: 'Thompson', phone: '51111', user: pault)
jeffy_profile = Profile.create(first_name: 'Jeff', last_name: 'Smith', phone: '51133', user: jeffy)

photo1 = Photo.create(description: "Creative_Tech", asset_url: 'http://pbs.twimg.com/profile_images/514074132934193152/iG5hlEvL_400x400.png', user: susan)
photo2 = Photo.create(description: "Happy", asset_url: 'http://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT0ups53NmcHgXf2YbAw5VMeTvuz2ZZtv2sCsh2zPamQtAQcZ6yIpBab2Gr', user: pault)
photo3 = Photo.create(description: "Sunshine", asset_url: 'http://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROPS3fH3IzOyomJLqKOZcv2v7SxP7TIjAZTnLzIOZQ-4T1lnLKl9s_9ark', user: pault)
photo4 = Photo.create(description: "Sunny_hands", asset_url: 'http://www.nutritionsecrets.com/wp-content/uploads/2015/04/Feature3_image2_vitD.jpg', user: susan)

PhotoTaggedUser.create(photo: photo1, user: susan)
PhotoTaggedUser.create(photo: photo2, user: pault)
PhotoTaggedUser.create(photo: photo3, user: susan)
PhotoTaggedUser.create([
  {photo: photo1, user: pault},
  {photo: photo2, user: susan}
])

UserFollowerRelationship.create(user: susan, follower: pault)
UserFollowerRelationship.create(user: pault, follower: jeffy)
UserFollowerRelationship.create(user: jeffy, follower: susan)


test
