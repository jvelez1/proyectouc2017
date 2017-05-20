class OperatingSystemsController < InheritedResources::Base

  private

    def operating_system_params
      params.require(:operating_system).permit()
    end
end

