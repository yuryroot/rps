module RobotThrow
  class Random < Base

    def throw
      [Choice::Rock, Choice::Paper, Choice::Scissors].sample.new
    end
  end
end
