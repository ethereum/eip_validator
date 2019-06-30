require 'active_model'

module EipValidator
  class Validator
    def initialize(opts = {})
      # ruby does not allow method with -
      # replaces - with _
      opts.keys.each do |key|
        raise("#{key} incude _ which is not allowed") if key.to_s.match(/_/)
        if key.to_s.match(/-/)
          new_key = opts.keys.last.to_s.gsub('-','_')
          opts[new_key] = opts.delete key
        end
      end
      super(opts)
    end

    include ActiveModel::Model
    attr_accessor :eip, :title, :author, :type, :category, :status, :created
    attr_accessor :replaces, :requires, :layer
    # replace - with _
    attr_accessor :discussions_to
    validates_presence_of :eip, :title, :author, :type, :status, :created
    validates_inclusion_of :category,
                           in: %w(Core Networking Interface ERC),
                           if: Proc.new { |v| v.type == 'Standards Track' }
    validates_inclusion_of :type, in: ['Standards Track', 'Informational', 'Meta']
    validates_inclusion_of :status, in: ['Draft', 'Last Call', 'Accepted', 'Final', 'Active', 'Abandoned', 'Deferred', 'Rejected', 'Superseded']
  end
end

