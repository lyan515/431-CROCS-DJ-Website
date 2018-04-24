class WelcomeController < ApplicationController
  include ApplicationHelper
  def index
     @welcome = Welcome.find(4)
  end
  def calendar
    
  end
  def contact
    
  end
end
