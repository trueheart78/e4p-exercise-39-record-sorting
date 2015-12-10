class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :position, presence: true
end
