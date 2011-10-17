Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'sAvnUSp87QtnZcZnZumhNA', 'NjIFdptDyaeDuIzBj5zGYwutFJRG2i0xj1mNJgDZU'
  provider :facebook, '171987749489824', '28b618659140e5941207288d53ec8472'
end
