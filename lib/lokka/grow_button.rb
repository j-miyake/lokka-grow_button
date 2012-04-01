module Lokka
  module GrowButton
    def self.registered(app)
      app.get '/admin/plugins/grow_button' do
        haml:"plugin/lokka-grow_button/views/index", :layout => :"admin/layout"
      end 

      app.put '/admin/plugins/grow_button' do
        params.each_pair do |key, value|
          eval("Option.#{key}='#{value}'") if key != '_method'
        end
        flash[:notice] = t.grow_button_updated
        redirect '/admin/plugins/grow_button'
      end 

      app.before do
        content_for :footer do
          %Q(<script type="text/javascript" src="http://growbutton.com/javascripts/button.js?apikey=#{Option.grow_button_api_key}&insert=false"></script>)
        end
      end
    end 
  end

  module Helpers
    def grow_button(entry = nil)
      if Option.grow_button_api_key
        if entry
          url = "#{request.env['rack.url_scheme']}://#{request.env['HTTP_HOST']}#{request.env['SCRIPT_NAME']}#{entry.link}"
          %Q(<span itemscope="" itemref="#{Option.grow_button_type}" itemtype="http://growbutton.com/ns#button">
               <span itemprop="url">#{url}</span>
               <span itemprop="title">#{entry.title}</span>
             </span>)
        else
          %Q(<script type="text/javascript" src="http://growbutton.com/javascripts/button.js?apikey=#{Option.grow_button_api_key}&shape=#{Option.grow_button_type}"></script>)
        end
      end
    end
  end
end
