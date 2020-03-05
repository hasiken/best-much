class Post < ApplicationRecord
     validates :title, :cf, :rwg, :lwg, :lcm, :rcm, :cdm, :rsb, :rcb, :lcb, :lsb, :gc, presence: true
     belongs_to :user
end
