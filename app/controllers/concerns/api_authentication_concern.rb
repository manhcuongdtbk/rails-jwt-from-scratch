module ApiAuthenticationConcern
  extend ActiveSupport::Concern

  included do
    attr_reader :current_user

    before_action :authenticate_token!
  end

  private

  def authenticate_token!
    payload = JsonWebToken.decode(auth_token)
    @current_user = User.find(payload['sub'])
    # You can rescue other errors raised by JWT
    # https://github.com/jwt/ruby-jwt/blob/master/lib/jwt/error.rb
  rescue JWT::ExpiredSignature
    render json: { errors: ['Auth token has expired'] }, status: :unauthorized
  rescue JWT::DecodeError
    render json: { errors: ['Invalid auth token'] }, status: :unauthorized
  end

  def auth_token
    @auth_token ||= request.headers.fetch('Authorization', '').split.last
  end
end
