module Choice
  module Beatable
    def beats
      raise NotImplementedError
    end

    def beats?(choice)
      beats.include?(choice)
    end

    def beaten?(choice)
      choice.beats?(self)
    end

    def tie?(choice)
      !beats?(choice) && !beaten?(choice)
    end
  end
end