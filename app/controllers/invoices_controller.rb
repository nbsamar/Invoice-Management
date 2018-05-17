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
    def index
        @invoices = Invoice.all
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
