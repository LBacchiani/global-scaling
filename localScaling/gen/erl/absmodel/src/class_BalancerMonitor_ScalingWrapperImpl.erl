-module(class_BalancerMonitor_ScalingWrapperImpl).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"ScalingWrapper">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_BalancerMonitor_ScalingWrapperImpl,'balancer'=null}).
'init_internal'()->
    #state{}.

 %% BalancerMonitor.abs:35
'get_val_internal'(#state{'balancer'=G},'balancer')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% BalancerMonitor.abs:35
'set_val_internal'(S,'balancer',V)->
    S#state{'balancer'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'balancer', S#state.'balancer' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_balancer,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'balancer',P_balancer)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% BalancerMonitor.abs:36
 %% BalancerMonitor.abs:36
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_n_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'n' => V_n_0 }),
    try
         %% BalancerMonitor.abs:37--37
        put(vars, (get(vars))#{'times' => maps:get('n', get(vars))}),
         %% BalancerMonitor.abs:38--38
        []=(fun Loop ([])->
            case (not cmp:eq(maps:get('times', get(vars)),0)) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% BalancerMonitor.abs:39--39
                T_1 = cog:create_task(C:get_val_internal(get(this), 'balancer'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
                T_1,
                 %% BalancerMonitor.abs:40--40
                put(vars, (get(vars))#{'times' := (maps:get('times', get(vars)) - 1) }),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% BalancerMonitor.abs:44
 %% BalancerMonitor.abs:44
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_n_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'n' => V_n_0 }),
    try
         %% BalancerMonitor.abs:45--45
        put(vars, (get(vars))#{'times' => maps:get('n', get(vars))}),
         %% BalancerMonitor.abs:46--46
        []=(fun Loop ([])->
            case (not cmp:eq(maps:get('times', get(vars)),0)) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% BalancerMonitor.abs:47--47
                T_1 = cog:create_task(C:get_val_internal(get(this), 'balancer'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
                T_1,
                 %% BalancerMonitor.abs:48--48
                put(vars, (get(vars))#{'times' := (maps:get('times', get(vars)) - 1) }),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
