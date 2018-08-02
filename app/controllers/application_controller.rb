class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
  
  post "/results" do
    bn = params["price"] + params["style"]
    brands = {"1t"=>"Forever21","1c"=>"old_navy","1p"=>"HM","2t"=>"Zara","2c"=>"Nike_Adidas","2t"=>"J_Crew","3t"=>"Urban_outfitters","3c"=>"lulu","3p"=>"Ralph_Lauren"}
    if bn == "1t"
      erb :forever21
    elsif bn == "1c"
      erb :oldnavy
    elsif bn == "1p"
      erb :hm
    elsif bn == "2t"
      erb :zara
    elsif bn == "2c"
      erb :nikeadidas
    elsif bn == "2p"
      erb :jcrew
    elsif bn == "3t"
      erb :urban
    elsif bn =="3c"
      erb :lulu
    elsif bn == "3p"
      erb :ralph
    else 
      "Sorry We Could Not Find A Brand For You"
    end
  end
end
