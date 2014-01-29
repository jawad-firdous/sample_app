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
    require 'RMagick'

    ilist = Magick::ImageList.new

  	image = params[:image]
  	png = Base64.decode64(image)  	
  	 File.open('sample-pic.png', 'wb') do|f|
  	   f.write(Base64.decode64(image))
	   end

      f = File.open('10.jpg')
      blob = f.read

      ilist.from_blob(blob)
      
     

      f = File.open('sample-pic.png')
      blob = f.read

      #blob.resize('0.5').self
      ilist.from_blob(blob)

      ilist.flatten_images.write "flatten_images.jpg"

  render json: "hello"
  end
end
