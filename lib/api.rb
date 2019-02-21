class Api < Grape::API
  format :json

  params do
    requires :choice, type: Choice::Base, coerce_with: ->(value) { Choice.by(value).new(value) }
  end

  post :play do
    user_choice = params[:choice]
    robot_choice = RobotThrow.throw

    if user_choice.class.beats?(robot_choice.class)
      result = { winner: 'user', message: "#{user_choice} beats #{robot_choice}" }
    elsif user_choice.class.beaten?(robot_choice.class)
      result = { winner: 'robot', message: "#{robot_choice} beats #{user_choice}" }
    elsif user_choice.class.tie?(robot_choice.class)
      result = { winner: 'tie', message: "in this game #{robot_choice} is the same as #{user_choice}" }
    else
      raise StandardError, 'something went wrong, please let developers know :)'
    end

    present(
      user_choice: user_choice.to_s,
      robot_choice: robot_choice.to_s,
      result: result
    )
  end
end
