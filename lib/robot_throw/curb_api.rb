# frozen_string_literal: true

module RobotThrow
  class CurbApi < Base
    ENDPOINT = 'https://5eddt4q9dk.execute-api.us-east-1.amazonaws.com/rps-stage/throw'
    TIMEOUT = 3

    def throw
      response = HTTP.timeout(connect: TIMEOUT, read: TIMEOUT).get(ENDPOINT)
      return unless success?(response)

      curb_choice = response.parse.fetch('body')
      curb_choice = curb_choice.delete('"')

      Choice.by(curb_choice).new(curb_choice)

    rescue StandardError
      nil
    end

    private

    def success?(response)
      response.status.success? && response.parse['statusCode'] == 200
    end
  end
end
