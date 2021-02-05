class SheetController < ApplicationController
    before_action :require_user_logged_in!

    def index
        #  LEVEL

        @levels = (1..20).to_a

        # PROFICIENCY

        @proficiency_bonus = 1 + (params[:level].to_f / 4).ceil || 2

        # ATTRIBUTES

        @strength = params[:strength] || 8
        @mod_strength = (@strength.to_i - 10) / 2

        @dexterity = params[:dexterity] || 8
        @mod_dexterity = (@dexterity.to_i - 10) / 2

        @constitution = params[:constitution] || 8
        @mod_constitution = (@constitution.to_i - 10) / 2
        
        @intelligence = params[:intelligence] || 8
        @mod_intelligence = (@intelligence.to_i - 10) / 2

        @wisdom = params[:wisdom] || 8
        @mod_wisdom = (@wisdom.to_i - 10) / 2

        @charisma = params[:charisma] || 8
        @mod_charisma = (@charisma.to_i - 10) / 2

        # SKILLS

        @athletics = @mod_strength + @proficiency_bonus
        @acrobatics = @mod_dexterity + @proficiency_bonus
        
    end
end