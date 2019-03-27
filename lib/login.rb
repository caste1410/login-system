class Login < Sinatra::Base
    get '/login/?' do
        haml :login
    end
    post '/login/?' do
        md5sum = Digest::Md5.hexdigest params[:password]
        user = User.first(name: params[:name], password: md5sum)
        if user.nil?
            haml :error, locals: {error: 'Invalid login credentials'}
        else
            session[:user_id] = user.id
            redirect '/dashboard'
        end
    end
end