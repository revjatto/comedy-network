class Giggle < ApplicationRecord
    has_one_attached :image

    def thumbnail
        return self.image.variant(resize: '300X300!')
    end
end
