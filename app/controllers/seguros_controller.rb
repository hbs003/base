class SeguroController < ApplicationController
  before_action :set_seguro , only: [:show, :edit, :update, :destroy]
  def index
    @seguros = current_user.seguros
  end

  def new
    @carteira = carteira.current_user
    @seguro = Seguro.new
  end

  def create
    @seguro = Seguro.new(seguro_params)
    @seguro.carteira = carteira.current_user
    if @seguro.save
      flash[:success] = "Seu seguro foi criado"
      redirect_to seguro_path(@seguro)
    else
      flash.now[:danger] = "Ocorreu um erro, não foi possível criar seu seguro."
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @seguro.update(seguro_params)
      redirect_to seguro_path(@seguro)
    else
      render :edit
    end
  end

  def destroy
    @seguro.destroy
    redirect_to root_path
  end

  private
  def set_seguro
    @seguro = Seguro.find(params[:id])
  end

  def seguro_params
    params.require(:seguro).permit(:tipo, :valor, :data_final, :periodicidade, :foto)
  end
end
