class ArtistsSummary

    include HTTParty
    base_uri 'https://moat.ai/api/task'
    format :json
    def initialize()
      @options = {   "headers": {
        "Basic" => "ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ=="
      } }
     
    end
 
    def general
      self.class.get("/", @options)
    end

    def hashToObject
      hashArray = self.class.get("/", @options)
      lista = []
      lista.push(OpenStruct.new({"name" => "Artist"}))
      hashArray.each do |hash|
        lista.push(OpenStruct.new(hash[0]))
      end

      return lista
    end
  
    private
  
    def set_artists_summary_service
        @artists_summary = ArtistsSummary.new
    end
end