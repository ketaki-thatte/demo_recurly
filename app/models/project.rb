class Project < ActiveRecord::Base
  attr_accessible :project_name
  belongs_to :User
end
