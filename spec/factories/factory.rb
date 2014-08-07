# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "home work"
    # association :company
    company
  end

  factory :company do
    name "start up"
  end

  factory :clock do
    activity "working on stuff"
    association :company
    # NOT POSSIBLe
    # association :task, :company => Proc.new{ company }

    # posibility 1
    task { build(:task, :company => company) }

    # posibility 2
    task_id { create(:task, :company => company).id }
  end
end
