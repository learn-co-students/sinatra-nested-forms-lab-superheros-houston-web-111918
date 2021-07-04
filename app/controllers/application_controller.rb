require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :team
    end

    #get '/teams/new' do 


    post '/teams' do
        @team = params[:team]
        @hero_1 = params[:hero_1]
        @hero_2 = params[:hero_2]
        @hero_3 = params[:hero_3]
    
        erb :teams
    #     redirect '/'
     end



    


end
