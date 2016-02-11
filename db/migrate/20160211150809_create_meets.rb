class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.text :content
      t.string :token
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
