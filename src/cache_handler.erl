-module(cache_handler).

-export([init/2,handler/2]).

init(Req,State) ->
  handler(Req,State).

handler(Req0,State)->
  {ok,Body,Req} = cowboy_req:read_body(Req0),
  io:format("Body = ~p~n",[Body]),
  Req = cowboy_req:reply(200,
        #{<<"content-type">> => <<"text/plain">>},
        Body,Req0),
  {ok,Req,State}.