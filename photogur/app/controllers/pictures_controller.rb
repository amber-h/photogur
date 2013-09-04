class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
  end

  def create
    render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end

end


# Below is the code that was used to get the picture data with the controller without making use of the database


# class PicturesController < ApplicationController

# 	def index
# 		  @pictures = [
#       {
#         :title  => "The old church on the coast of White sea",
#         :artist => "Sergey Ershov",
#         :url    => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
#       },
#       {
#         :title  => "Sea Power",
#         :artist => "Stephen Scullion",
#         :url    => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
#       },
#       {
#         :title  => "Into the Poppies",
#         :artist => "John Wilhelm",
#         :url    => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
#       }
#     ]
# 	end

#     def show
#     @pictures = [
#       {
#         :title  => "The old church on the coast of White sea",
#         :artist => "Sergey Ershov",
#         :url    => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
#       },
#       {
#         :title  => "Sea Power",
#         :artist => "Stephen Scullion",
#         :url    => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
#       },
#       {
#         :title  => "Into the Poppies",
#         :artist => "John Wilhelm",
#         :url    => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
#       }
#     ]
#     @picture = @pictures[params[:id].to_i]
#   	end

#   	def new
#   	end

#   	def create
#   		render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
#   	end

# end