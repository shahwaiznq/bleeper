# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create :name => 'Donald Trump', :email => 'trump@potus.com', :password => 'chicken'
u2 = User.create :name => 'Ghengis Khan', :email => 'ghengis@mongol.com', :password => 'chicken'
u3 = User.create :name => 'Adolf Hitler', :email => 'hitler@nazi.com', :password => 'chicken'
u3 = User.create :name => 'Shez', :email => 'shez@ga.co', :password => 'chicken'