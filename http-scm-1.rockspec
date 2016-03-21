package = 'http'
version = 'scm-1'
source  = {
    url    = 'git://github.com/vergilijus/http.git',
    branch = 'master',
}
description = {
    summary  = "Tarantool module for HTTP client/server - fork by vergilijus.",
    homepage = 'https://github.com/vergilijus/http/',
    license  = 'BSD',
}
dependencies = {
    'lua >= 5.1'
}
external_dependencies = {
    TARANTOOL = {
        header = "tarantool/module.h"
    }
}
build = {
    type = 'builtin',

    modules = {
        ['http.lib'] = {
            sources = 'http/lib.c',
            incdirs = {
                "$(TARANTOOL_INCDIR)"
            }
        },
        ['http.client'] = 'http/client.lua',
        ['http.server'] = 'http/server.lua',
        ['http.mime_types'] = 'http/mime_types.lua',
        ['http.codes'] = 'http/codes.lua',
    }
}

-- vim: syntax=lua
