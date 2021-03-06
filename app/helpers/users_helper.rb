module UsersHelper

  def gravatar_for(user, size = nil)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    if size.nil?
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
    else
      image_tag(gravatar_url, alt: user.name, class: "gravatar", size: size)
    end
  end
end
