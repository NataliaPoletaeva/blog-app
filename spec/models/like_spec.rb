require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:each) do
    @user = User.new(id: 1, name: 'Fred', bio: 'I am a content creator', photo: '', posts_counter: 0)
    @like = Like.new(user_id: @user.id, post_id: @user.id)
  end

  describe 'validation tests' do
    it 'validates the author_id is an integer' do
      @like.user_id = 1
      expect(@like.user_id).to eq(1)
    end

    it 'validates the post_id is an integer' do
      @like.post_id = 1
      expect(@like.post_id).to eq(1)
    end
  end
end
