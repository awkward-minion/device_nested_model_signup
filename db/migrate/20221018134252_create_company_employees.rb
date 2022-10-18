class CreateCompanyEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :company_employees do |t|
      t.belongs_to :employee, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.string :enrollment_id
      t.string :designation
      
      t.timestamps
    end
  end
end
