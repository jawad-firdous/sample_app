class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def upload
  	image = params[:image]
  	# png = Base64.decode64(data_url['data:image/png;base64,'.length .. -1])
  	png = Base64.decode64(image)
  	
  	File.open('shipping_label.png', 'wb') do|f|
  	f.write(Base64.decode64(image))
	end
	
	# File.open('test.png', 'wb') { |f| f.write(png) }
  	render json: "hello"
  end
end
