class FacebookController < ApplicationController
    before_filter :authenticate_user!
    
    def index
        unless current_user.facebook_oauth_setting
        @oauth = Koala::Facebook::OAuth.new("1521732674810345","4dc8c0aaa56a5c199d44608ea0ef4453","http://mypersonalbudget.herokuapp.com/")
        session["oauth_obj"] = @oauth
        redirect_to @oauth.url_for_oauth_code
    else
        redirect_to root_path
    end
    
    def callback 
        unless  current_user.facebook_oauth_setting
        @oauth = session["oauth_obj"]
        FacebookOauthSetting.create({:access_token => @oauth.get_access_token(params[:code]),:user_id => current_user.id})
        redirect_to "/facebook_profile"
        
    else
        redirect_to root_path
            
        end
        
    end
    
    def facebook_profile
        if current_user.facebook_oauth_setting
            @graph = Koala::Facebook::API.new(current_user.facebook_oauth_setting)
            @profile = @graph.get_object("me")
            @picture = @graph.get_picture("me")
            @feed = @graph.get_connections("me" , "feed")
            @friends  = @graph.get_connections("me" , "friends")
        else
            redirect_to "/"
        end
        
    end
    
end
