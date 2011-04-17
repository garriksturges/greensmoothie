class Ingredient < ActiveRecord::Base
  has_many :parts, :dependent => :destroy
  has_many :recipes, :through => :parts
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_inclusion_of :variety, :in =>["Green", "Fruit", "Vegetable", "Other"]
  validates_uniqueness_of :name, :on => :create, :message => "Ingredient already exists"
end
