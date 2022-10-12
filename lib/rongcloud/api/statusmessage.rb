module RongCloud
  module API
    module Statusmessage
      include Resourceable

      member "/statusmessage/group/publish.json"
      member "/statusmessage/private/publish.json"
    end
  end
end
