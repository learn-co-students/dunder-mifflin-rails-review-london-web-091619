class Dog < ApplicationRecord
    has_many :employees

   def self.sort_dogs
    all.order('employee_count DESC')
   end


   def self.set_employee_counts
    all.each { |dog|  dog.update(employee_count: dog.employees.length) }
   end
end
