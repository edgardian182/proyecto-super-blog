# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates_presence_of :title, :description, :user
  validates_length_of :description, minimum: 250
end
