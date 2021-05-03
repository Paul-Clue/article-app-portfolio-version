# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

connection = ActiveRecord::Base.connection()
connection.execute('ALTER SEQUENCE categories_id_seq RESTART WITH 1')
connection.execute('ALTER SEQUENCE users_id_seq RESTART WITH 1')
connection.execute('ALTER SEQUENCE articles_id_seq RESTART WITH 1')
connection.execute('ALTER SEQUENCE votes_id_seq RESTART WITH 1')

User.create(email: 'user@gmail.com', encrypted_password: '123456')

Category.create(name: 'Tesla', priority: 1)
Category.create(name: 'Ford', priority: 2)
Category.create(name: 'GM', priority: 3)
Category.create(name: 'Lucid', priority: 4)

@art = Article.create(title: 'Tesla Article', story: 'Some News about Tesla', user_id: 1, category_id: 1)
@art.image.attach(io: File.open('public/tesla-img.jpg'), filename: 'tesla-img.jpg', content_type: 'image/jpg')

@art1 = Article.create(title: 'Ford Article', story: 'Some News about Ford', user_id: 1, category_id: 2)
@art1.image.attach(io: File.open('public/ford-img.jpg'), filename: 'ford-img.jpg', content_type: 'image/jpg')


@art2 = Article.create(title: 'Gm Article', story: 'Some News about GM', user_id: 1, category_id: 3)
@art2.image.attach(io: File.open('public/gm-img.jpg'), filename: 'gm-img.jpg', content_type: 'image/jpg')

@art3 = Article.create(title: 'Lucid Article', story: 'Some News about Lucid', user_id: 1, category_id: 4)
@art3.image.attach(io: File.open('public/lucid-img.jpg'), filename: 'lucid-img.jpg', content_type: 'image/jpg')



Vote.create(user_id: 1, article_id: 1)
