module RongCloud
  class Exceptions
    # Generic error
    Error = Class.new(StandardError)

    # Generic HTTP error
    HttpError = Class.new(Error)

    # Generic API error, non 200 response code
    APIError = Class.new(Error)
  end
end
