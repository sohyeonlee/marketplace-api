class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches(req)
    @default || req.headers['Accept'].include?("applications/vnd.marketplace.v#{@version}")
  end
end
