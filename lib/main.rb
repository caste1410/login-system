class Login < Sinatra::Base
    get '/home/?' do
        haml :home
    end
end