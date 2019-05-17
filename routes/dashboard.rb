class Login < Sinatra::Base
    get '/dashboard/?' do
        haml :dashboard
    end
end