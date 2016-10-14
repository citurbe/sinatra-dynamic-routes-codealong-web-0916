require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}!"
  end

  get '/multiply/:first_num/:second_num' do
    @product = params[:first_num].to_i * params[:second_num].to_i
    "The product is #{@product}"
  end


end
