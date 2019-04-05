class ExpensesController < ApplicationController
    def index 
        @expenses = Expense.all
    end

    def new
        @expense = Expense.new
    end
    
    def show 
        @expense = Expense.find(params[:id])
    end

    def create
        @expense = Expense.new(expense_params)
        if @expense.save
            redirect_to expense_path(@expense)
        end
        
    end

    def edit
        @expense = Expense.find(params[:id])
    end

    def update
        @expense = Expense.find(params[:id])
        if @expense.update(expense_params)
            redirect_to expense_path(@expense)
        end
    end

    def destroy
        @expense = Expense.find(params[:id])
        if @expense.destroy
            redirect_to expenses_path()
        end
    end

    private 
        def expense_params
            params.require(:expense).permit(:amout, :description)
        end
end
