# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  img_url     :string
#  price       :decimal(, )
#  qty         :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
end