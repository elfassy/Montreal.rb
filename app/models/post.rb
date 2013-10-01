class Post < ActiveRecord::Base
  validate [:title, :content], presence: true
end
