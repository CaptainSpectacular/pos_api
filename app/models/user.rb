class User < ApplicationRecord
  after_create :generate_keys

  def generate_keys
    update(api_id: random_hex(:api_id), api_key: random_hex(:api_key))
  end

  private

    def random_hex(id_or_key)
      loop do
        token = SecureRandom.hex(20)
        break token unless User.exists?(id_or_key => token)
      end
    end
end
