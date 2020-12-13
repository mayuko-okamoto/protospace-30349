class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text,            presence: true
      t.references :user,       foreign_key: true       
      t.references :prototype,  foreign_key: true       
      t.timestamps
    end
  end
end
