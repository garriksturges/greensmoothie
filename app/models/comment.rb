class Comment < ActiveRecord::Base
 belongs_to :recipe
 belongs_to :user
 validates_presence_of :opinion, :on => :create, :message => "can't be blank"
end
