module RongCloud
  module API
    module Push
      include Resourceable

      member "/push.json", as: :call, format: :json
      member "/push/custom.json", format: :json
      member "/push/user.json", format: :json
    end
  end
end
