class MainController < ApplicationController
  def index
  flash[:alert] = 'invalid username or password'
  flash[:any] = 'checking'
  end
end
