namespace :db do
  desc "Creating a super user email 'phyowaiwin@yahoo.com' with password 'phyo'"
  task :create_super_user  => :environment do

    
    
    user = Admin.new
    #user.title = 'Mr'
    user.name = 'phyo'
    #user.lastname = 'wai'
    user.email = 'phyowaiwin@yahoo.com'
    #user.user_type_id = UserType.AdminId
    user.salt = '22019278600.684372712196337'
    #user.hashed_code = '55a01de5106b1d3735c68365779766f784ac2d87'
    
    puts "Creating a super user email 'phyowaiwin@yahoo.com' with password 'phyo'" if user.save
  end
end


  #EXAMPLE USAGE
  #namespace :pick do
  #	task :winner => :environment do
  #		puts "Winner: #{pick(User).name}"
  #	end
  #
  #	task :price => @environment do
  #		puts "Price: #{pick(Product).name}"
  #	end
  
  #task :all => [:price, :winner]
  
  #def pick(model_class)
  #	model_class.find(:first, :order => 'RAND()')
  #end
  #end