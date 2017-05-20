class DbEngiesController < InheritedResources::Base

  private

    def db_engie_params
      params.require(:db_engie).permit()
    end
end

