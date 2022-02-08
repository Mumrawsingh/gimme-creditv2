class Api::PromptController < ApplicationController

    def index
        render json: Prompt.all
      end
    
      def create
        prompt = @current_user.prompts.create!(prompt_params)
        render json: prompt, status: :created
      end
    
      private
    
      def prompt_params
        params.permit(:description)
      end

end
