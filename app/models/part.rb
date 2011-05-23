class Part < ActiveRecord::Base
 belongs_to :recipe
 belongs_to :ingredient
 validates_presence_of :amount, :on => :create, :message => "Amount cannot be blank"
 validates_presence_of :ingredient, :message => "must have an asscociated ingredient"
end
