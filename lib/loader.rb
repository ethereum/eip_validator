require 'front_matter_parser'

class Loader
  def self.load(file_name)
    FrontMatterParser::Parser.parse_file(file_name).front_matter
  end
end
