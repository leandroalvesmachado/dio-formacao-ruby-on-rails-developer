class BlogController < ApplicationController
  layout 'application_blank'

  def index
    # @post = Post.where('published_date <= ?', Time.zone.now).first
    # @post = Post.where('published_date <= ?', Time.zone.now).order(published_date: :desc).first
    # @post = Post.order(published_date: :desc).limit(1).first

    @posts = Post.order(published_date: :desc)
  end
end
