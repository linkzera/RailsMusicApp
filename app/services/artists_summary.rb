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
  
    private
  
    def set_artists_summary_service
        @artists_summary = ArtistsSummary.new
    end
end