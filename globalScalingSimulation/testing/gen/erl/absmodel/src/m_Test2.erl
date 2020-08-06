-module(m_Test2).
-behaviour(application).
-include_lib("../include/abs_types.hrl").
-export([main/1]).
%% Application callbacks
-export([start/2, stop/1]).

'main'(Cog=#cog{ref=CogRef,dcobj=DC})->
    put(vars, #{}),
    C = none,
    Oid = null, % avoid self-call branch in synccall code
    O = #object{oid=Oid,cog=Cog},
    put(this, {state, none}),
    Stack = [DC],
     %% Error_abs.abs:37--37
    T_1 = builtin:println(Cog,<<"CIAO"/utf8>>),
    T_1,
     %% Error_abs.abs:38--38
    cog:block_current_task_for_duration(Cog,50000,50000,[O,DC| Stack]),
     %% Error_abs.abs:39--39
    T_2 = builtin:println(Cog,<<"CIAO2"/utf8>>),
    T_2.

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    runtime:start_link([m_Test2]).

stop(_State) ->
    ok.
