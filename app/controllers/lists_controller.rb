class ListsController < ApplicationController
    def new
        @list = List.new
    end 
    def index
        @lists = List.all
    end 
    def show
        @list = List.find(params[:id])
    end 
    def create
        @list = List.new(params.require(:list).permit(:name))
        @list.save
        if @list.save
          redirect_to list_path(@list)
        else
          render :new
        end
    end 
end
