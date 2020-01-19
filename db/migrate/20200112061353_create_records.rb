class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.datetime :entered_at         ,null:false
      t.datetime :exited_at
      t.references :user             ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
