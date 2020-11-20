require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def setup
    @task = Task.new(title: 'eat sushi', state: false)
  end

  test 'should be valid' do
    assert @task.valid?
  end

  test 'title should be present' do
    @task.title = '  '
    assert_not @task.valid?
  end

  test 'initial state should be false' do
    @task.save
    assert_not @task.state
  end
end
