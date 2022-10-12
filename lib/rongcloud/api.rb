module RongCloud
  module API
    def self.resources(name)
      require_relative "api/#{name}"

      class_eval <<-CODE, __FILE__, __LINE__ + 1
        def #{name}
          @#{name} ||= Struct.new(:client) do
            include ::RongCloud::API::#{name.to_s.capitalize}
          end.new(client)
        end
      CODE
    end

    resources :chatroom
    resources :conversation
    resources :group
    resources :jwt
    resources :message
    resources :push
    resources :sensitiveword
    resources :stat
    resources :ultragroup
    resources :user
  end
end
