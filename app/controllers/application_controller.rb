require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :'/team'
    end

    post '/teams' do
        
        @teamName = params[:TeamName]
        @teamMotto = params[:TeamMotto]
        @hero1name = params[:team][:hero][0][:name]
        @hero1power = params[:team][:hero][0][:power]
        @hero1bio = params[:team][:hero][0][:bio]
        @hero2name = params[:team][:hero][1][:name]
        @hero2power = params[:team][:hero][1][:power]
        @hero2bio = params[:team][:hero][1][:bio]
        @hero3name = params[:team][:hero][2][:name]
        @hero3power = params[:team][:hero][2][:power]
        @hero3bio = params[:team][:hero][2][:bio]
        erb :'/teams'
    end

   

end

