# == Schema Information
#
# Table name: listings
#
#  id           :integer          not null, primary key
#  city         :string
#  neighborhood :string
#  price        :float
#  bedrooms     :float
#  bathrooms    :float
#  start_date   :date
#  end_date     :date
#  description  :text
#  shared       :boolean
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Listing < ApplicationRecord

  validates :city,
            :neighborhood,
            :price,
            :bedrooms,
            :bathrooms,
            :shared,
            :user_id, presence: true


  belongs_to :user

  has_many :photos, :dependent => :destroy
end
