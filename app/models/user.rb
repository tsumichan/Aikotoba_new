class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # # ユーザー名で検索
  # def self.find_first_by_auth_conditions(warden_conditions)
  #   conditions = warden_conditions.dup
  #   if user_name = conditions.delete(:user_name)
  #     where(conditions).where(user_name: user_name).first
  #   else
  #     where(conditions).first
  #   end
  # end
  #
  # # 登録時に email を不要にする
  # def email_required?
  #   false
  # end
  # def email_changed?
  #   false
  # end
end
