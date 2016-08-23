require 'test_helper'

describe Biny::UseCases::CategoryAdder do
  before do
    @category_repo = Biny::Repository.for(:category)
  end

  def create_interactor(name)
    Biny::UseCases::CategoryAdder.new name
  end

  it "persists the new category" do
    interactor = create_interactor "String"
    interactor.execute

    @category_repo.count.must_equal 1
  end

  it "throws error if category already exists" do
    interactor = create_interactor "String"
    interactor.execute
    -> { interactor.execute }.must_raise DuplicatedRecordError
  end

  it "throws error if name is empty" do
    interactor = create_interactor ""
    interactor.execute
    -> { interactor.execute }.must_raise InvalidArgumentError
  end
end
