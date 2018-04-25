class WelcomeController < ApplicationController
  include ApplicationHelper
  def index
     @welcome = Welcome.all
  end
  def calendar
    
  end
  def contact
    
  end
end
