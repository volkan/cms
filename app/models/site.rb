class Site < ActiveRecord::Base
  has_many :contents,
           :foreign_key => "site_id"
           #:conditions => ['status = ?', true]
end
