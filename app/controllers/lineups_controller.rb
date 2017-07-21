class LineupsController < ApplicationController
    
    
    def create
        @lineup = Lineup.new
        @lineup.main_lineup = params[:input_main_line_up]
        #@lineup.sub_lineup = params[:]
        @lineup.concert_info_id = params[:concert_info_id]
        
        redirect_to "concert_infos/show/#{}"
    end
    
    def destroy
        @lineup = Lineup.find()
        @lineup.destroy
    
        redirect_to "concert_infos/show/#{}"
    end
    
    
    
end
