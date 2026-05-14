class Recruitment < ApplicationRecord
  enum :category, {
    clerical: "clerical",
    engineer: "engineer",
    sales: "sales",
    design: "design",
    marketing: "marketing",
    finance: "finance",
    hr: "hr",
    customer_support: "customer_support",
    manufacturing: "manufacturing",
    medical_care: "medical_care"
  }
end
