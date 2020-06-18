# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.delete_all
Product.create!(name: 'Women Denim Jacket', 
	description: 
	%{A stylish denim jacket with a boxy silhouette. The denim jacket is a casual classic.
		The boxy silhouette looks fantastic with wide-legged bottoms. 
		Features a faded, lived-in look. Made with stretch denim for extra comfort. A soon-to-be “old favorite”.
	},
	image: 'jacket1.jpeg',
	price: 28.00)

#####################

Product.create!(name: 'Women Aviator Jacket', 
	description: 
	%{
		Made from sumptuous shearling, this authentic lambskin hooded aviator jacket reveals an 
		aged patina effect. The slightly shiny finish is contrasted with black leather trims for a sporty allure. 
		The Chloé logo is subtly embossed on the back yoke.
	},
	image: 'jacket2.jpeg',
	price: 59.00)

##############################

Product.create!(name: 'Women Leather Jacket', 
	description: 
	%{
		An edgy, faux-leather jacket is designed with silvery zip details and a 
		perfectly cropped length.
	},
	image: 'jacket3.jpeg',
	price: 49.99)
