AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")

include("shared.lua")

 
function ENT:Initialize()


  self:SetModel("models/Barney.mdl")
    self:SetHullType( HULL_HUMAN ) -- Sets the hull type, used for movement calculations amongst other things.
    self:SetHullSizeNormal( )
    self:SetNPCState( NPC_STATE_SCRIPT )
    self:SetSolid(  SOLID_BBOX ) -- This entity uses a solid bounding box for collisions.
    self:CapabilitiesAdd( CAP_TURN_HEAD ) -- Adds what the NPC is allowed to do ( It cannot move in this case ).
    self:SetUseType( SIMPLE_USE ) -- Makes the ENT.Use hook only get called once at every use.
    self:DropToFloor()

    local physics = self:GetPhysicsObject()
    if IsValid(physics) then
        physics:Wake()
    end

end

util.AddNetworkString("OpenVGUI")

function ENT:Use(activator,caller)

    net.Start("OpenVGUI")
    net.Send(activator)

end

util.PrecacheModel("models/weapons/w_rif_ak47.mdl") -- reduces lag when given weapon
net.Receive("reqWep", function(len,ply)
    ply:Give("weapon_ak472") 
   
end)