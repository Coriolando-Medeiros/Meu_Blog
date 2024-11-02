class BlogController < ApplicationController
  def Index
    @post = post.where("published_date <= ?", Time.zone.now).first
  end
end
