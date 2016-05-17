FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
 	factory :user do
    # email "Glabes@example.com"
    email
    password "Glabestest"
    first_name "Glabes"
    last_name "Glabensons"
    admin false
  end

  factory :admin, class: User do
	  # email "Glabes2@example.com"
	  email
	  password "Glabestest2"
	  admin true
	  first_name "Admin"
	  last_name "User"
	end
end