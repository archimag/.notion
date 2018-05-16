
defbindings("WFrame", 
            {
               --kpress(META.."Tab", "named_scratchpad(_, 'repl')"),
               kpress(META.."Tab", "repl_scratchpad(_)"),
               submap(META.."O",
                      {
                         kpress(META.."1", "named_scratchpad(_, 'jabber')"),
                         kpress(META.."2", "named_scratchpad(_, 'dict')"),
                         kpress(META.."3", "named_scratchpad(_, 'rss')"),
                         kpress(META.."4", "named_scratchpad(_, 'emacs-s')"),
                      }
                   ),               
            }
         )

--defbindings("WScreen", {
--     kpress(META.."space", "mod_sp.set_shown_on('repl', 'toggle')"),    
--})

defbindings("WFrame", 
            {
               kpress( META.."Escape",
                      "mod_sp.set_shown(ioncore.lookup_region(_:name(), 'WFrame'), 'unset' )" ),
            }
         )

-- defbindings("WFrame", {
--     kpress( META.."L",
--             "WRegion.rqorder(_, 'back')" ),
--     kpress( META.."U",
--             "WRegion.rqorder(_, 'front')" ),
-- })

defbindings("WScreen", {
   bdoc("Mute/Unmute Sound."),
   kpress("AnyModifier+XF86AudioMute", "ioncore.exec_on(_, 'amixer sset Master toggle')"),
   bdoc("Increase Volume."),
   kpress("AnyModifier+XF86AudioRaiseVolume", "ioncore.exec_on(_, 'amixer sset Master 3%+')"),
   bdoc("Decrease Volume."),
   kpress("AnyModifier+XF86AudioLowerVolume", "ioncore.exec_on(_, 'amixer sset Master 3%-')"),


   -- kpress("AnyModifier+XF86HomePage", "WScreen.switch_nth(ioncore.find_screen_id(0), 0)"),
   -- kpress(META.."XF86HomePage", "ioncore.exec_on(_, 'wesnoth')")
   kpress("AnyModifier+XF86Search", "WScreen.switch_nth(ioncore.find_screen_id(0), 2)"),
   kpress("AnyModifier+XF86Favorites", "WScreen.switch_nth(ioncore.find_screen_id(0), 5)")
})
