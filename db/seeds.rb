require 'json'

names_json = File.read('db/names.json')
posts_json = File.read('db/posts.json')
names = JSON.parse(names_json)
posts = JSON.parse(posts_json)

posts_pos = 0
names.each do |name|
  user = User.create(email: "#{name["first"]}#{name["last"]}@gmail.com", first_name: name["first"], last_name: name["last"], password: "test")
  10.times do |i|
    Comment.create(body: posts[post_pos], user_id: user.id)
    posts_pos = posts_pos + 1
  end
end
