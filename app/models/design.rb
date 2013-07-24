class Design < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :user_id, :image
  has_attached_file :image, 
  :styles => { :medium => "300x300>", :thumb => "100x100>", :large => "800x800>" }, 
  :storage => :s3,
 	:s3_credentials => "#{Rails.root}/config/s3_credentials.yml",
	:path => "/:id/:style/:filename",
  :default_url => "/images/:style/missing.png"

end
