class CreateJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :joins do |t|
       t.text :roomjoin, default: [].to_yaml
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
