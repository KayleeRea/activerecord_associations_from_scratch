class Magazine < ActiveRecord::Base
     has_many :subscription
     has_many :subscribers, through: :subscription
end