class ItemsController < ApplicationController
  before_action :logged_in_user , except: [:show]
  before_action :set_item, only: [:show]

  def new
    if params[:q]
      response = Amazon::Ecs.item_search(params[:q] , 
                                  :search_index => 'All' , 
                                  :response_group => 'Medium' , 
                                  :country => 'jp')
      @amazon_items = response.items
      
    end
  end
  
  def ownerrelationships
    
  end

  def show
    @item= Item.find(params[:id]) 
    
    @itemhave = @item.haves #ライクしてる関係だしてる
    @haveid = @itemhave.select("user_id")
    @haveusers = User.where(:id => @haveid).reverse

    
    @itemwant = @item.wants
    @wantid = @itemwant.select("user_id")
    @wantusers = User.where(:id => @wantid).reverse
    
    @title = @item.title
  end

  private
   def set_item
     @item = Item.find(params[:id])
   end
end
