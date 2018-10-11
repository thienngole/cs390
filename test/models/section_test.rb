require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  test "the truth" do
     assert true
  end

  test "section number must not be empty" do
    section = Section.new(number: '')
    assert section.invalid?
  end

  test "semester must not be empty" do
    section = Section.new(semester: '')
    assert section.invalid?
  end

  test "room_number must not be empty" do
    section = Section.new(room_number: '')
    assert section.invalid?
  end

  #test 'should not create section without valid course' do
  #  section = Section.new(#section)
  #  assert !section.valid?
  #  assert section.errors.invalid?(:course)
  #end


end
