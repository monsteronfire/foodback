class Restaurant < ActiveRecord::Base
  has_many :reviews
  belongs_to :category

  validates_presence_of :name

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [address1, address2, city, state, zipcode].join(', ')
  end

  def self.search(params)
    restaurants = Restaurant.where(category_id: params[:category].to_i)
    restaurants = Restaurant.where("name like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    restaurants = Restaurant.near(params[:location], 20) if params[:location].present?
    restaurants
  end
end
