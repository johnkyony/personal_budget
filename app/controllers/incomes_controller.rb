class IncomesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_income, only: [:show, :edit, :update, :destroy]

  # GET /incomes
  # GET /incomes.json
  def index
    # find user id to make sure that we see only the current users details
    user_id = User.find_by_id(current_user.id)
    #find all income where the user id matches the user id    
    @incomes = Income.all.where(:user_id => user_id)
    #find the income balance 
    @incomes_balance = @incomes.sum(:amount)
  end

  # GET /incomes/1
  # GET /incomes/1.json
  def show
  end

  # GET /incomes/new
  def new
    wallets = Wallet.all.where(:user_id => current_user.id)
    if wallets.empty?
      redirect_to new_wallet_path
      flash[:notice] = "add a wallet"
         
    else
      @income = Income.new
      @income.user_id = current_user.id if current_user
      date = params[:execution_date].blank? ? Date.today : params[:execution_date]
      @income.execution_date = date.strftime("%d.%m.%Y") 

    end 

  end

  # GET /incomes/1/edit
  def edit
  end

  # POST /incomes
  # POST /incomes.json
  def create
    @income = Income.new(income_params)
    @income.user_id = current_user.id if current_user


    respond_to do |format|
      if @income.save
        format.html { redirect_to incomes_path , notice: 'Income was successfully created.' }
        format.json { render :show, status: :created, location: @income }
      else
        format.html { render :new }
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incomes/1
  # PATCH/PUT /incomes/1.json
  def update
    respond_to do |format|
      if @income.update(income_params)
        format.html { redirect_to @income, notice: 'Income was successfully updated.' }
        format.json { render :show, status: :ok, location: @income }
      else
        format.html { render :edit }
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incomes/1
  # DELETE /incomes/1.json
  def destroy
    @income.destroy
    respond_to do |format|
      format.html { redirect_to incomes_url, notice: 'Income was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income
      @income = Income.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def income_params
      params.require(:income).permit(:sources, :amount, :tax, :execution_date, :wallet_id, :user_id)
    end
end
