class ItemsController < ApplicationController
  respond_to :json
  load_and_authorize_resource param_method: :item_params

  def show
    respond_with @item
  end

  def index
    @items = Person.find(params[:person_id]).itemtems
    respond_with @items
  end

  def create
    @item = Person.find(params[:person_id]).items.create(item_params)
    respond_with @item

  def update
    @item.update_attributes(item_params)
    respond_with @item
  end

  def destroy
    @item.destroy
    respond_with @item
  end


  private

  def item_params
    params.require(:item).permit(
      :id, :type, :amount, :requested, :dispensed, :observations)
    end
  end
end