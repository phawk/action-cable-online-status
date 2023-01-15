class OnlineChannel < Turbo::StreamsChannel
  def subscribed
    current_user&.update!(status: "online", last_online_at: Time.current)
    super
  end

  def unsubscribed
    current_user&.update!(status: "offline")
    super
  end
end
