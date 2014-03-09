class Event < ActiveRecord::Base
  attr_accessible :address, :city, :description, :state, :time, :title, :url, :venue, :zip


  scope :upcoming, where("time >= ?", Time.now).order("time")
end
