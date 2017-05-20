class SwDevelopmentsController < InheritedResources::Base

  private

    def sw_development_params
      params.require(:sw_development).permit()
    end
end

