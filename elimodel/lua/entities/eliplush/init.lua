AddCSLuaFile( "shared.lua" )
include( 'shared.lua' )

local meow1 =
{
	channel	= CHAN_VOICE,
	name	= "eli:meow",
	level	= 80,
	sound	= "ambient/creatures/teddy.wav",
	volume	= 0.75,
	pitch	= 100,
}
sound.Add(meow1)

local meow2 =
{
	channel	= CHAN_VOICE,
	name	= "eli:scream",
	level	= 100,
	sound	= "npc/stalker/go_alert2a.wav",
	volume	= 1.0,
	pitch	= 100,
}
sound.Add(meow2)

function ENT:Initialize()

	self.Entity:SetModel("models/elisttm/eli/plush.mdl")

	self.Entity:PhysicsInit( SOLID_VPHYSICS )
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
	self.Entity:SetSolid( SOLID_VPHYSICS )
		
	local phys = self.Entity:GetPhysicsObject()
	if phys:IsValid() then
		phys:Wake()
	end
end

if CLIENT then return end

function ENT:Use(activator, caller)
	if IsValid(caller) and caller:IsPlayer() then
		if timer.Exists("meowdelay"..self:EntIndex()) then return end
		timer.Create( "meowdelay"..self:EntIndex(), 1, 1, function() end )
		
		if math.random(1, 100) == 1 then
			self:EmitSound( "eli:scream" )
		else
			self:EmitSound( "eli:meow" )
		end

		if ( self:IsPlayerHolding() ) then return end
		activator:PickupObject( self )
		
	end
end

function ENT:OnRemove()
	timer.Remove("meowdelay"..self:EntIndex())
	self:StopSound("eli:meow")
	self:StopSound("eli:scream")
end
