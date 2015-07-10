class EntriesController < ApplicationController
  def index
    @entries = Entry.paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new entry_params
    if @entry.save
      flash[:success] = 'Entry has been saved'
      redirect_to entries_path
    else
      render :new
    end
  end

  private
    def entry_params
      params.require(:entry).permit(:url, :title, :description)
    end
end
