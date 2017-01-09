class UrlsController < ApplicationController

  def index
  	@urls = Url.all
  end

  def create
    @url = Url.new(url_params)
    @url.short_url = SecureRandom.base64[0..8]
    if @url.save
      redirect_to urls_path
    else
      render :new
      @errors = "Invalid URL"
    end
  end

  def new
	@url = Url.new
  end

private

def url_params
  params.require(:url).permit(:long_url) 
end


end
