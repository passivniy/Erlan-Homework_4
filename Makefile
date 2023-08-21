PROJECT = cache_server
PROJECT_DESCRIPTION = New project
PROJECT_VERSION = 0.1.0

DEPS = cowboy
deps_cowboy_commit = 2.10.0

DEP_PLUGINS = cowboy

BUILD_DEPS += relx
include erlang.mk
