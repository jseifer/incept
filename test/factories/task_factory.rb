FactoryGirl.define do
  factory :completed_task, class: Task do 
    name "Rails Task"
    complete true
  end
  
  factory :non_completed_task, class: Task do 
    name "Rails Task"
    complete false
  end
  
end