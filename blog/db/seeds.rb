# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all
Comment.delete_all

420.times do |i|
  Post.create(title: "Post #{i}", text: 'Bob Marley rules')
end

posts = Post.all

100.times do
  Comment.create(author: 'Anton', text: 'The world is crazy', post_id: posts.sample.id)
end
