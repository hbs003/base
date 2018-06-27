class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @seguro = Seguro.new

  end

  def options_for_type
    ["Vida", "Saúde", "Automóveis", "Saúde", "Transporte", "Facultativo", "Outros"]
  end

  private
  def seguro_params
    params.require(:seguro).permit(:tipo, :valor, :data_final, :periodicidade, :foto)
  end

end
