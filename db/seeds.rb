require 'populator'
require 'ffaker'
require 'faker'
Product.populate 10 do |product|
	product.name = FFaker::Product.product_name
	product.description = FFaker::HipsterIpsum.paragraphs
	product.price = Faker::Commerce.price
	product.qty = 39..599
	product.img_url = Faker::Company.logo
end

Post.populate 10 do |post|
  	post.user_id = 1
	post.body = FFaker::HTMLIpsum.fancy_string
    post.title = Faker::Hacker.say_something_smart

end
password = "password"
Admin.populate 5 do |admin|
	admin.name = Faker::Name.name 
	admin.email = Faker::Internet.safe_email(admin.name)
	admin.role = ['Super', 'Manager', 'Employee']
	admin.encrypted_password = Admin.new(:password => password).encrypted_password
	admin.sign_in_count = 0
	admin.failed_attempts = 0
end
