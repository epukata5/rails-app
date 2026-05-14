require "test_helper"

class RecruitmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recruitment = recruitments(:one)
  end

  test "should get index" do
    get recruitments_url, as: :json
    assert_response :success
  end

  test "should create recruitment" do
    assert_difference("Recruitment.count") do
      post recruitments_url, params: { recruitment: { category: @recruitment.category, salary: @recruitment.salary, title: @recruitment.title } }, as: :json
    end

    assert_response :created
  end

  test "should show recruitment" do
    get recruitment_url(@recruitment), as: :json
    assert_response :success
  end

  test "should update recruitment" do
    patch recruitment_url(@recruitment), params: { recruitment: { category: @recruitment.category, salary: @recruitment.salary, title: @recruitment.title } }, as: :json
    assert_response :success
  end

  test "should destroy recruitment" do
    assert_difference("Recruitment.count", -1) do
      delete recruitment_url(@recruitment), as: :json
    end

    assert_response :no_content
  end
end
