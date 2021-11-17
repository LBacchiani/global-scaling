-module(class_BalancerMonitor_LoadBalancerMonitor).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"LoadBalancerMonitorInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_BalancerMonitor_LoadBalancerMonitor,'balancer'=null,'balancerName'=null,'mcl'=null,'baseInstanceN'=null,'mf'=null,'deplInstances'=null,'sw'=null,'k'=null,'kbig'=null}).
'init_internal'()->
    #state{}.

 %% BalancerMonitor.abs:10
'get_val_internal'(#state{'balancer'=G},'balancer')->
    G;
 %% BalancerMonitor.abs:10
'get_val_internal'(#state{'balancerName'=G},'balancerName')->
    G;
 %% BalancerMonitor.abs:10
'get_val_internal'(#state{'mcl'=G},'mcl')->
    G;
 %% BalancerMonitor.abs:10
'get_val_internal'(#state{'baseInstanceN'=G},'baseInstanceN')->
    G;
 %% BalancerMonitor.abs:10
'get_val_internal'(#state{'mf'=G},'mf')->
    G;
 %% BalancerMonitor.abs:11
'get_val_internal'(#state{'deplInstances'=G},'deplInstances')->
    G;
 %% BalancerMonitor.abs:12
'get_val_internal'(#state{'sw'=G},'sw')->
    G;
 %% BalancerMonitor.abs:13
'get_val_internal'(#state{'k'=G},'k')->
    G;
 %% BalancerMonitor.abs:14
'get_val_internal'(#state{'kbig'=G},'kbig')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% BalancerMonitor.abs:10
'set_val_internal'(S,'balancer',V)->
    S#state{'balancer'=V};
 %% BalancerMonitor.abs:10
'set_val_internal'(S,'balancerName',V)->
    S#state{'balancerName'=V};
 %% BalancerMonitor.abs:10
'set_val_internal'(S,'mcl',V)->
    S#state{'mcl'=V};
 %% BalancerMonitor.abs:10
'set_val_internal'(S,'baseInstanceN',V)->
    S#state{'baseInstanceN'=V};
 %% BalancerMonitor.abs:10
'set_val_internal'(S,'mf',V)->
    S#state{'mf'=V};
 %% BalancerMonitor.abs:11
'set_val_internal'(S,'deplInstances',V)->
    S#state{'deplInstances'=V};
 %% BalancerMonitor.abs:12
'set_val_internal'(S,'sw',V)->
    S#state{'sw'=V};
 %% BalancerMonitor.abs:13
'set_val_internal'(S,'k',V)->
    S#state{'k'=V};
 %% BalancerMonitor.abs:14
'set_val_internal'(S,'kbig',V)->
    S#state{'kbig'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'balancer', S#state.'balancer' }
        , { 'balancerName', S#state.'balancerName' }
        , { 'mcl', S#state.'mcl' }
        , { 'baseInstanceN', S#state.'baseInstanceN' }
        , { 'mf', S#state.'mf' }
        , { 'deplInstances', S#state.'deplInstances' }
        , { 'sw', S#state.'sw' }
        , { 'k', S#state.'k' }
        , { 'kbig', S#state.'kbig' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_balancer,P_balancerName,P_mcl,P_baseInstanceN,P_mf,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'balancer',P_balancer)),
    put(this, C:set_val_internal(get(this),'balancerName',P_balancerName)),
    put(this, C:set_val_internal(get(this),'mcl',P_mcl)),
    put(this, C:set_val_internal(get(this),'baseInstanceN',P_baseInstanceN)),
    put(this, C:set_val_internal(get(this),'mf',P_mf)),
     %% BalancerMonitor.abs:11--11
    put(this, C:set_val_internal(get(this),'deplInstances',C:get_val_internal(get(this), 'baseInstanceN'))),
     %% BalancerMonitor.abs:12--12
     %% BalancerMonitor.abs:13--13
    put(this, C:set_val_internal(get(this),'k',( rationals:mul(10,C:get_val_internal(get(this), 'mf'))) )),
     %% BalancerMonitor.abs:14--14
    put(this, C:set_val_internal(get(this),'kbig',( rationals:mul(20,C:get_val_internal(get(this), 'mf'))) )),
     %% BalancerMonitor.abs:15--15
    put(this, C:set_val_internal(get(this), 'sw',object:new(cog:start(Cog,DC),class_BalancerMonitor_ScalingWrapperImpl,[C:get_val_internal(get(this), 'balancer'),[]],Cog,[O,DC| Stack]))),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% BalancerMonitor.abs:17
 %% BalancerMonitor.abs:17
'm_check'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% BalancerMonitor.abs:18--18
        put(vars, (get(vars))#{'inbound_workload' => (fun() -> case C:get_val_internal(get(this), 'balancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_returninbound_workload'(Callee,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_returninbound_workload'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_returninbound_workload',[[]],#task_info{method= <<"returninbound_workload"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% BalancerMonitor.abs:19--19
        put(vars, (get(vars))#{'inbound_workload' :=  rationals:rdiv(maps:get('inbound_workload', get(vars)),10) }),
         %% BalancerMonitor.abs:20--20
        case (cmp:gt(( rationals:sub(maps:get('inbound_workload', get(vars)),( rationals:sub(( rationals:mul(C:get_val_internal(get(this), 'mcl'),C:get_val_internal(get(this), 'deplInstances'))) ,C:get_val_internal(get(this), 'kbig'))) )) ,C:get_val_internal(get(this), 'k'))) or (cmp:gt(( rationals:sub(( rationals:sub(( rationals:mul(C:get_val_internal(get(this), 'mcl'),C:get_val_internal(get(this), 'deplInstances'))) ,C:get_val_internal(get(this), 'kbig'))) ,maps:get('inbound_workload', get(vars)))) ,C:get_val_internal(get(this), 'k'))) of
            true ->  %% BalancerMonitor.abs:21--21
            put(vars, (get(vars))#{'configInstances' => builtin:ceil(Cog,builtin:float(Cog, rationals:rdiv(( rationals:add(maps:get('inbound_workload', get(vars)),C:get_val_internal(get(this), 'kbig'))) ,C:get_val_internal(get(this), 'mcl')) ))}),
             %% BalancerMonitor.abs:22--22
            case cmp:gt(maps:get('configInstances', get(vars)),C:get_val_internal(get(this), 'deplInstances')) of
                true ->  %% BalancerMonitor.abs:22--22
                T_1 = cog:create_task(C:get_val_internal(get(this), 'sw'),'m_deploy',[(maps:get('configInstances', get(vars)) - C:get_val_internal(get(this), 'deplInstances')) ,[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
                T_1;
                false ->              %% BalancerMonitor.abs:23--23
            case (cmp:lt(maps:get('configInstances', get(vars)),C:get_val_internal(get(this), 'deplInstances'))) and (cmp:ge(C:get_val_internal(get(this), 'deplInstances'),C:get_val_internal(get(this), 'baseInstanceN'))) of
                true ->  %% BalancerMonitor.abs:23--23
                T_1 = cog:create_task(C:get_val_internal(get(this), 'sw'),'m_undeploy',[(C:get_val_internal(get(this), 'deplInstances') - maps:get('configInstances', get(vars))) ,[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
                T_1;
                false ->             ok
            end
            end,
             %% BalancerMonitor.abs:24--24
            put(this, C:set_val_internal(get(this), 'deplInstances',maps:get('configInstances', get(vars))));
            false ->         ok
        end,
         %% BalancerMonitor.abs:26--26
        T_2 = (fun() -> case C:get_val_internal(get(this), 'balancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_resetMetrics'(Callee,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_resetMetrics'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_resetMetrics',[[]],#task_info{method= <<"resetMetrics"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method check and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
