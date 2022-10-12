module RongCloud
  module API
    module Conversation
      include Resourceable

      member "/conversation/message/history/clean.json"
      member "/conversation/notification/get.json"
      member "/conversation/notification/set.json"
      member "/conversation/top/set.json"
      member "/conversation/type/notification/get.json"
      member "/conversation/type/notification/set.json"
    end
  end
end
