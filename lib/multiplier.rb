# frozen_string_literal: true

require_relative "multiplier/version"

module Multiplier
  def self.call(*numbers)
    raise NotANumberError if numbers.find {|x| !x.is_a?(Numeric)}

    numbers.reduce(1) {|res, x| res * x}
  end

  class NotANumberError < StandardError; end

  class Error < StandardError; end
  # Your code goes here...
end
