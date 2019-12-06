require('pry')
require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

Customer.delete_all
Film.delete_all

customer1 = Customer.new({"name" => "Matteo", "funds" => 100})
customer2 = Customer.new({"name" => "John", "funds" => 30})
customer3 = Customer.new({"name" => "Sam", "funds" => 20})
customer4 = Customer.new({"name" => "Kurt", "funds" => 40})
customer1.save()
customer2.save()
customer3.save()
customer4.save()

film1 = Film.new({"title" => "In The Mouth Of Madness", "price" => 8})
film2 = Film.new({"title" => "Prince of Darkness", "price" => 7})
film3 = Film.new({"title" => "They Live", "price" => 5})
film4 = Film.new({"title" => "The Thing", "price" => 10})
film1.save()
film2.save()
film3.save()
film4.save()

ticket1 = Ticket.new({"film_id" => film1.id, "customer_id" => customer1.id})
ticket1.save

binding.pry
nil
