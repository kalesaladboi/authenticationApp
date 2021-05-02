module CurrentUSerConcern
    extend ActiveSupport::Concern

    included do
        before_action :set_current_user
    end

    def set_current_user
        if sessions[:user_id]
            @current_user = User.find(sessions[:user_id])
    end
end