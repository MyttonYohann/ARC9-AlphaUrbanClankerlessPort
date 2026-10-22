AddCSLuaFile()

ENT.Base = "arc9_ucalpha_riflegrenade"
ENT.PrintName = "40mm HE"

ENT.GrenadeDamage = 120
ENT.GrenadeRadius = 500
ENT.DragCoefficient = 0

ENT.Model = "models/items/ar2_grenade.mdl"

function ENT:DoDetonation()
    local attacker = IsValid(self:GetOwner()) and self:GetOwner() or self
    util.BlastDamage(self, attacker, self:GetPos(), self.GrenadeRadius, self.GrenadeDamage or self.Damage or 0)
	
    self:FireBullets({
        Attacker = attacker,
        Damage = 0,
        Tracer = 0,
        Distance = 20000,
        Dir = self:GetVelocity(),
        Src = self:GetPos(),
        Callback = function(att, tr, dmg)
            util.Decal("Scorch", tr.StartPos, tr.HitPos - (tr.HitNormal * 16), self)
        end
    })
end