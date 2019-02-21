module Choice
  class Base
    extend Beatable

    def initialize(original_name = nil)
      @original_name = original_name || self.class.name.split('::').last.downcase
    end

    def to_s
      @original_name.to_s
    end
  end
end
