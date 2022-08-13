class Post < ApplicationRecord
  def user
    User.find_by(id: self.user_id)
  end

  def self.build(title="", body="")
    Post.new(title: title, body: body, user_id: self.user_id)
  end
end
