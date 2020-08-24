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
     %% Error_abs.abs:37--52
    put(vars, (get(vars))#{'realWorkload' => m_ABS_StdLib_funs:f_list(Cog,[ 47, 47, 47, 47, 54, 54, 54, 46, 46, 46, 50, 50, 50, 50, 65, 65, 84, 84, 68, 90, 112, 137, 137, 143, 167, 188, 188, 210, 231, 231, 251, 251, 274, 294, 311, 311, 311, 332, 355, 375, 375, 393, 393, 416, 422, 422, 422, 427, 427, 431, 431, 431, 431, 418, 418, 418, 413, 413, 399, 396, 414, 390, 390, 392, 412, 412, 412, 412, 390, 393, 393, 414, 440, 425, 404, 384, 403, 403, 403, 388, 408, 427, 427, 405, 420, 420, 440, 430, 416, 416, 405, 405, 413, 413, 413, 413, 427, 427, 447, 447, 438, 438, 438, 418, 407, 433, 449, 420, 405, 405, 405, 412, 412, 412, 393, 393, 345, 323, 317, 305, 294, 272, 250, 272, 250, 227, 208, 192, 182, 169, 154, 145, 133, 125, 112, 112, 94, 92, 88, 85, 83, 80, 75, 72, 61, 59, 55, 52, 52, 52, 52, 43, 43, 43, 40, 40, 40, 40, 44, 42] ,[O,DC| Stack])}),
     %% Error_abs.abs:53--53
    put(vars, (get(vars))#{'i' => 0}),
     %% Error_abs.abs:54--54
    T_1 = builtin:println(Cog,<<"#X  Y"/utf8>>),
    T_1,
     %% Error_abs.abs:55--55
    []=(fun Loop ([])->
        case cmp:lt(maps:get('i', get(vars)),m_ABS_StdLib_funs:f_length(Cog,maps:get('realWorkload', get(vars)),[O,DC| Stack])) of
        false -> [];
        true -> receive
                {stop_world, CogRef} ->
                    cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                    cog:task_is_runnable(Cog,self()),
                    task:wait_for_token(Cog,[O,DC| Stack])
                after 0 -> ok
            end,
             %% Error_abs.abs:56--56
            T_2 = builtin:println(Cog,iolist_to_binary([iolist_to_binary([builtin:toString(Cog,(maps:get('i', get(vars)) + 1) ), <<" "/utf8>>]), builtin:toString(Cog,m_ABS_StdLib_funs:f_nth(Cog,maps:get('realWorkload', get(vars)),maps:get('i', get(vars)),[O,DC| Stack]))])),
            T_2,
             %% Error_abs.abs:57--57
            put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
        Loop([])  end end)
    ([]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    runtime:start_link([m_Test2]).

stop(_State) ->
    ok.
