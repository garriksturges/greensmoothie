class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :parts, :dependent => :destroy
  has_many :follwers, :dependent => :destroy
  accepts_nested_attributes_for :parts
  has_many :ingredients, :through=>:parts
  validates_presence_of :description, :on => :create, :message => "can't be blank"
  validates_presence_of :user, :on => :create, :message => "can't be blank"
  
end
