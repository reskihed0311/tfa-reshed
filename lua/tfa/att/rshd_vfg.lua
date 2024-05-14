if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Vertical Foregrip"
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { TFA.Attachments.Colors["+"], "30% lower H-recoil", TFA.Attachments.Colors["+"], "10% lower V-recoil", TFA.Attachments.Colors["-"], "10% higher spread recovery" }
ATTACHMENT.Icon = "vgui/atts/a_foregrip_sec.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "VFGRIP"
ATTACHMENT.TFADataVersion = TFA.LatestDataVersion

local defaultbl = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }

local function LerpBoneMods( t, b1, b2 )
	local tbl = table.Copy(b1)
	for k,v in pairs(b2) do
		if not tbl[k] then
			tbl[k] = table.Copy(defaultbl)
		end
		tbl[k].scale = LerpVector( t, tbl[k].scale, v.scale )
		tbl[k].pos = LerpVector( t, tbl[k].pos, v.pos )
		tbl[k].angle = LerpAngle( t, tbl[k].angle, v.angle )
	end
	return tbl
end

ATTACHMENT.WeaponTable = {
	["ViewModelElements"] = {
		["vfg"] = {
			["active"] = true
		}
	},
	["WorldModelElements"] = {
		["vfg"] = {
			["active"] = true
		}
	},
	["Primary"] = {
		["SpreadRecovery"] = function(wep,stat) return stat * 1.1 end,
		["KickUp"] = function(wep,stat) return stat * 0.9 end,
		["KickDown"] = function(wep,stat) return stat * 0.9 end,
		["KickHorizontal"] = function(wep,stat) return stat * 0.7 end,
	},
	["ViewModelBoneMods"] = function(wep,tbl)
		if wep.VFGGripBoneMods then
			wep.VFGGripFactor = wep.VFGGripFactor or 0
			local CanGrip = true
			if wep.VFGGripBadActivities and wep.VFGGripBadActivities[ wep:GetLastActivity() ] and wep:VMIV() then
				local cyc = wep.OwnerViewModel:GetCycle()
				if cyc > wep.VFGGripBadActivities[ wep:GetLastActivity() ][1] and cyc < wep.VFGGripBadActivities[ wep:GetLastActivity() ][2] then
					CanGrip = false
				end
			end
			wep.VFGGripFactor = math.Approach( wep.VFGGripFactor, CanGrip and 1 or 0, ( ( CanGrip and 1 or 0 ) - wep.VFGGripFactor ) * TFA.FrameTime() * ( wep.VFGGripLerpSpeed or 20 ) )
			return LerpBoneMods( wep.VFGGripFactor, tbl, wep.VFGGripBoneMods )
		end
	end
}

function ATTACHMENT:Attach(wep)
	wep.VFGGripFactor = 0
end

function ATTACHMENT:Detach(wep)
	wep.VFGGripFactor = 0
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
