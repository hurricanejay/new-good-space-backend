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


user1 = User.create!(username: "happy2help", password: "123", email: "happy@me.com")
user2 = User.create!(username: "here4u", password: "123",  email: "here@me.com")
user3 = User.create!(username: "unsolicitedAdvisor", password: "123",  email: "advice@me.com")

post1 = Post.create!(location: "11223", category: "free", tag: "clothes", date: Time.now, title: "Free toddler clothing", description: "My kid's overgrown and he has exploded out of his 3-6month old clothes. These clothes are brand new. Please let me know if anyone wants to pick up! ", user_id: user2.id)
post2 = Post.create!(location: "11230", category: "volunteer", tag: "errands", date: Time.now, title: "Grocery Run!", description: "Available to do a grocery run between 1-2pm. I have a car and happy to drop off to you.", user_id: user1.id)
post3 = Post.create!(location: "10013", category: "advice", tag: "relationships", date: Time.now, title: "Relationship Advice", description: "Quarantine got you in a funk? Let's talk about it!", user_id: user3.id)
# post4 = Post.create!(location: "10003", category: "free", tag: "books", date: Time.now, title: "Free New Diapers", description: "I have a bunch of old children's books to give away. Lots of them are still brand new and in good condition. Let me know if you'd like to pick up sometime this week. I will be donating them next week. ", user_id: user3.id)


Comment.create!(user_id: user2.id, post_id: post3.id)
Comment.create!(user_id: user3.id, post_id: post1.id)

Like.create!(user_id: user1.id, post_id: post2.id)
Like.create!(user_id: user2.id, post_id: post1.id)