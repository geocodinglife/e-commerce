class WelcomeController < ApplicationController
  layout 'landing', only: %i[index]
  def index; end
end
