module RongCloud
  module API
    module Message
      include Resourceable

      member "/message/broadcast.json"
      member "/message/recall.json"

      member "/message/chatroom/broadcast.json"
      member "/message/chatroom/publish.json"
      member "/message/private/publish.json"
      member "/message/private/publish_template.json", format: :json
      member "/message/group/publish.json"
      member "/message/online/broadcast.json"
      member "/message/system/publish.json"
      member "/message/system/publish_template.json", format: :json
      member "/message/ultragroup/publish.json", format: :json

      member "/message/expansion/delete.json"
      member "/message/expansion/query.json"
      member "/message/expansion/set.json"
    end
  end
end
