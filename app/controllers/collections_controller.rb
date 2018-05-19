class CollectionsController < ApplicationController
    def new
        @invoice = Invoice.find(params[:id])
        @collections = @invoice.collections
        @amounts = []
        @collections.each do |collection|
            @amounts << collection.amount
        end
    end
end
