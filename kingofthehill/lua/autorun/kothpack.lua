-- script by elisttm

local mdls = "models/kingofthehill/"
models = {
    hank = {
        name = "Hank",
        model = mdls.."hank_hill/hankhill_pm.mdl",
    },
    peggy = {
        name = "Peggy",
        model = mdls.."peggyhill/peggyhill.mdl",
    },
    dale = {
        name = "Dale",
        model = mdls.."dale_gribble/dalegribble_pm.mdl",
    },
    bill = {
        name = "Bill",
        model = mdls.."bill_dautrive/bill.mdl",
    },
    boom = {
        name = "Boomhauer",
        model = mdls.."jeff_boomhauer/boomhauer.mdl",
    },
    kahn = {
        name = "Kahn",
        model = mdls.."kahn_soup/kahn.mdl",
    },
    cotton = {
        name = "Cotton",
        model = mdls.."cottonhill/cotton_hill.mdl",
    },
    bobby = {
        name = "Bobby",
        model = mdls.."bobbyhill/bobbyhill.mdl",
    },
}

for name, info in pairs(models) do

    -- add playermodels

    list.Set( "PlayerOptionsModel", "KOTH: "..info.name, info.model )
    player_manager.AddValidModel( "KOTH: "..info.name, info.model )


    -- add npcs

    local npc_friendly = {
        Name = info.name,
        Model = info.model,
        Category = "King of the Hill",
        Class = "npc_citizen",
        Health = 100,
        KeyValues = { citizentype = CT_UNIQUE },
    }

    local npc_hostile = {
        Name = "(EVIL) "..info.name,
        Model = info.model,
        Category = "King of the Hill",
        Class = "npc_combine",
        Health = 100,
        KeyValues = { SquadName = "KOTH", Numgrenades = 3 },
    }

    list.Set( "NPC", "npc_koth_"..name, npc_friendly )
    list.Set( "NPC", "npc_koth_"..name.."_evil", npc_hostile )

    --print("[FAMILY GUY] loaded "..info.name)

end