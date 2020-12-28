class GitService
  def self.conn(user_token)
    Faraday.get("https://api.github.com/user/repos", {}, {"Authorization": "token #{user_token}" })
  end

  def self.parse_info(user_token)
    JSON.parse(conn(user_token).body, symbolize_names: true)
  end
end
