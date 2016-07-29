class PagesController < ApplicationController
	http_basic_authenticate_with :name => "huihui", :password => "test1234"
  def help

  end
  def dictionary

  end
end
