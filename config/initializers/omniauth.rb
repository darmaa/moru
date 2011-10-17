Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'sAvnUSp87QtnZcZnZumhNA', 'NjIFdptDyaeDuIzBj5zGYwutFJRG2i0xj1mNJgDZU'
  provider :facebook, '295439547134784', '470f84f20406bcab3abf414e0f5150e0'
end
