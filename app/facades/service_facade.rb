class ServiceFacade

  def self.get_repos(user_token)
    repos = GitService.parse_info(user_token)
    repos.map do |repo|
      Repository.new(repo)
    end
  end

end
