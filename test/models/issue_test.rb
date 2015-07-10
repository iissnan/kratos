require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  def setup
    @issue = Issue.new title: 'Test issue', description: 'Something'
  end

  def teardown
    @issue = nil
  end

  test 'should be valid' do
    assert @issue.valid?
  end

  test 'title should be present' do
    @issue.title = '  '
    assert_not @issue.valid?
  end

end
