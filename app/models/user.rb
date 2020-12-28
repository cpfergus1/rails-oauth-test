class User < ApplicationRecord
  def self.create_with_omniauth(auth)
    require "pry"; binding.pry
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end
end
