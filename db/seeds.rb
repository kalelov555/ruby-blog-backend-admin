# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

articles = Article.create([
  {
    title: "Stranger things 5 releas date",
    description: "Lorem ipsum dolor sit amet, 
      consectetur adipiscing elit, sed do eiusmod tempor 
      incididunt ut labore et dolore magna aliqua. Ut enim ad minim 
      veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
      commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 
      cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, 
      sunt in culpa qui officia deserunt mollit anim id est laborum.",
    images: ["https://pluggedin.ru/images/upload/1645114468.jpeg", "https://kogdavyydet.ru/wp-content/uploads/2022/02/stranger-things.jpg"],
  },
  {
    title: "Hello World",
    description: "Lorem ipsum dolor sit amet, 
    consectetur adipiscing elit, sed do eiusmod tempor 
    incididunt ut labore et dolore magna aliqua. Ut enim ad minim 
    veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
    commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 
    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, 
    sunt in culpa qui officia deserunt mollit anim id est laborum.",
    images: ["https://upload.wikimedia.org/wikipedia/ru/5/51/Hello%2C_World.jpg", "https://miro.medium.com/max/1024/0*AotcC6GhXMHgyjmz.png"]
  }])
