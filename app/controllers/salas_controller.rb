require 'rack/multipart'

class SalasController < ApplicationController
    def index
    end
    def new
        if session[:name]
            @user = session[:name]
        end
    end

    def upload
        uploaded_io = params[:video]
        File.open(Rails.root.join('public', 'videos', uploaded_io.original_filename), 'wb') do |file|
          file.write(uploaded_io.read)
        end
        
        @sala = Sala.new(url: params[:video].original_filename, title: params[:title], description: params[:description], nome: session[:name])
        
        respond_to do |format|
          if @sala.save
            format.html { redirect_to '/pages/salas', notice: "Video criado." }
            format.json { render :show, status: :created, location: @sala }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @sala.errors, status: :unprocessable_entity }
          end
        end
      end

end