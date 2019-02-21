module RobotThrow

  module Adapters
    CURB_API = CurbApi
    RANDOM = Random

    ALL = [CURB_API, RANDOM].freeze
  end

  def self.throw
    Adapters::ALL.find do |adapter|
      choice = adapter.new.throw
      return choice if choice
    end
  end
end
