class User < ApplicationRecord
    def self.from_omniauth(auth)
        hash = auth.to_h

        credentials = auth[:credentials]
        extra = auth[:extra]
        raw_info = extra[:raw_info]

        user_attributes = {
            provider: auth[:provider],
            uid: auth[:uid],
            name: raw_info[:name],
            oauth_token: credentials[:token],
            oauth_expires_at: credentials[:expires_at]
        }
        User.create(user_attributes)
    end
end
