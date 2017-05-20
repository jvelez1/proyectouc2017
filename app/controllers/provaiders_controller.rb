class ProvaidersController < InheritedResources::Base

  private

    def provaider_params
      params.require(:provaider).permit()
    end
end

