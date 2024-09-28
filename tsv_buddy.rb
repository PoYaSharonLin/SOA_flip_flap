# frozen_string_literal: true

# Module that can be included (mixin) to take and output TSV data

module TsvBuddy
  attr_accessor :data

  # Converts a TSV string into @data, an array of hashes
  def take_tsv(tsv)
    lines = tsv.split("\n")
    headers = lines.shift.split("\t")
    @data = lines.map { |line| headers.zip(line.split("\t")).to_h }
  end

  # Converts @data into tsv string
  # arguments: none
  # returns: String in TSV format

  # Converts @data back to a TSV string
  def to_tsv
    headers = @data.first.keys.join("\t")
    rows = @data.map { |row| row.values.join("\t") }
    [headers, *rows].join("\n") + "\n"
  end
end

