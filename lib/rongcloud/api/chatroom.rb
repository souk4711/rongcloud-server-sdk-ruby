module RongCloud
  module API
    module Chatroom
      include Resourceable

      member "/chatroom/create.json"
      member "/chatroom/destroy.json"
      member "/chatroom/query.json"

      member "/chatroom/correlation/rtc.json"
      member "/chatroom/entry/query.json"
      member "/chatroom/entry/remove.json"
      member "/chatroom/entry/set.json"
      member "/chatroom/keepalive/add.json"
      member "/chatroom/keepalive/query.json"
      member "/chatroom/keepalive/remove.json"
      member "/chatroom/whitelist/add.json"
      member "/chatroom/whitelist/delete.json"
      member "/chatroom/whitelist/query.json"

      member "/chatroom/message/priority/add.json"
      member "/chatroom/message/priority/query.json"
      member "/chatroom/message/priority/remove.json"

      member "/chatroom/ban/add.json"
      member "/chatroom/ban/check.json"
      member "/chatroom/ban/query.json"
      member "/chatroom/ban/rollback.json"
      member "/chatroom/user/ban/add.json"
      member "/chatroom/user/ban/query.json"
      member "/chatroom/user/ban/remove.json"
      member "/chatroom/user/block/add.json"
      member "/chatroom/user/block/list.json"
      member "/chatroom/user/block/rollback.json"
      member "/chatroom/user/gag/add.json"
      member "/chatroom/user/gag/list.json"
      member "/chatroom/user/gag/rollback.json"
      member "/chatroom/user/query.json"
      member "/chatroom/user/whitelist/add.json"
      member "/chatroom/user/whitelist/query.json"
      member "/chatroom/user/whitelist/remove.json"
      member "/chatroom/user/exist.json"
      member "/chatroom/users/exist.json"
    end
  end
end
