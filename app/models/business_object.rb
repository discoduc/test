class BusinessObject < ActiveRecord::Base
  attr_accessible :Category, :DeliveryDate, :Description, :Notes, :Owner, :Price, :Title
end
