class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    #ストロングパラメータを設定してサインアップするときにプロフィールのカラムを送信
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [profile_attributes: [:name, :account, :gender, :age, :height, :weight] ])
    end
end
