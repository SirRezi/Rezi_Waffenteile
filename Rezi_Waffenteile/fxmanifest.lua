fx_version 'cerulean'
game 'gta5'

description 'Waffenteile Farm'
author 'SirRezi'
version '1.0.0'

shared_script '@es_extended/imports.lua'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

client_scripts {
    'client/main.lua'
}

dependencies {
    'es_extended',
    'oxmysql'
}
