require 'bundler/setup'
Bundler.require(:default)

require_relative 'lib/choice'
require_relative 'lib/choice/beatable'
require_relative 'lib/choice/base'
require_relative 'lib/choice/rock'
require_relative 'lib/choice/paper'
require_relative 'lib/choice/scissors'
require_relative 'lib/choice/hammer'
require_relative 'lib/choice/unknown'

require_relative 'lib/robot_throw/base'
require_relative 'lib/robot_throw/curb_api'
require_relative 'lib/robot_throw/random'
require_relative 'lib/robot_throw'

require_relative 'lib/web'
require_relative 'lib/api'
