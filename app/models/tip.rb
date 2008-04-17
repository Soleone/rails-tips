class Tip < ActiveRecord::Base
  belongs_to :user
  
  validates_uniqueness_of :title
  validates_presence_of :title, :content, :category
  
  validates_length_of :title, :within => 3..48
  validates_format_of :link, :with => /http:\/\/\w+\.\w+/,
                      :message => "must be a valid URL"
end
