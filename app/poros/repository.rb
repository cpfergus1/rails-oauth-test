class Repository

  attr_reader :name, :private, :description

  def initialize(data)
    @name = data[:name]
    @private = data[:private]
    @description = data[:description]
  end


end
