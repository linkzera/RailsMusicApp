class HomeController < ApplicationController
  before_action :set_artists_summary_service
  def index
    @artists = @artists_summary.general.first
  end

  

  private
  def set_artists_summary_service
      @artists_summary = ArtistsSummary.new
  end

end
