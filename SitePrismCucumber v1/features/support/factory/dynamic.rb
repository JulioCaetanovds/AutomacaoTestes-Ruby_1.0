require 'faker'

module Factory
    class Dynamic
        def self.message_for_contact
            {
                email: Faker::Internet.email,
                message: Faker::Lorem.paragraphs
            }
        end
    end
end