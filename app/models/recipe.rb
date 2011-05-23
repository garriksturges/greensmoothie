class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :parts, :dependent => :destroy
  #has_many :followers, :dependent => :destroy
  accepts_nested_attributes_for :parts
  has_many :ingredients, :through=>:parts
  validates_presence_of :description, :on => :create, :message => "A Smoothie must had a description"
  validates_presence_of :user, :on => :create, :message => "Valid User Needed"
  validates_presence_of :parts, :on => :create, :message => "A Smoothie must have at least one ingredient"
  validates_presence_of :name
  validates_uniqueness_of :name, :on => :create, :message => "Unique Smoothie Name needed"
end
