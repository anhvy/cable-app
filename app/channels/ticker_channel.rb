class TickerChannel < ApplicationCable::Channel
  def subscribed
  	id = params[:sid]
  	pair = params[:pair]
    stream_from "ticker"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
