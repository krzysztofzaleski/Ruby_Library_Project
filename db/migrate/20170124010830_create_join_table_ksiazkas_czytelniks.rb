class CreateJoinTableKsiazkasCzytelniks < ActiveRecord::Migration[5.0]
  def change
    create_join_table :ksiazkas, :czytelniks do |t|
      # t.index [:ksiazka_id, :czytelnik_id]
      # t.index [:czytelnik_id, :ksiazka_id]
    end
  end
end
