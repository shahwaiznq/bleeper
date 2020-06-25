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
u3 = User.create :name => 'Shez', :email => 'shez@ga.co', :password => 'chicken'

Bleep.destroy_all
b1 = Bleep.create :content => "Who me? #Bleep"
b2 = Bleep.create :content => "I'm looking at you Mr Trump! #Bleep"
b3 = Bleep.create :content => "Sometimes it's best to censor some of our stupidest Tweets. #Bleep"
b4 = Bleep.create :content => "The users on Bleeper will let you know if your Bleep should be bleeped! #Bleep"
b5 = Bleep.create :content => "This is a place where you can test your tweets before you tweet them #Bleep"
b6 = Bleep.create :content => "Welcome to Bleeper #Bleep"

Bleeptag.destroy_all
bt1 = Bleeptag.create :title => "#Bleep"

u1.bleeps << b1
u3.bleeps << b2
u3.bleeps << b3
u3.bleeps << b4
u3.bleeps << b5
u3.bleeps << b6

bt1.bleeps << b1
bt1.bleeps << b2
bt1.bleeps << b3
bt1.bleeps << b4
bt1.bleeps << b5
bt1.bleeps << b6