class CreateKsiazkas < ActiveRecord::Migration[5.0]
  def change
    create_table :ksiazkas do |t|
      t.string :tytul
      t.string :autor
      t.text :ilosc

      t.timestamps
    end
  end
end
