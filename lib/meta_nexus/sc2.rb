class MetaNexus::Sc2 < MetaNexus::Api
  def url
    "#{super}/sc2"
  end

  def self.client
    new
  end
end
