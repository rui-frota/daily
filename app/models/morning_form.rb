class MorningForm < ApplicationRecord
  belongs_to :user

  before_validation :set_user, on: :create

  private
  def set_user
    self.user ||= Current.user if defined?(Current) && Current.user
  end
end
