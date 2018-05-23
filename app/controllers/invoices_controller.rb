class InvoicesController < ApplicationController
    def new
        @invoice = Invoice.new
    end

    def create
        @invoice = Invoice.new(invoice_params)
        if @invoice.save
            flash[:notice] = "Invoice Created"
            redirect_to invoices_path
        else
            flash[:error] = @invoice.errors.full_messages.join(', ').html_safe
            render :new
        end
    end

# Collection
    def create_collection
        @collection = Collection.new(collection_params)
        if @collection.save
            flash[:notice] = "Collection Created"
            redirect_to invoices_path
        else
            flash[:error] = @collection.errors.full_messages.join(', ').html_safe
            render :new
        end
    end
    def collection_params
        params.require(:collection).permit(:amount, :reference, :collection_date)
    end

    def index
        @invoices = Invoice.all
        # @invoice = Invoice.find(params[:id])
        # @collections = @invoice.collections
        # @amounts = []
        # @collections.each do |collection|
        #     @amounts << collection.amount
        # end
    end
    def collection
        # @invoice = Invoice.find(params[:id])
        # @collections = @invoice.collections
        # @amounts = []
        # @collections.each do |collection|
        #     @amounts << collection.amount
        # end
        @collection = Collection.new
    end

    def show
        @invoice = Invoice.find(params[:id])
    end
    def pending
        @invoices = Invoice.includes(:collections).where("amount < ?", 0)
        render :index
    end
    def invoice_params
        params.require(:invoice).permit(:brand_manager, :narration, :amount, :customer_name, :reference, :invoice_date)
    end

end
