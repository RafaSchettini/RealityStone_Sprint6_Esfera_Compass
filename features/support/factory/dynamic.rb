require 'faker'

module Factory
    class Dynamic
    
        Faker::Config.locale = 'pt-BR'

        def self.locale_data_info
            {
                cep: Faker::Address.postcode
            }
        end

    end
end