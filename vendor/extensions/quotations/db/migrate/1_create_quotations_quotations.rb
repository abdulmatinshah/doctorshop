class CreateQuotationsQuotations < ActiveRecord::Migration

  def up
    create_table :refinery_quotations do |t|
      t.string :title
      t.string :name
      t.text :quote
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-quotations"})
    end

    drop_table :refinery_quotations

  end

end
