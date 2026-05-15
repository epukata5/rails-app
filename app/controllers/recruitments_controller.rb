class RecruitmentsController < ApplicationController

  before_action :set_recruitment, only: %i[ show update destroy ]

  # GET /recruitments
  def index
    @recruitments = Recruitment.all

    render json: @recruitments
  end

  # GET /recruitments/1
  def show
    render json: @recruitment
  end

  # POST /recruitments
  def create
    @recruitment = Recruitment.new(recruitment_params)

    if @recruitment.save
      render json: @recruitment, status: :created, location: @recruitment
    else
      render json: @recruitment.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /recruitments/1
  def update
    if @recruitment.update(recruitment_params)
      render json: @recruitment
    else
      render json: @recruitment.errors, status: :unprocessable_content
    end
  end

  # DELETE /recruitments/1
  def destroy
    @recruitment.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recruitment
      @recruitment = Recruitment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def recruitment_params
      params.expect(recruitment: [ :title, :salary, :category ])
    end
end
