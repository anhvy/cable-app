class HomesController < ApplicationController
  def index
  end

  def receive
  	ActionCable.server.broadcast 'ticker', {time: Time.current.to_i, message: params[:message]}
  end
end
