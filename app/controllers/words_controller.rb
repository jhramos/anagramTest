class WordsController < ApplicationController

	def index
    @words = Word.all
	end
	
	def new
    @word = Word.new
  end
  
  def create
    @word = Word.new(word_params)
    if @word.save
      redirect_to '/words'
    else
      render 'new'
    end

  end

  def readme
    @words = Word.all

  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word
      @word = Word.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_params
      params.require(:word).permit(:palavra1, :palavra2)
    end
end
