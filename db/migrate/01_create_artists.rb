class CreateArtists < ActiveRecord::Migration[4.2]
    def change
        create_tables :artists do |t|
            t.string :name
        end
    end
end
