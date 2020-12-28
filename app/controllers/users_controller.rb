class UsersController < TweetsController
    before_action :set_icons

    def show
        @user = User.find(params[:id])
    end

    def follow
        @follow = Follow.find_by(follow_params)
        @notification = Notification.find_by(notification_params)
        @follow.blank? ? Follow.new(follow_params).save : @follow.delete
        @follow.blank? ? Notification.new(notification_params).save : @notification.delete
    end

    private
    def follow_params
        {following_id: current_user.id, followed_by_id: params[:id]}
    end

    def notification_params
        {notifying_id: params[:id], notified_by_id: current_user.id}
    end
end
