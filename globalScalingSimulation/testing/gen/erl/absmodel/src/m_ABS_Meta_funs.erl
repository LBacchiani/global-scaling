-module(m_ABS_Meta_funs).
-compile(export_all).
-include_lib("../include/abs_types.hrl").

'f_reflect'(Cog=#cog{ref=CogRef},V_a_0,Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    builtin.

'f_getProductLine'(Cog=#cog{ref=CogRef},Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    builtin.

