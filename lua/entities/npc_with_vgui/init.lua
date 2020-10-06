AddCSLuaFile("shared.lua")
AddCSLuaFile("cl_init.lua")

include("shared.lua")

 
function ENT:Initialize()
    self:SetModel("models/Barney.mdl")
    self:SetHullType( HULL_HUMAN ) 
    self:SetHullSizeNormal( )
    self:SetNPCState( NPC_STATE_SCRIPT )
    self:SetSolid(  SOLID_BBOX ) 
    self:CapabilitiesAdd( CAP_TURN_HEAD ) 
    self:SetUseType( SIMPLE_USE ) -- Makes the ENT.Use hook only get called once at every use.
    self:DropToFloor()
    self:PhysWake()
end

util.AddNetworkString("Bully's DermaNPC Template")

function ENT:Use( ply )
    net.Start("Bully's DermaNPC Template")
    net.Send( ply )
end
