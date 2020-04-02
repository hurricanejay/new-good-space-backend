# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all
Like.destroy_all


user1 = User.create!(username: "happy2help", password: "123")
user2 = User.create!(username: "here4u", password: "123")
user3 = User.create!(username: "unsolicitedAdvisor", password: "123")

post1 = Post.create!(location: "11223", category: "free", tag: "clothes", date: Time.now, title: "Free toddler clothing", description: "my kid's overgrown", user_id: user2.id)
post2 = Post.create!(location: "11230", category: "volunteer", tag: "errands", date: Time.now, title: "Can help anyone", description: "Available to do a grocery run between 1-2pm", user_id: user1.id)
post3 = Post.create!(location: "11223", category: "advice", tag: "relationships", date: Time.now, title: "Relationships", description: "she's not that into you", user_id: user3.id)

Comment.create!(user_id: user2.id, post_id: post3.id)
Comment.create!(user_id: user3.id, post_id: post1.id)

Like.create!(user_id: user1.id, post_id: post2.id)
Like.create!(user_id: user2.id, post_id: post1.id)