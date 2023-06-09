require 'rails_helper'

describe Post, type: :model do
  test_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos', bio: 'Teacher from Mexico.',
                          post_counter: 0)
  test_post = Post.new(author: test_user, title: 'Hello', text: 'This is my first post', comments_counter: 0,
                       likes_counter: 0)

  before { test_post.save }
  it 'Title should be present' do
    test_post.title = nil
    expect(test_post).to_not be_valid
  end

  it 'comment counter should be integer' do
    subject.comments_counter = 1.5
    expect(subject).to_not be_valid
  end

  it 'comment counter should be greater than zero' do
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end

  it 'like counter should be integer' do
    subject.likes_counter = 1.5
    expect(subject).to_not be_valid
  end

  it 'like counter should be greater than zero' do
    subject.likes_counter = -1
    expect(subject).to_not be_valid
  end

  it 'post should increase user post counter by 1' do
    # it will increase automatically after post save
    expect(test_user.post_counter).to eq(1)
  end

  it 'post should return top 5 comments' do
    test_post = Post.create(author: test_user, title: 'Hello', text: 'This is my first post', comments_counter: 0,
                            likes_counter: 0)
    Comment.create(post: test_post, author: test_user, text: 'This is my first comment')
    Comment.create(post: test_post, author: test_user, text: 'This is my 2nd comment')
    Comment.create(post: test_post, author: test_user, text: 'This is my 3rd comment')
    Comment.create(post: test_post, author: test_user, text: 'This is my 4th comment')
    Comment.create(post: test_post, author: test_user, text: 'This is my 5th comment')

    expect(test_post.top_5_comment.size).to eq(5)
    expect(test_post.top_5_comment[0].text).to eq('This is my 5th comment')
    expect(test_post.top_5_comment[1].text).to eq('This is my 4th comment')
    expect(test_post.top_5_comment[2].text).to eq('This is my 3rd comment')
    expect(test_post.top_5_comment[3].text).to eq('This is my 2nd comment')
    expect(test_post.top_5_comment[4].text).to eq('This is my first comment')
  end
end
