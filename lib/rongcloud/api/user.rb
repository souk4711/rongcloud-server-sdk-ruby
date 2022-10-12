module RongCloud
  module API
    module User
      def get_token(payload)
        client.post("/user/getToken.json", form: payload)
      end
    end
  end
end
