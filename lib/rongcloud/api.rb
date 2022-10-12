module RongCloud
  module API
    module Resourceable
      def self.included(klass)
        klass.extend(ClassMethods)
      end

      module ClassMethods
        def resources(name)
          require_relative "api/#{name}"

          class_eval <<-CODE, __FILE__, __LINE__ + 1
            def #{name}
              @#{name} ||= Struct.new(:client) do
                include ::RongCloud::API::#{name.to_s.capitalize}
              end.new(client)
            end
          CODE
        end

        def member(url, options = {})
          meth = if options[:as]
            options[:as]
          else
            resources_name = name.split("::").last.downcase
            resources_name_in_url = "/#{resources_name}/"
            raise ArgumentError unless url.start_with?(resources_name_in_url)
            url.delete_prefix(resources_name_in_url)
              .delete_suffix(".json")
              .tr("/", "_")
              .downcase
          end

          format = options[:format] || :form
          define_method(meth) do |payload|
            client.post(url, format => payload)
          end
        end
      end
    end

    include Resourceable

    resources :chatroom
    resources :conversation
    resources :group
    resources :jwt
    resources :message
    resources :push
    resources :sensitiveword
    resources :stat
    resources :statusmessage
    resources :ultragroup
    resources :user
  end
end
