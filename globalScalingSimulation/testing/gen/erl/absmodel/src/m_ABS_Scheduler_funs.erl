-module(m_ABS_Scheduler_funs).
-compile(export_all).
-include_lib("../include/abs_types.hrl").

'f_method'(Cog=#cog{ref=CogRef},V_p_0,Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    builtin.

'f_arrival'(Cog=#cog{ref=CogRef},V_p_0,Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    builtin.

'f_cost'(Cog=#cog{ref=CogRef},V_p_0,Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    builtin.

'f_proc_deadline'(Cog=#cog{ref=CogRef},V_p_0,Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    builtin.

'f_start'(Cog=#cog{ref=CogRef},V_p_0,Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    builtin.

'f_finish'(Cog=#cog{ref=CogRef},V_p_0,Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    builtin.

'f_crit'(Cog=#cog{ref=CogRef},V_p_0,Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    builtin.

'f_value'(Cog=#cog{ref=CogRef},V_p_0,Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    builtin.

'f_defaultscheduler'(Cog=#cog{ref=CogRef},V_queue_0,Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    m_ABS_StdLib_funs:f_head(Cog,V_queue_0,Stack).

'f_randomscheduler'(Cog=#cog{ref=CogRef},V_queue_0,Stack)->
    receive
        {stop_world, CogRef} ->
            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
            cog:task_is_runnable(Cog,self()),
            task:wait_for_token(Cog,Stack)
        after 0 -> ok
    end,
    m_ABS_StdLib_funs:f_nth(Cog,V_queue_0,builtin:random(Cog,m_ABS_StdLib_funs:f_length(Cog,V_queue_0,Stack)),Stack).

