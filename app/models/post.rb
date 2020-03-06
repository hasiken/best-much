class Post < ApplicationRecord
     validates :title, :cf, :rwg, :lwg, :lcm, :rcm, :cdm, :rsb, :rcb, :lcb, :lsb, :gc, presence: true
     belongs_to :user
     has_many :likes
     has_many :liked_users, through: :likes, source: :user
end
