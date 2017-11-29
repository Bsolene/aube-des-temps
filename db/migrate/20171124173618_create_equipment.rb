class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.references :house, foreign_key: true
      t.boolean :climatisation, default: false
      t.boolean :wifi, default: false
      t.boolean :lave_linge, default: false
      t.boolean :sèche_linge, default: false
      t.boolean :étendoir, default: false
      t.boolean :lave_vaisselle, default: false
      t.boolean :four, default: false
      t.boolean :mixeur, default: false
      t.boolean :vitrocéramique, default: false
      t.boolean :cafetière_nespresso, default: false
      t.boolean :bouilloire, default: false
      t.boolean :grille_pain, default: false
      t.boolean :aspirateur, default: false
      t.boolean :presse_agrume, default: false
      t.boolean :linge, default: false
      t.boolean :drap, default: false
      t.boolean :réfrigerateur, default: false
      t.boolean :téléviseur, default: false
      t.boolean :fer_à_repasser, default: false

      t.timestamps
    end
  end
end
