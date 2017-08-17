class Visit
  attr_accessor :path, :ip

  def initialize(path, ip)
    @path, @ip = path, ip
  end
end