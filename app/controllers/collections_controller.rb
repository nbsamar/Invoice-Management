class CollectionsController < ApplicationController
    # def new
    #     @invoice = Invoice.find(params[:id])
    #     @collections = @invoice.collections
    #     @amounts = []
    #     @collections.each do |collection|
    #         @amounts << collection.amount
    #     end
    # end
    # def create
    #     @collection = Collection.new(collection_params)
    #     if @collection.save
    #         flash[:notice] = "Collection Created"
    #         redirect_to invoices_path
    #     else
    #         flash[:error] = @collection.errors.full_messages.join(', ').html_safe
    #         render :new
    #     end
    # end
    # def collection_params
    #     params.require(:collection).permit(:amount, :reference, :collection_date)
    # end
    
end
