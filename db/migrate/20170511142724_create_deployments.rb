class CreateDeployments < ActiveRecord::Migration[5.1]
  def change
    create_table :deployments do |t|
      t.string :name
      t.string :status
      t.integer :prefix

      t.timestamps
    end
  end
end
