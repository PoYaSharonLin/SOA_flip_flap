# frozen_string_literal: true

require 'yaml'
# module YamlBuddy that can be included (mixin) to take and output Yaml data
module YamlBuddy
  attr_accessor :data

  # Converts a YAML string into @data, an array of hashes
  def take_yaml(yml)
    @data = YAML.safe_load(yml)
  end

  # Converts @data back to yaml
  def to_yaml
    @data.to_yaml
  end
end
