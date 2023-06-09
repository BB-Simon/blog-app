require 'rails_helper'

describe Comment, type: :model do
  let(:test_user) { User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.', post_counter: 0) }
  let(:test_post) do
    Post.create(author: test_user, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
  end
  let(:test_comment) { Comment.new(post: test_post, author: test_user, text: 'This mi first comment') }

  before do
    # test_comment.author_id = test_user.id
    test_comment.save
  end

  it 'should increment user comment counter by 1' do
    expect(test_post.comments_counter).to eq(1)
  end

  it 'should have an author' do
    expect(test_comment.author).to eq test_user
  end

  it 'should have a post' do
    expect(test_comment.post).to eq test_post
  end
end
