require 'active_model'

class Validator
  include ActiveModel::Model
  attr_accessor :eip, :title, :author, :type, :category, :status, :created, :replaces, :requires, :layer
  validates_presence_of :eip, :title, :author, :type, :status, :created
  validates_presence_of :category, if: Proc.new { |v| v.type == 'Standards Track' }
  validates_inclusion_of :status, in: %w(Draft Active Accepted Final Deferred)
end