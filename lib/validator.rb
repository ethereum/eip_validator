require 'active_model'

class Validator
  include ActiveModel::Model
  attr_accessor :eip, :title, :author, :type, :category, :status, :created, :replaces, :requires, :layer
  validates_presence_of :eip, :title, :author, :type, :category, :status, :created
  validates_inclusion_of :status, in: %w(Draft Accepted Final Deferred)
end