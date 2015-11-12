class WalletsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_wallet, only: [:show, :edit, :update, :destroy]

  # GET /wallets
  # GET /wallets.json
  def index
    user_id = User.find_by_id(current_user.id)
    @wallets = Wallet.all.where(:user_id => user_id)
    wallet_id = Wallet.pluck(:id)
    expense = Expense.all.where(:wallet_id => wallet_id)
    income = Income.all.where(:wallet_id => wallet_id)
    @wallet_balance = income.sum(:amount)- expense.sum(:amount)

  end

  # GET /wallets/1
  # GET /wallets/1.json
  def show
  end

  # GET /wallets/new
  def new
    @wallet = Wallet.new
  end

  # GET /wallets/1/edit
  def edit
  end

  # POST /wallets
  # POST /wallets.json
  def create
    @wallet = Wallet.new(wallet_params)

    respond_to do |format|
      if @wallet.save
        format.html { redirect_to wallets_path, notice: 'Wallet was successfully created.' }
        format.json { render :show, status: :created, location: @wallet }
      else
        format.html { render :new }
        format.json { render json: @wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wallets/1
  # PATCH/PUT /wallets/1.json
  def update
    respond_to do |format|
      if @wallet.update(wallet_params)
        format.html { redirect_to wallets_path, notice: 'Wallet was successfully updated.' }
        format.json { render :show, status: :ok, location: @wallet }
      else
        format.html { render :edit }
        format.json { render json: @wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wallets/1
  # DELETE /wallets/1.json
  def destroy
    @wallet.destroy
    respond_to do |format|
      format.html { redirect_to wallets_url, notice: 'Wallet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallet
      @wallet = Wallet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wallet_params
      params.require(:wallet).permit(:name, :amount, :user_id => current_user.id)
    end
end
