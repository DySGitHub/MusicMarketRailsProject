    module UsersHelper
<<<<<<< HEAD
          def gravatar_for(user, options = { size: 50 })
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        size = options[:size]
        gravatar_url = "https://en.gravatar.com/userimage/56200382/c9333ae2e446cf410267f01fd8446765.png"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
     end 

    end
=======

      # Returns the Gravatar (http://gravatar.com/) for the given user.
    
  def gravatar_for(user, options = { size: 50 })
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        size = options[:size]
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
     end 
        
    end
>>>>>>> 513d3798b282aa688b69d699e9b0a49ca679abf0
