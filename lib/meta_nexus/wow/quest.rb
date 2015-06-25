class MetaNexus::Wow::Quest < MetaNexus::Wow

  # Find Quest info in Battle.net WoW Api
  # Required arguments:
  # id      - quest id
  #
  # Example:
  #   quest = MetaNexus::Wow::Quest.new('eu', 'en_US', 'api_key')
  #   quest.find('2v2')
  # Response in Hash:
  #   {"id"=>13146, "title"=>"Generosity Abounds", "reqLevel"=>77, "suggestedPartyMembers"=>0, "category"=>"Icecrown", "level"=>80}
  #


  def find(id)
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/quest/#{id}?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end
end