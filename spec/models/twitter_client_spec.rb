# require 'rails_helper'
#
# RSpec.describe TwitterClient, type: :model do
#   describe "#post_tweet(bout)" do
#     let!(:twitter_client) { TwitterClient.new }
#     let!(:bout) do FactoryGirl.create(:bout,
#       name: "Fencer Awesome",
#       city: "Boston",
#       state: "Massachusetts")
#     end
#
#     let(:message) do
#       <<-MSG
#         #{fencer.name}, #{fencer.city}, #{fencer.state} was added! Check it out at: literalist.herokuapp.com/fencers/#{fencer.id}
#       MSG
#     end
#
#     it "posts a tweet" do
#       VCR.use_cassette 'model/twitter_client' do
#         response = twitter_client.post_tweet(message)
#         expect(response).to_not eq nil
#         expect(response).to be_a(Twitter::Tweet)
#         expect(response.text).to include("was just added! Check it out at")
#       end
#     end
#
#     it "handles errors in posting tweet and returns nil" do
#       VCR.use_cassette 'model/twitter_client_fail' do
#         response = twitter_client.post_tweet(message)
#         expect(response).to eq nil
#       end
#     end
#   end
# end
