# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Create Users..."
User.create([
	{username: 'avid',firstname: 'Avid', lastname: 'Maulana', email: 'avid@email.com', password: '12345678', password_confirmation: '12345678', biographical_info: 'Managed a small team marketing cigarettes worldwide. Spent 2001-2004 working on cigarettes in the government sector. Uniquely-equipped for exporting barbie dolls in the government sector. Practiced in the art of working on Magic 8-Balls for the government. Spent 2001-2004 buying and selling robots in Washington, DC. Crossed the country marketing toy trucks in Pensacola, FL.'},
	{username: 'erich',firstname: 'Erich', lastname: 'Moitoso', email: 'erich@email.com', password: '12345678', password_confirmation: '12345678', biographical_info: "Earned praise for creating marketing channels for fried chicken in Prescott, AZ. Enthusiastic about donating rubik's cubes in the financial sector. Spent a year investing in toy planes in the financial sector. Spent 2002-2008 investing in sausage in the UK. Have a strong interest in short selling pond scum in Salisbury, MD. Gifted in creating marketing channels for basketballs in Gainesville, FL."},
	{username: 'wilber',firstname: 'Wilber', lastname: 'Muse', email: 'wilber@email.com', password: '12345678', password_confirmation: '12345678', biographical_info: "Uniquely-equipped for supervising the production of crickets in Orlando, FL. Spent two years lecturing about salsa in the UK. Spent a weekend getting to know cabbage in Washington, DC. Spent 2001-2004 testing the market for Easter candy in Atlantic City, NJ. Spent several years consulting about weed whackers in Gainesville, FL. At the moment I'm merchandising Magic 8-Balls in New York, NY."},
	{username: 'myrta',firstname: 'Myrta', lastname: 'Gregson', email: 'myrta@email.com', password: '12345678', password_confirmation: '12345678', biographical_info: "Spent a year buying and selling glue for farmers. Spent a weekend testing the market for clip-on ties in Fort Lauderdale, FL. Developed several new methods for analyzing dolls in Ohio. Spent college summers researching bassoons in Los Angeles, CA. Spent 2001-2006 developing karma in Africa. Spent 2002-2007 exporting the elderly in Nigeria."},
	{username: 'betty', firstname: 'Betty', lastname: 'Crossman', email: 'betty@email.com', password: '12345678', password_confirmation: '12345678', biographical_info: "Garnered an industry award while working with bullwhips in the financial sector. Enthusiastic about writing about banjos for the government. Spent 2002-2009 researching jack-in-the-boxes on Wall Street. A real dynamo when it comes to selling rubik's cubes in Washington, DC. Uniquely-equipped for training birdhouses in Fort Lauderdale, FL. Spent 2002-2009 writing about pogo sticks in Phoenix, AZ."},
	{username: 'angelique',firstname: 'Angelique', lastname: 'Legree', email: 'angelique@email.com', password: '12345678', password_confirmation: '12345678', biographical_info: "Spent the better part of the 90's working with methane for the government. Spent several years lecturing about saliva in Minneapolis, MN. Earned praised for my work writing about human growth hormone in Deltona, FL. In 2009 I was developing action figures in Atlantic City, NJ. Was quite successful at working on clip-on ties in Phoenix, AZ. In 2009 I was marketing action figures in Miami, FL."},
	{username: 'fredia',firstname: 'Fredia', lastname: 'Prins', email: 'fredia@email.com', password: '12345678', password_confirmation: '12345678', biographical_info: "Developed several new methods for working on jump ropes in Phoenix, AZ. Spent 2001-2008 getting my feet wet with soap scum worldwide. Spent 2001-2006 building frisbees in the UK. Spent 2001-2006 working on sauerkraut in Atlantic City, NJ. What gets me going now is analyzing robotic shrimp in Salisbury, MD. Spent college summers building human growth hormone in Deltona, FL."},
	{username: 'russel', firstname: 'Russel', lastname: 'Guidry', email: 'russel@email.com', password: '12345678', password_confirmation: '12345678', biographical_info: "Spent 2001-2004 marketing dandruff in West Palm Beach, FL. Lead a team analyzing acne in Cuba. Enthusiastic about selling spit-takes in Salisbury, MD. In 2008 I was working on velcro in Salisbury, MD. Earned praised for my work creating marketing channels for Roombas with no outside help. Spent a weekend exporting human brains in Hanford, CA."},
	{username: 'todd', firstname: 'Todd', lastname: 'Whiteman', email: 'todd@email.com', password: '12345678', password_confirmation: '12345678', biographical_info: "Lead a team supervising the production of yogurt in Nigeria. Spent the better part of the 90's training Mr. Potato Heads in Tampa, FL. Spent high school summers working on sock monkeys in Naples, FL. Won several awards for getting to know the elderly on Wall Street. Prior to my current job I was implementing mannequins in Libya. Spent 2002-2009 implementing clip-on ties in Orlando, FL."},
	{username: 'emeline',firstname: 'Emeline', lastname: 'Manuelito', email: 'emeline@email.com', password: '12345678', password_confirmation: '12345678', biographical_info: "Spent the better part of the 90's deploying bassoons in Suffolk, NY. Gifted in developing tattoos in Las Vegas, NV. Spent 2002-2008 testing the market for Easter candy in Edison, NJ. Prior to my current job I was merchandising weebles in Washington, DC. Prior to my current job I was short selling jigsaw puzzles in Los Angeles, CA. In 2009 I was importing toy soldiers in the UK."}
])

puts "Create Articles..."
Article.create!(
	[{
		title: 'Donec elit libero sodales',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 1
	},	
	{
		title: 'Praesent congue erat at massa',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 2
	},	
	{
		title: 'Phasellus leo dolor tempus',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 3
	},	
	{
		title: 'Donec elit libero sodales',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 4
	},	
	{
		title: 'Donec elit libero sodales',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 5
	},	
	{
		title: 'Phasellus consectetuer vestibulum elit',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 6
	},	
	{
		title: 'Fusce risus nisl viverra et',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 7
	},	
	{
		title: 'Sed magna purus fermentum',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 8
	},	
	{
		title: 'Nam quam nunc blandit vel',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 9
	},	
	{
		title: 'Donec elit libero sodales',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 10
	},	
	{
		title: 'Donec pede justo fringilla vel',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 1
	},	
	{
		title: 'Vestibulum fringilla pede sit amet',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 2
	},	
	{
		title: 'Phasellus nec sem in justo',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 3
	},	
	{
		title: 'Proin sapien ipsum porta a',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 4
	},	
	{
		title: 'Vestibulum turpis sem aliquet eget',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 5
	},	
	{
		title: 'In hac habitasse platea dictumst',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 6
	},	
	{
		title: 'Donec elit libero sodales',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 7
	},	
	{
		title: 'Suspendisse enim turpis dictum',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 8
	},	
	{
		title: 'Donec orci lectus aliquam ut',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 9
	},	
	{
		title: 'Nullam accumsan lorem in dui',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 10
	},	
	{
		title: 'Donec elit libero sodales',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 1
	},	
	{
		title: 'Praesent congue erat at massa',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 2
	},	
	{
		title: 'Phasellus leo dolor tempus',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 3
	},	
	{
		title: 'Donec elit libero sodales',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 4
	},	
	{
		title: 'Donec elit libero sodales',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 5
	},	
	{
		title: 'Phasellus consectetuer vestibulum elit',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 6
	},	
	{
		title: 'Fusce risus nisl viverra et',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 7
	},	
	{
		title: 'Sed magna purus fermentum',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 8
	},	
	{
		title: 'Nam quam nunc blandit vel',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 9
	},	
	{
		title: 'Donec elit libero sodales',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'published',
		tag_list: 'Public, Article',
		user_id: 10
	},	
	{
		title: 'Donec pede justo fringilla vel',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 1
	},	
	{
		title: 'Vestibulum fringilla pede sit amet',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 2
	},	
	{
		title: 'Phasellus nec sem in justo',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 3
	},	
	{
		title: 'Proin sapien ipsum porta a',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 4
	},	
	{
		title: 'Vestibulum turpis sem aliquet eget',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 5
	},	
	{
		title: 'In hac habitasse platea dictumst',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 6
	},	
	{
		title: 'Donec elit libero sodales',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 7
	},	
	{
		title: 'Suspendisse enim turpis dictum',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 8
	},	
	{
		title: 'Donec orci lectus aliquam ut',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 9
	},	
	{
		title: 'Nullam accumsan lorem in dui',
		description: 
		'<p>Phasellus a est. Aliquam erat volutpat. Aenean commodo ligula eget dolor.</p>

		<p>Vestibulum turpis sem, aliquet eget, lobortis pellentesque, rutrum eu, nisl. Cras id dui. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>

		<p>Morbi mollis tellus ac sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.</p>

		<p>Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
		',
		status: 'draft',
		tag_list: 'Public, Article',
		user_id: 10
	}]
)


