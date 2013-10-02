require 'sinatra'
require 'sinatra/reloader' if development?


#Given the Sinatra Route and the URL, what is in the Params Hash?

get "/" do
  "welcome"
end

#For Example:
# Route
get "/:username" do
  # Path
  #"kathy.zhou.311"
  #The params hash will look like this:
  #{:username => "kathy.zhou.311"}
  p params.to_s
end

#Mutual Friends
# Route
get "/:username/friends_mutual" do
  # Path
  #"kathy.zhou.311/friends_mutual"
  #params = {:username => kathy.zohou.311}
  p params.to_s
end

#Kickstarter

# Route
get "/projects/:username/:project_name" do
  # Path
  #"projects/machinewerks/cs-x51-usb-midi-control-surface"
  #params = {:username => "machinewerks", :project_name => "cs-x51-usb-midi-control-surface"}
  p params.to_s
end

#Facebook Graph API
# Route
get "/:username/picture" do
  # Path
  #"friendjonathanleung/picture"
  #params = {:username => friendjonathanleung}
  #
  # Facebook Graph API with GET Params
  # Route
  # Path With Params 1
  #"friendjonathanleung/picture?type=large"
  #
  # Path With Params 2
  #"friendjonathanleung/picture?type=small"
  #params = {:username => 'friendjonathanleung', type => large}
  #params = {:username => 'friendjonathanleung', type => small}
  p params.to_s
end

get "/search" do
  #"/search?q=Miley%20Cyrus&src=tyah"
  #params = {q => "Miley Cyrus", src => "tyah"}
  p params.to_s
end

get "/photos/:username/galleries/:id" do
  #"/photos/wakingdesiree/galleries/72157622560223171"
  #params ={username => wakingdesiree, id => 72157622560223171}
  p params.to_s
end

get "/products/:category/:item" do
#/products/kid/kid-kanteen-baby-bottle
#params = {category => kid, item => kid-kanteen-baby-bottle}
end

# post "/signup" do
#Now Extrapolate Twitter Signup
#On Twitter's Signup Page, what params do you think need to be passed back to the server?
#What would that Params look like?
#Full_Name, Email, Password, Username, Keep_Me_Signed_In = True/False, Tailor_Twitter_Based_On_Web_History = True/False













