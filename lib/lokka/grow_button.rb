module Lokka
  GROW_BUTTON_TYPE_RECTANGLE = 'grow_button_type_rectangle'
  GROW_BUTTON_TYPE_SQUARE    = 'grow_button_type_square'

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
    end 
  end

  module Helpers
    def grow_button
      if Option.grow_button_api_key
        case Option.grow_button_type
        when GROW_BUTTON_TYPE_RECTANGLE
          %Q(<script type="text/javascript" src="http://growbutton.com/javascripts/button.js?apikey=#{Option.grow_button_api_key}&shape=rectangle"></script>)
        when GROW_BUTTON_TYPE_SQUARE
          %Q(<script type="text/javascript" src="http://growbutton.com/javascripts/button.js?apikey=#{Option.grow_button_api_key}&shape=square"></script>)
        else
          raise "unknown GB_TYPE"
          %Q(<script type="text/javascript" src="http://growbutton.com/javascripts/button.js?apikey=#{api_key}&shape=rectangle"></script>)
        end
      end
    end
  end
end
