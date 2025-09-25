# frozen_string_literal: true

# module TsvBuddy that can be included (mixin) to take and output TSV data
module TsvBuddy
  attr_accessor :data

  # Converts a TSV string into @data, an array of hashes
  def take_tsv(tsv)

  end

  # Converts @data back to a TSV string
  def to_tsv

  end
end
