require 'rails_helper'

describe Product do

	context "when the product has comments" do
	  before do
	    @product = Product.create!(name: "Basic Duckie")
	    @user = User.create!(first_name: "Alextest", last_name: "Thetfordtest", email: "alexthetfordtest@gmail.com", password: "testglabes")
	    @product.comments.create!(rating: 1, user: @user, body: "Duckie doo doo!")
	    @product.comments.create!(rating: 3, user: @user, body: "Floating nice!")
	    @product.comments.create!(rating: 5, user: @user, body: "Biltastic")
	  end

	  it "returns the average rating of all comments" do
	    expect(@product.average_rating).to eq 3
	  end
	end

	context "when a new product has description but no name" do
  	before do
    	Product.new(description: "The duck your bath needs")
  	end

  	it "is not valid" do
    	expect(Product.new(description: "The duck your bath needs")).not_to be_valid
    end
  end
end

# describe Person do
#   context "first and last name present" do
#     before do
#       @person = Person.new(first_name: "John", last_name: "Smith")
#     end

#     it "should return first and last" do
#       expect(@person.full_name).to eq "John Smith"
#     end
#   end

#   context "first name missing" do
#     before { @person = Person.new(last_name: "Smith") }

#     it "should return last name only" do
#       expect(@person.full_name).to eq "Smith"
#     end
#   end

#   context "last name missing" do
#     before { @person = Person.new(first_name: "John") }

#     it "should return first name only" do
#       expect(@person.full_name).to eq "John"
#     end
#   end

#   context "no names present" do
#     before { @person = Person.new() }

#     it "should return nothing" do
#       expect(@person.full_name).to eq ""
#     end
#   end
# end