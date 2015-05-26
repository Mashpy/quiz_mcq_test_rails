class QuiztestsController < ApplicationController
  before_action :set_quiztest, only: [:show, :edit, :update, :destroy]

  # GET /quiztests
  # GET /quiztests.json
  def index
    @quiztests = Quiztest.all
  end

  # GET /quiztests/1
  # GET /quiztests/1.json
  def show
  end

  # GET /quiztests/new
  def new
    @quiztest = Quiztest.new
  end

  # GET /quiztests/1/edit
  def edit
  end

  # POST /quiztests
  # POST /quiztests.json
  def create
    @quiztest = Quiztest.new(quiztest_params)

    respond_to do |format|
      if @quiztest.save
        format.html { redirect_to @quiztest, notice: 'Quiztest was successfully created.' }
        format.json { render :show, status: :created, location: @quiztest }
      else
        format.html { render :new }
        format.json { render json: @quiztest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quiztests/1
  # PATCH/PUT /quiztests/1.json
  def update
    respond_to do |format|
      if @quiztest.update(quiztest_params)
        format.html { redirect_to @quiztest, notice: 'Quiztest was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiztest }
      else
        format.html { render :edit }
        format.json { render json: @quiztest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiztests/1
  # DELETE /quiztests/1.json
  def destroy
    @quiztest.destroy
    respond_to do |format|
      format.html { redirect_to quiztests_url, notice: 'Quiztest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiztest
      @quiztest = Quiztest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiztest_params
      params.require(:quiztest).permit(:question, :ansA, :ansB, :ansC, :ansD, :correct)
    end
end
