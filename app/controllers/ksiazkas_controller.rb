class KsiazkasController < ApplicationController
  before_action :set_ksiazka, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorize, only: [:index, :show]

  def index
    @ksiazkas = Ksiazka.all
  end

  def show
  end

  def new
    @ksiazka = Ksiazka.new
  end

 
  def edit
  end


  def create
    @ksiazka = Ksiazka.new(ksiazka_params)

    if @ksiazka.save
      redirect_to @ksiazka, notice: 'Ksiazka was successfully created.'
    else
      render :new
    end
  end

 
  def update
    if @ksiazka.update(ksiazka_params)
      redirect_to @ksiazka, notice: 'Ksiazka was successfully updated.' 
    else
      render :edit 
    end
  end

  
  def destroy
    @ksiazka.destroy
    redirect_to ksiazkas_url, notice: 'Ksiazka was successfully destroyed.' 
  end

  private
   
    def set_ksiazka
      @ksiazka = Ksiazka.find(params[:id])
    end

    def ksiazka_params
      params.require(:ksiazka).permit(:tytul, :autor, :ilosc)
    end

end

