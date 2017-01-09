class Url < ActiveRecord::Base
validates :long_url, presence: true
validates :short_url, presence: true
validates :long_url, format: { with: /\A(?:(ftp|http|https):\/\/)?(?:[\w-]+\.)+[a-z]{3,6}\z/}

  def self.retrieve_short_url(proper_long_url)
  	@url = Url.find_by_long_url(proper_long_url)
    if @url.nil?
	  return nil
    else
      return @url.short_url
    end
  end

end
