%%%-------------------------------------------------------------------
%% @doc test_sub public API
%% @end
%%%-------------------------------------------------------------------

-module(test_sub_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    test_sub_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
