get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/new' do
  erb :new_post
end

get '/edit/:id' do |id|
  @id = id
  erb :edit_view
end

post '/edit_post/:id' do |id|
  Category.edit_post(params)
  erb :index
end

get '/:cat' do |cat|
  @cat = cat
  category = Category.where(name:@cat)[0]
  @posts = category.posts
  erb :post_view
end

post '/new_post' do
  puts "[LOG] Params: #{params.inspect}"
  gen_post = Category.new_post(params)
  @id = gen_post.id
  erb :secret
end
