# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all
#1
User.create!(
    name: 'Esteban Garcia',
    email: 'estebangarcia@estebangarcia.cl',
    password: 'estebangarcia'
)
#2
User.create!(
    name: 'Julia Malinoviy',
    email: 'carmesi_julia@gmail.com',
    password: 'BlossomOfSakura02'
)
#3
User.create!(
    name: 'John Doe',
    email: 'skibiditoilet@doren.cl',
    password: 'babaBoiBRIM'
)
#4
User.create!(
    name: 'Javiera Acuna',
    email: 'araarajavivi@gmail.com',
    password: 'BestOneChanEver'
)
#5
User.create!(
    name: 'Jocelyn Santander',
    email: 'cherry@gmail.com',
    password: '04j09s02'
)
#1
post_1 = Post.create!(
    title: 'Amogus',
    content: 'Red is sus, and black is sus',
    user_id: 1,
    answers_count: 46,
    likes_count: 105
)
#2
post_2 = Post.create!(
    title: 'LoFi',
    content: 'Want to relax and chill while you study? try listening to LoFi',
    user_id: 2,
    answers_count: 80,
    likes_count: 5873
)
#3
post_3 = Post.create!(
    title: 'TFT',
    content: 'Always TF against the enemy team',
    user_id: 3,
    answers_count: 859,
    likes_count: 467
)
#4
post_4 = Post.create!(
    title: 'Medic Research',
    content: 'Finally doing my first med research, soon it will be published',
    user_id: 4,
    answers_count: 5495,
    likes_count: 46748
)
#5
post_5 = Post.create!(
    title: 'New Desing',
    content: 'Finally working for a famous, stay tunned for more info',
    user_id: 5,
    answers_count: 4186,
    likes_count: 84145
)
#6
post_6 = Post.create!(
    title: 'Post 1',
    content: 'Content of post 1',
    user_id: 2,
    answers_count: 0,
    likes_count: 0
)
#7
post_7 = Post.create!(
    title: 'Post 7',
    content: 'Content of post 7 is awesome',
    user_id: 4,
    answers_count: 4189,
    likes_count: 8454
)
#8
post_8 = Post.create!(
    title: 'Post 8',
    content: 'Content of post 8 is better',
    user_id: 1,
    answers_count: 456,
    likes_count: 189
)
#9
post_9 = Post.create!(
    title: 'Post 9',
    content: 'Content of post 9 does not exists',
    user_id: 5,
    answers_count: 1786,
    likes_count: 451
)
#10
post_10 = Post.create!(
    title: 'Sorry',
    content: 'Am sorry, my brain does not want to create more posts',
    user_id: 3,
    answers_count: 816518,
    likes_count: 489465
)
#1
tag_1 = Tag.create!(
    name: 'Normal Post'
)
#2
tag_2 = Tag.create!(
    name: 'Tag 1'
)
#3
tag_3 = Tag.create!(
    name: 'fyp'
)
#4
tag_4 = Tag.create!(
    name: 'Tag 4'
)
#5
tag_5 = Tag.create!(
    name: 'This is a tag'
)

# Assign tags to post_1
post_1.tags << tag_1
post_1.tags << tag_3

# Assign tags to post_2
post_2.tags << tag_2
post_2.tags << tag_4

# Assign tags to post_3
post_3.tags << tag_1
post_3.tags << tag_5

# Assign tags to post_4
post_4.tags << tag_2
post_4.tags << tag_3
post_4.tags << tag_5

# Assign tags to post_5
post_5.tags << tag_1
post_5.tags << tag_4

# Assign tags to post_6
post_6.tags << tag_3
post_6.tags << tag_5

# Assign tags to post_7
post_7.tags << tag_2
post_7.tags << tag_4

# Assign tags to post_8
post_8.tags << tag_1
post_8.tags << tag_2

# Assign tags to post_9
post_9.tags << tag_3
post_9.tags << tag_5

# Assign tags to post_10
post_10.tags << tag_4
post_10.tags << tag_1