class HomeController < ApplicationController

  def index
    @given = Give.all
    @received = Receive.all
  end

  def given
    @given = Give.all
  end

  def received
    @received = Receive.all
  end

end
