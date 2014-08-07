require 'spec_helper'

describe 'Relations' do
  it 'is possible to build records' do
    company = create(:company)
    task = create(:task, company: company)
    clock = create(:clock, task: task, company: company)

    expect(clock).to be
  end

  it 'is possible to do it in one method call' do
    clock = create(:clock)

    expect(clock).to be
  end
end