# test_flip_flap.rb
require_relative 'flip_flap'

flip_flap = FlipFlap.new

# Sample TSV string
sample_tsv = <<-TSV
date\tstudent_id\tlanguages
9/12/2014 20:20:55\t3452\tJava, C, HTML
9/13/2014 21:22:45\t3453\tPython, Ruby
TSV

# Test take_tsv and to_tsv
flip_flap.take_tsv(sample_tsv)
puts "Data from TSV:"
puts flip_flap.data.inspect
puts "\nConverted back to TSV:"
puts flip_flap.to_tsv

# Sample YAML string
sample_yaml = <<-YAML
---
- date: '9/12/2014 20:20:55'
  student_id: '3452'
  languages: Java, C, HTML
- date: '9/13/2014 21:22:45'
  student_id: '3453'
  languages: Python, Ruby
YAML

# Test take_yaml and to_yaml
flip_flap.take_yaml(sample_yaml)
puts "\nData from YAML:"
puts flip_flap.data.inspect
puts "\nConverted back to YAML:"
puts flip_flap.to_yaml
