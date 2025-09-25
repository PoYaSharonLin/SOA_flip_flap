# frozen_string_literal: true

# module YamlBuddy that can be included (mixin) to take and output Yaml data
module YamlBuddy
  attr_accessor :data

  # Converts a YAML string into @data, an array of hashes 
  def take_yaml(yml)
  end 

  # Converts @data back to yaml 
  def to_yaml
  end 
end 


