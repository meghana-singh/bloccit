require 'rails_helper'

RSpec.describe Topic, type: :model do
   
   let(:public) { true }
   let(:topic) { create(:topic) }

    it { is_expected.to have_many(:posts) }
    it { is_expected.to have_many(:sponsored_posts) }
    
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    
 
    it { is_expected.to validate_length_of(:name).is_at_least(5) }
    it { is_expected.to validate_length_of(:description).is_at_least(15) }
    
 # #1
   describe "attributes" do
     it "has name, description, and public attributes" do
       #expect(topic).to have_attributes(name: name, description: description, public: public)
       expect(topic).to have_attributes(name: topic.name, description: topic.description)
     end

 # #2
     it "is public by default" do
       expect(topic.public).to be(true)
     end
    
   end
  
end
