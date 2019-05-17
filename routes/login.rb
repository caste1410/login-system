class Login < Sinatra::Base
    get '/login/?' do
        if session[:user_id].nil?
            haml :login
        else
            redirect '/dashboard'
        end
    end
    post '/login/?' do
        sha = Digest::SHA256.hexdigest params[:password]
        user = User.first(name: params[:name], password: sha)
        if user.nil?
            redirect '/login'
        else
            session[:user_id] = user.id
            redirect '/dashboard'
        end
    end
end