class CreateConcertInfos < ActiveRecord::Migration
  def change
    create_table :concert_infos do |t|
      t.string :name
      t.string :content
      t.string :place
      t.string :price
      t.string :start_at
      t.string :finish_at
      t.string :sort01 # 0:국내 1:해외
      t.string :sort02 # 0:단독 1:페스티벌
      t.string :sort03 # 0:국내 1:해외
      t.string :sort04 # 0:단독 1:페스티벌
      t.string :main_lineup # 0:단독 1:페스티벌
      t.string :sub_lineup # 0:단독 1:페스티벌
      t.timestamps null: false
    end
  end
end
