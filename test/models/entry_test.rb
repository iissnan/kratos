require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  def setup
    @entry = Entry.new url: 'http://test.local', title: 'Test entry'
  end

  def teardown
    @entry = nil
  end

  test 'should be valid' do
    assert @entry.valid?
  end

  test 'URL should be present' do
    @entry.url = ' '
    assert_not @entry.valid?
  end

  test 'URL should accept valid format' do
    formats = %w(http://test.local, https://test.local.com)
    formats.each do |format|
      @entry.url = format
      assert @entry.valid?, "#{format} should be valid"
    end
  end

  test 'URL should NOT accept invalid format' do
    formats = %w(123)
    formats.each do |format|
      @entry.url = format
      assert_not @entry.valid?, "#{format} should be invalid"
    end
  end

  test 'title should be present' do
    @entry.title = '  '
    assert_not @entry.valid?
  end

end
