class Api::CreditScoreController < ApplicationController

    def index
        render json: CreditScore.all
      end
    
      def create
        credit_score = @current_user.credit_scores.create!(credit_score_params)
        render json: credit_score, status: :created
      end
    
      private
    
      def credit_score_params
        params.permit(:score)
      end

end
