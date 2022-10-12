module RongCloud
  module API
    module Group
      include Resourceable

      member "/group/create.json"
      member "/group/dismiss.json"
      member "/group/join.json"
      member "/group/quit.json"
      member "/group/refresh.json"
      member "/group/sync.json"

      member "/group/ban/add.json"
      member "/group/ban/query.json"
      member "/group/ban/rollback.json"
      member "/group/user/ban/whitelist/add.json"
      member "/group/user/ban/whitelist/query.json"
      member "/group/user/ban/whitelist/rollback.json"
      member "/group/user/gag/add.json"
      member "/group/user/gag/list.json"
      member "/group/user/gag/rollback.json"
      member "/group/user/query.json"

      member "/group/remarks/del.json"
      member "/group/remarks/get.json"
      member "/group/remarks/set.json"
    end
  end
end
