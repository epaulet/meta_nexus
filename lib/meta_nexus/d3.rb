class MetaNexus::D3 < MetaNexus::Api
  def url
    "#{super}/d3"
  end

  def self.client
    new
  end
end
