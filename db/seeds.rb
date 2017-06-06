# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create! email: 'admin@example.com', password: 'password', password_confirmation: 'password'

%w(Smartphones Laptops Desktops).each { |name| Category.create! name: name }
%w(Apricot Gazillion Singsong).each { |name| Brand.create! name: name }

Customer.create! name: 'John Smith'

Product.create! name: 'aPhone 9',
                category: Category.find_by_name('Smartphones'),
                brand: Brand.find_by_name('Apricot'),
                image: File.new(Rails.root.join('public', 'images', 'aPhone9.png'), 'r')

aPhone10 = Product.create! name: 'aPhone 10',
                category: Category.find_by_name('Smartphones'),
                brand: Brand.find_by_name('Apricot'),
                image: File.new(Rails.root.join('public', 'images', 'aPhone10-wide.jpg'), 'r'),
                preorder: true

fujiBook = Product.create! name: 'FujiBook',
                category: Category.find_by_name('Laptops'),
                brand: Brand.find_by_name('Apricot'),
                image: File.new(Rails.root.join('public', 'images', 'FujiBook.jpg'), 'r')

Product.create! name: 'sPhone 8',
                category: Category.find_by_name('Smartphones'),
                brand: Brand.find_by_name('Singsong'),
                image: File.new(Rails.root.join('public', 'images', 'sPhone8.jpg'), 'r')

Deal.create! product: fujiBook,
             description: 'Get a FREE set of headphones when you purchase FujiBook by Apricot!'

Deal.create! product: aPhone10,
             description: 'Pre-Order the upcoming aPhone 10 for just €100!'