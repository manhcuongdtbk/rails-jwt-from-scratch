class JsonWebToken < ApplicationRecord
  class << self
    def encode(payload)
      # TODO: handle expiration token
      expiration = 30.minutes.from_now.to_i
      JWT.encode(payload.merge(exp: expiration), Rails.application.credentials.secret_key_base)
    end

    def decode(token)
      # Only get the payload from the decoded array
      JWT.decode(token, Rails.application.credentials.secret_key_base).first
    end
  end
end
