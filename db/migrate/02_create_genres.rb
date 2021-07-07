class CreateGenres < ActiveRecord::Migration[4.2]
    create_table :genres do |g|
        g.string :name
    end
end
