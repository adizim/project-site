# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

project_list = [
  [ "Angilytics",
  "Angilytics creates wearable sensors and artificial intelligence for optimal management of costly heart diseases.",
  "project-robot-pic", "https://www.angilytics.com/", "Startups", ["Artificial Intelligence", "Machine Learning"]],
  [ "Angilytics",
  "Angilytics creates wearable sensors and artificial intelligence for optimal management of costly heart diseases.",
  "project-robot-pic", "https://www.angilytics.com/", "Social Good", ["Education, Finance"]],
  [ "Angilytics",
  "Angilytics creates wearable sensors and artificial intelligence for optimal management of costly heart diseases.",
  "project-robot-pic", "https://www.angilytics.com/", "Research", ["Modelling, Imaging"]],
  [ "Angilytics",
  "Angilytics creates wearable sensors and artificial intelligence for optimal management of costly heart diseases.",
  "project-robot-pic", "https://www.angilytics.com/", "PM/Consulting", ["Entrepreneurship, Environmental"]],

]

project_list.each do |title, summary, image, link, category, tag_list|
  Project.create( title: title, summary: summary, image: image, link: link, category: category, tag_list: tag_list )
end
