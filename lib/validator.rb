require 'active_model'

class Validator
  include ActiveModel::Model
  attr_accessor :eip, :title, :author, :type, :category, :status, :created
  validates_presence_of :eip, :title, :author, :type, :category, :status, :created


  # def initialize(opts)

  # end

  # def valid?
  #   false
  # end
end