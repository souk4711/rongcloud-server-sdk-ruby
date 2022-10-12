module RongCloud
  module API
    module Sensitiveword
      include Resourceable

      member "/sensitiveword/add.json"
      member "/sensitiveword/delete.json"
      member "/sensitiveword/list.json"
      member "/sensitiveword/batch/delete.json"
    end
  end
end
