FactoryGirl.define do
	

	factory :comment do
		message "Great!"
		rating "5_star"
		association :user
		association :place

	end	

	
	factory :place do
		name "Zia's"
		description "Italian"
		address "123 Zia street Virginia Beach, VA"
		association :user
	end

	factory :user do
    sequence :email do |n|
      "yoloman#{n}@gmail.com"
    end
    password "omglolhahaha"
    password_confirmation "omglolhahaha"
  end

end