class Login < Sinatra::Base
    get '/dashboard/?' do
        return "Hola"
    end
end