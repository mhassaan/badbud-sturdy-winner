class Product < ApplicationRecord
STRAIN_TYPE = ['Indica','Sativa','Herbal'].freeze
#has_one_attached :photo
has_many_attached :photos
has_many :cart_items
validates :photos, attached: true, content_type: { in: ['image/png', 'image/jpg', 'image/jpeg'], message: 'is not a valid content type' },size:{ less_than: 100.megabytes , message: 'is not given between size' }

end
