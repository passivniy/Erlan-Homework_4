{application, 'cache_server', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['cache_handler','cache_server_app','cache_server_sup']},
	{registered, [cache_server_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{optional_applications, []},
	{mod, {cache_server_app, []}},
	{env, []}
]}.