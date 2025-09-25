# frozen_string_literal: true

# module TsvBuddy that can be included (mixin) to take and output TSV data
module TsvBuddy
  attr_accessor :data

  # Converts a TSV string into @data, an array of hashes
  def take_tsv(tsv)
    lines = tsv.split("\n")
    headers = lines[0].split("\t")
    @data = lines[1..].map { |line| headers.zip(line.split("\t")).to_h }
  end
  # reference: https://gist.github.com/PoYaSharonLin/16bbcc18a244e7d647477489febc92fd

  # Converts @data back to a TSV string
  def to_tsv
    headers = @data.first.keys
    rows = @data.map do |hash|
      headers.map { |key| hash[key].to_s }.join("\t")
    end
    "#{[headers.join("\t"), *rows].join("\n")}\n"
  end
  # reference: https://gist.github.com/PoYaSharonLin/86bfe9b26cfae25fda7291db2588b779
end
