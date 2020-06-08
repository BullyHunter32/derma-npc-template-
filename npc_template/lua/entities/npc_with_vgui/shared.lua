ENT.Base = "base_ai"
ENT.Type = "ai"
ENT.PrintName = "BullyHunter - BaseNPC"
ENT.Category = "Base NPC"
ENT.Spawnable = true

ENT.AutomaticFrameAdvance = true

function ENT:SetAutomaticFrameAdvance( bUsingAnim )
    self.AutomaticFrameAdvance = bUsingAnim
end 