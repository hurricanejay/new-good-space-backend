class User < ApplicationRecord
    
has_many :posts 
has_many :comments 
has_many :posts, through: :comments, as: :commented_posts
has_many :likes 
has_many :posts, through: :likes, as: :liked_posts

end
