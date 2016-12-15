module Fanta
  class FormDesign < ActiveRecord::Base
		has_many :designgables
		
		belongs_to :project
		validates :name, presence: true
  end
end
