require 'json'

names_json = File.read('db/names.json')
posts_json = File.read('db/posts.json')
names = JSON.parse(names_json)
posts = JSON.parse(posts_json)

@posts_pos = 0
names.each do |name|
  user = User.create(email: "#{name["first"]}#{name["last"]}@gmail.com", first_name: name["first"], last_name: name["last"], password: "testing")
  10.times do |i|
    Post.create(body: posts[@posts_pos], user_id: user.id)
    @posts_pos = @posts_pos + 1
  end
end

User.create(email: "test@test.com", password: "testing", first_name: "Dan", last_name: "Assholio")
