class CreateRecruitments < ActiveRecord::Migration[8.1]
  def change
    create_enum :category, [
      "clerical",
      "engineer",
      "sales",
      "design",
      "marketing",
      "finance",
      "hr",
      "customer_support",
      "manufacturing",
      "medical_care",
      ] 

    create_table :recruitments do |t|
      t.string :title
      t.integer :salary
      t.enum :category, enum_type: :category

      t.timestamps
    end
  end
end
