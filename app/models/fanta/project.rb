module Fanta
  class Project < ActiveRecord::Base
		
		validates :name, presence: true
		validates :model, uniqueness: true
		
		has_many :form_designs, dependent: :destroy
		accepts_nested_attributes_for :form_designs, allow_destroy: true
		
		scope :get_model, -> (model) { where( model: model ) if model.present? }
		
  end
end