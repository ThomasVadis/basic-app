basic Rails app

components
Create a new Rails app; name it however you want
Create a Post model with content attributes; think of "posts" as Facebook posts
Create a User model with username, email, first_name and last_name attributes
A user has many posts. Please create this relationship.
Create the following endpoints (this will involve controllers and routes):
POST /users: create new user
POST /posts: create new posts; accept user_id to relate a post to a user
GET /posts: list all posts
