require './app' # Adjust the path as needed to require your main app file

# Adding posts
posts = [
  { title: 'How to create a blog', content: 'In this tutorial we are going to create a blog' },
  { title: 'How to create a website', content: 'In this tutorial we are going to create a website' },
  { title: 'Build a webpage by yourself', content: 'In this tutorial we are going to create a webpage' },
  { title: 'Python tutorial', content: 'python tutorial content' },
  { title: 'Java tutorial', content: 'java tutorial content' },
  { title: 'Ruby tutorial', content: 'ruby tutorial content' }
]

posts.each do |post_data|
  Post.create(post_data)
end

puts "Database has been seeded."
