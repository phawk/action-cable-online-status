class User < ApplicationRecord
  def online?
    status == "online"
  end

  def offline?
    !online?
  end
end
