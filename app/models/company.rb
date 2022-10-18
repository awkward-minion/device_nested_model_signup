class Company < ApplicationRecord
    has_many :company_employees
    has_many :employees, :through => :company_employees
end
