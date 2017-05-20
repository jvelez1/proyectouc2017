class AuditsController < InheritedResources::Base

  private

    def audit_params
      params.require(:audit).permit()
    end
end

