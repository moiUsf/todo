class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy, :complete]
  before_action :authenticate_user!

  def index
    @items =  current_user.items.paginate(:page => params[:page], :per_page => 1)
                    
  end

  def new
    @item = current_user.items.build
  end

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      redirect_to root_path
    else
      render 'new'  #wenn es nicht klappt, die view new wird nochmal mit den eingegebenen Daten geladen, noch mal versuchen
    end
  end

  def item_params
    params.require(:item).permit(:title, :description)
  end

  def show
  end

  def edit
  end

  def update


    if @item.update(item_params)
      redirect_to items_path(@item)
    
      ItemMailer.item_edit_confirm(current_user, @item).deliver


    else
      render 'edit'
    end
  end

  def find_item
    @item = Item.find(params[:id])
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  def complete
    @item.update_attribute(:completed_at, Time.now)
    redirect_to root_path
    
  end

end
