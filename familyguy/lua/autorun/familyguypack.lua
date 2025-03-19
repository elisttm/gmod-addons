-- script by elisttm

local mdls = "models/familyguypack/"
models = {
    adamwest = {
        name = "Adam West",
        model = mdls.."adamwest/adamwest_pm.mdl",
    },
    brian = {
        name = "Brian Griffin",
        model = mdls.."brian/brian.mdl",
    },
    chris = {
        name = "Chris Griffin",
        model = mdls.."chris/chrisg_pm.mdl",
    },
    cleveland = {
        name = "Cleveland Brown",
        model = mdls.."cleveland/cleveland_player.mdl",
    },
    joe = {
        name = "Joe Swanson",
        model = mdls.."joe/joe_pm.mdl",
    },
    joelegs = {
        name = "Joe (Legs)",
        model = mdls.."joe/joestand_pm.mdl",
    },
    lois = {
        name = "Lois Griffin",
        model = mdls.."lois/lois_pm.mdl",
    },
    meg = {
        name = "Meg Griffin",
        model = mdls.."meg/meg.mdl",
    },
    peter = {
        name = "Peter Griffin",
        model = mdls.."peter/peter_pm.mdl",
    },
    peterhooker = {
        name = "Peter (Hooker)",
        model = mdls.."peter/hookerpeter_pm.mdl",
    },
    quagmire = {
        name = "Glenn Quagmire",
        model = mdls.."quagmire/quagmire_pm.mdl",
    },
    stan = {
        name = "Stan Smith",
        model = mdls.."stan/stan_pm.mdl",
    },
    stewie = {
        name = "Stewie Griffin",
        model = mdls.."stewie/stewie_pm.mdl",
    },
    stewiebig = {
        name = "Stewie (Big)",
        model = mdls.."stewie/bigstewie_pm.mdl",
    },
}

for name, info in pairs(models) do

    -- add playermodels

    list.Set( "PlayerOptionsModel", "Family Guy: "..info.name, info.model )
    player_manager.AddValidModel( "Family Guy: "..info.name, info.model )


    -- add npcs

    local npc_friendly = {
        Name = info.name,
        Model = info.model,
        Category = "Family Guy",
        Class = "npc_citizen",
        Health = 100,
        KeyValues = { citizentype = CT_UNIQUE },
    }

    local npc_hostile = {
        Name = "(EVIL) "..info.name,
        Model = info.model,
        Category = "Family Guy",
        Class = "npc_combine",
        Health = 100,
        KeyValues = { SquadName = "FamilyGuy", Numgrenades = 3 },
    }

    list.Set( "NPC", "npc_familyguy_"..name, npc_friendly )
    list.Set( "NPC", "npc_familyguy_"..name.."_evil", npc_hostile )

    --print("[FAMILY GUY] loaded "..info.name)

end