class CreateLineups < ActiveRecord::Migration
  def change
    create_table :lineups do |t|
      #t.integer :concert_id
      t.belongs_to :concert_info
      t.string :main_lineup
      t.string :sub_lineup

      t.timestamps null: false
    end
  end
end
