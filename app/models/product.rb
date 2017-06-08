class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :brand
  has_one :deal
  has_many :trigger_deals, :class_name => 'Deal', :foreign_key => 'trigger_product_id'

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
