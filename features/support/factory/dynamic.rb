require 'faker'

module Factory
    class Dynamic
    
        Faker::Config.locale = 'pt-BR'

        def self.locale_data_info
            {
                cep: Faker::Address.postcode
            }
        end

        def self.name_data_info
            {
                name: Faker::Name.name_with_middle
            }
        end

        def self.birthday_data_info
            {
                birthday: Faker::Date.between(from: '1990-01-01', to: '2000-01-01')
            }
        end

        def self.phone_number_data_info
            {
                phone_number: Faker::PhoneNumber.cell_phone
            }
        end

        def self.email_data_info
            {
                email: Faker::Internet.email
            }
        end

    end
end