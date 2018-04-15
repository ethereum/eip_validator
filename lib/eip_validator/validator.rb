require 'active_model'

module EipValidator
  class Validator
    include ActiveModel::Model
    attr_accessor :eip, :title, :author, :type, :category, :status, :created
    attr_accessor :replaces, :requires, :layer
    validates_presence_of :eip, :title, :author, :type, :status, :created
    validates_inclusion_of :category,
                           in: %w(Core Networking Interface ERC),
                           if: Proc.new { |v| v.type == 'Standards Track' }
    validates_inclusion_of :type, in: ['Standards Track', 'Informational', 'Meta']
    validates_inclusion_of :status, in: %w(Draft Active Accepted Final Deferred)
  end
end
