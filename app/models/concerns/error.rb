module Error
    module ErrorHandling
      extend ActiveSupport::Concern
  
        rescue ActiveRecord::RecordNotUnique
            flash[:error] = "should be in correct format"
        end
    end