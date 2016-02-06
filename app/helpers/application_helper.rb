module ApplicationHelper

  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    if user.image
      user.image
    else
    'default-user.png'
    end
  end

end
