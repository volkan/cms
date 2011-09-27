class Content < ActiveRecord::Base
  belongs_to :sites
  has_many :content_translations  
end
