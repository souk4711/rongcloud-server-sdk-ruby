module RongCloud
  module API
    module Ultragroup
      include Resourceable

      member "/ultragroup/create.json"
      member "/ultragroup/dis.json"
      member "/ultragroup/join.json"
      member "/ultragroup/quit.json"
      member "/ultragroup/refresh.json"

      member "/ultragroup/channel/create.json"
      member "/ultragroup/channel/del.json"
      member "/ultragroup/channel/get.json"
      member "/ultragroup/channel/private/users/add.json	"
      member "/ultragroup/channel/private/users/del.json"
      member "/ultragroup/channel/private/users/get.json"
      member "/ultragroup/channel/type/change.json"

      member "/ultragroup/message/expansion/delete.json"
      member "/ultragroup/message/expansion/query.json"
      member "/ultragroup/message/expansion/set.json"

      member "/ultragroup/banned/whitelist/add.json"
      member "/ultragroup/banned/whitelist/del.json"
      member "/ultragroup/banned/whitelist/get.json"
      member "/ultragroup/globalbanned/get.json"
      member "/ultragroup/globalbanned/set.json"
      member "/ultragroup/member/exist.json"
      member "/ultragroup/notdisturb/get.json"
      member "/ultragroup/notdisturb/set.json"
      member "/ultragroup/userbanned/add.json"
      member "/ultragroup/userbanned/del.json"
      member "/ultragroup/userbanned/get.json"
    end
  end
end
