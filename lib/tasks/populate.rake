namespace :db do
# 	def years_from_today(from, to)
#   	    num = rand(from..to)
#   		(Date.today - num.years).to_date
# 	end	
#   desc "Create 10 employers with random names and addresses"
#   task :populate_employer => :environment do
# 	require 'populator'
# 	require 'ffaker'
# 		Employer.populate 5 do |employer|
# 			employer.name = FFaker::Company.name
# 			employer.city = FFaker::Address.city
# 			employer.state = FFaker::AddressUS.state
# 			employer.zipcode = FFaker::AddressUS.zip_code
# 			employer.address = FFaker::AddressUS.street_address
# 			employer.contact_number = FFaker::PhoneNumber.phone_number
# 			employer.contact_number = FFaker::PhoneNumber.phone_number
# 		end
# 	  puts 'All done!!!'
#   end

  
  desc "Create 50 random posts"
  task :populate_employees => :environment do
	require 'populator'
	require 'ffaker'


	    Post.populate 50 do |post|
    	  	post.user_id = 1
    		post.body = FFaker::DizzleIpsum.paragraphs
    	    post.title = FFaker::Skill.specialties
 
	    end
	    

  end
  
  desc "Create random products"
  task :populate_products => :environment do
	require 'populator'
	require 'ffaker'
	Product.populate 50 do |product|

    		product.name = FFaker::Product.product_name
    		product.description = FFaker::HipsterIpsum.paragraphs
    		product.price = 4..1000
    		product.qty = 39..599
    		product.img_url = FFaker::Avatar.image
 
	    end
	
		
  end

	  
	  
	  
	  
	  
	  
	  
	  
	  

  
  
  
  
  
  
  
  
  
end



# require "as-duration"
# FFaker::Time.between(2.days.ago, Time.now, :all) #=> "2014-09-19 07:03:30 -0700"
# FFaker::Time.between(2.days.ago, Time.now, :day) #=> "2014-09-18 16:28:13 -0700"
# FFaker::Time.between(2.days.ago, Time.now, :night) #=> "2014-09-20 19:39:38 -0700"
# FFaker::Time.between(2.days.ago, Time.now, :morning) #=> "2014-09-19 08:07:52 -0700"
# FFaker::Time.between(2.days.ago, Time.now, :afternoon) #=> "2014-09-18 12:10:34 -0700"
# FFaker::Time.between(2.days.ago, Time.now, :evening) #=> "2014-09-19 20:21:03 -0700"
# FFaker::Time.between(2.days.ago, Time.now, :midnight) #=> "2014-09-20 00:40:14 -0700"


desc "Create 25 employees with random names and addresses"
  task :pop_emp => :environment do
	require 'populator'
	require 'ffaker'
	def years_from_today(from, to)
  	    num = rand(from..to)
  		(Date.today - num.years ).to_date
	end
	password = "password"
	  User.populate 50 do |user|
		user.first_name = FFaker::Name.first_name
		user.last_name = FFaker::Name.last_name
		user.email = FFaker::Internet.email
		user.city = FFaker::Address.city
		user.state = FFaker::AddressUS.state
		user.zipcode = FFaker::AddressUS.zip_code
		user.address = FFaker::AddressUS.street_address
		user.role = "Employee"
		user.encrypted_password = User.new(:password => password).encrypted_password
		user.sign_in_count = 0
		Employee.populate 1 do |employee|
			employee.user_id = user.id
			employee.first_name = user.first_name
			employee.last_name = user.last_name
			employee.email = user.email
			employee.ssn = 1234..9999
			employee.phone_number = FFaker::PhoneNumber.short_phone_number

			
	
	
			
			puts employee.first_name
		  end
		


		
		puts user.first_name
	  end
	  puts 'All done!!!'
  end
  
 # task :shifts => :environment do
  	def months_from_today(from, to)
  	    num = rand(from..to)
  		(Date.today - num.months ).to_date
	end
	def years_from_today(from, to)
  	    num = rand(from..to)
  		(Date.today - num.years ).to_date
	end

	# puts random_hour(10, 15)
	
 #   # Shift.populate 100 do |t|
 #   #   t.time_in = 
    
 #   #   t.employee_id = rand(6)+1 # random group_id [1..6]
 #   #   t.state = "clocked_out"
 #   #   t.priority_id = rand(3)+1 # random priority_id [1..3]
 #   #   t.contact_id = rand(NUM_CONTACTS)+1 # random contact_id [1..NUM_CONTACTS]
 #   #   t.creator_id = rand(6)+2 # random created_by [2..7]
 #   #   t.created_at = CREATION_PERIOD.sample
 #   # end
 # end