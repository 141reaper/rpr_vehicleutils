fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author '141reaper'
description 'Script to Recover Cars with a Simple Menu! Copyright © 141Reaper'
version '1.4.0'

server_scripts { 
    '@oxmysql/lib/MySQL.lua',
    'server/server.lua',
    'config.lua'
    }

client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",
    'client/client.lua',
    'config.lua'
}

dependencys {'oxmysql', 'ox_lib'}

shared_script '@ox_lib/init.lua'
