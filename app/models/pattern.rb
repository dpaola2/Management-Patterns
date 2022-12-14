# == Schema Information
#
# Table name: patterns
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pattern < ApplicationRecord
  validates :body, presence: true
  
  has_rich_text :body
end
