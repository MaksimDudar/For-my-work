class CreatePls < ActiveRecord::Migration[7.0]
  def change
    create_table :pls do |t|
      t.string :name

      t.timestamps
    end

    pl.create :name => 'Foreign'
    pl.create :name => 'Cardi'

  end
end
