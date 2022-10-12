module RongCloud
  module API
    module User
      include Resourceable

      member "/user/getToken.json"
      member "/user/token/expire.json"
      member "/user/info.json"
      member "/user/refresh.json"

      member "/user/block.json"
      member "/user/block/query.json"
      member "/user/unblock.json"
      member "/user/checkOnline.json"
      member "/user/group/query.json"

      member "/user/blacklist/add.json"
      member "/user/blacklist/query.json"
      member "/user/blacklist/remove.json"
      member "/user/whitelist/add.json"
      member "/user/whitelist/query.json"
      member "/user/whitelist/remove.json"
      member "/user/whitesetting/query.json"
      member "/user/whitesetting/set.json"
      member "/user/chat/fb/set.json"
      member "/user/chat/fb/querylist.json"

      member "/user/remarks/del.json"
      member "/user/remarks/get.json"
      member "/user/remarks/set.json"
    end
  end
end
