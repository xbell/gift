class HomeController < ApplicationController

  def index
    @given = Give.all
    @received = Receive.all
  end

  def given
    @given = Give.all
  end

  def create_given
    @gift_given = Give.new
    @gift_given.gift = params[:gift]
    @gift_given.to = params[:to]
    @gift_given.occasion = params[:occasion]
    @gift_given.year = params[:year]
    if @gift_given.save
      redirect_to "/given"
    else
      @given = Give.all
      render :given
    end
  end

  def create_received
    @gift_received = Receive.new
    @gift_received.gift = params[:gift]
    @gift_received.from = params[:from]
    @gift_received.occasion = params[:occasion]
    @gift_received.year = params[:year]
    if @gift_received.save
      redirect_to "/received"
    else
      @received = Receive.all
      render :received
    end
  end

  def received
    @received = Receive.all
  end

end
