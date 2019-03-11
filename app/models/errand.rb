class Errand < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
