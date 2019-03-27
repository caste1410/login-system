require 'sinatra'
require 'sequel'  

class Login < Sinatra::Base
    set :environment, ENV['RACK_ENV']
    configure do
        DB = Sequel.connect("mysql2://root:caste1410@localhost/login_system")
        Dir[File.join(File.dirname(__FILE__),'models','*.rb')].each { |model| require model }
        Dir[File.join(File.dirname(__FILE__),'routes','*.rb')].each { |lib| load lib }
    end
    enable :sessions
    before do
        if !['home', 'login'].include?(request.path_info.split('/')[1]) and session[:user_id].nil?
            redirect '/login'
        end
    end
end