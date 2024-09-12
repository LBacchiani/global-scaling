-module(class_LocalMonitor_LocalMonitor).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"LocalMonitorInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_LocalMonitor_LocalMonitor,'balancer'=null,'balancerName'=null,'mcl'=null,'baseInstanceN'=null,'mf'=null,'predictions'=null,'deplInstances'=null,'sw'=null,'k'=null,'kbig'=null,'i'=null,'reqs'=null}).
'init_internal'()->
    #state{}.

 %% localMonitor.abs:12
'get_val_internal'(#state{'balancer'=G},'balancer')->
    object:register_read('balancer'),
    G;
 %% localMonitor.abs:12
'get_val_internal'(#state{'balancerName'=G},'balancerName')->
    object:register_read('balancerName'),
    G;
 %% localMonitor.abs:12
'get_val_internal'(#state{'mcl'=G},'mcl')->
    object:register_read('mcl'),
    G;
 %% localMonitor.abs:12
'get_val_internal'(#state{'baseInstanceN'=G},'baseInstanceN')->
    object:register_read('baseInstanceN'),
    G;
 %% localMonitor.abs:12
'get_val_internal'(#state{'mf'=G},'mf')->
    object:register_read('mf'),
    G;
 %% localMonitor.abs:12
'get_val_internal'(#state{'predictions'=G},'predictions')->
    object:register_read('predictions'),
    G;
 %% localMonitor.abs:13
'get_val_internal'(#state{'deplInstances'=G},'deplInstances')->
    object:register_read('deplInstances'),
    G;
 %% localMonitor.abs:14
'get_val_internal'(#state{'sw'=G},'sw')->
    object:register_read('sw'),
    G;
 %% localMonitor.abs:15
'get_val_internal'(#state{'k'=G},'k')->
    object:register_read('k'),
    G;
 %% localMonitor.abs:16
'get_val_internal'(#state{'kbig'=G},'kbig')->
    object:register_read('kbig'),
    G;
 %% localMonitor.abs:17
'get_val_internal'(#state{'i'=G},'i')->
    object:register_read('i'),
    G;
 %% localMonitor.abs:18
'get_val_internal'(#state{'reqs'=G},'reqs')->
    object:register_read('reqs'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% localMonitor.abs:12
'set_val_internal'(S,'balancer',V)->
    object:register_write('balancer'),
    S#state{'balancer'=V};
 %% localMonitor.abs:12
'set_val_internal'(S,'balancerName',V)->
    object:register_write('balancerName'),
    S#state{'balancerName'=V};
 %% localMonitor.abs:12
'set_val_internal'(S,'mcl',V)->
    object:register_write('mcl'),
    S#state{'mcl'=V};
 %% localMonitor.abs:12
'set_val_internal'(S,'baseInstanceN',V)->
    object:register_write('baseInstanceN'),
    S#state{'baseInstanceN'=V};
 %% localMonitor.abs:12
'set_val_internal'(S,'mf',V)->
    object:register_write('mf'),
    S#state{'mf'=V};
 %% localMonitor.abs:12
'set_val_internal'(S,'predictions',V)->
    object:register_write('predictions'),
    S#state{'predictions'=V};
 %% localMonitor.abs:13
'set_val_internal'(S,'deplInstances',V)->
    object:register_write('deplInstances'),
    S#state{'deplInstances'=V};
 %% localMonitor.abs:14
'set_val_internal'(S,'sw',V)->
    object:register_write('sw'),
    S#state{'sw'=V};
 %% localMonitor.abs:15
'set_val_internal'(S,'k',V)->
    object:register_write('k'),
    S#state{'k'=V};
 %% localMonitor.abs:16
'set_val_internal'(S,'kbig',V)->
    object:register_write('kbig'),
    S#state{'kbig'=V};
 %% localMonitor.abs:17
'set_val_internal'(S,'i',V)->
    object:register_write('i'),
    S#state{'i'=V};
 %% localMonitor.abs:18
'set_val_internal'(S,'reqs',V)->
    object:register_write('reqs'),
    S#state{'reqs'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'balancer', S#state.'balancer' }
        , { 'balancerName', S#state.'balancerName' }
        , { 'mcl', S#state.'mcl' }
        , { 'baseInstanceN', S#state.'baseInstanceN' }
        , { 'mf', S#state.'mf' }
        , { 'predictions', S#state.'predictions' }
        , { 'deplInstances', S#state.'deplInstances' }
        , { 'sw', S#state.'sw' }
        , { 'k', S#state.'k' }
        , { 'kbig', S#state.'kbig' }
        , { 'i', S#state.'i' }
        , { 'reqs', S#state.'reqs' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_balancer,P_balancerName,P_mcl,P_baseInstanceN,P_mf,P_predictions,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'balancer',P_balancer)),
    put(this, C:set_val_internal(get(this),'balancerName',P_balancerName)),
    put(this, C:set_val_internal(get(this),'mcl',P_mcl)),
    put(this, C:set_val_internal(get(this),'baseInstanceN',P_baseInstanceN)),
    put(this, C:set_val_internal(get(this),'mf',P_mf)),
    put(this, C:set_val_internal(get(this),'predictions',P_predictions)),
     %% localMonitor.abs:13--13
    put(this, C:set_val_internal(get(this),'deplInstances',C:get_val_internal(get(this), 'baseInstanceN'))),
     %% localMonitor.abs:14--14
     %% localMonitor.abs:15--15
    put(this, C:set_val_internal(get(this),'k',( rationals:mul(m_Param_funs:f_k(Cog,[O,DC| Stack]),C:get_val_internal(get(this), 'mf'))) )),
     %% localMonitor.abs:16--16
    put(this, C:set_val_internal(get(this),'kbig',( rationals:mul(m_Param_funs:f_kbig(Cog,[O,DC| Stack]),C:get_val_internal(get(this), 'mf'))) )),
     %% localMonitor.abs:17--17
    put(this, C:set_val_internal(get(this),'i',0)),
     %% localMonitor.abs:18--18
    put(this, C:set_val_internal(get(this),'reqs',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% localMonitor.abs:20--20
    put(this, C:set_val_internal(get(this), 'sw',object:new(cog:start(Cog,DC),class_LocalMonitor_ScalingWrapperImpl,[C:get_val_internal(get(this), 'balancer'),[]],Cog,[O,DC| Stack]))),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% localMonitor.abs:23
 %% localMonitor.abs:23
'm_printReqs'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% localMonitor.abs:23--23
        T_1 = builtin:println(Cog,iolist_to_binary([iolist_to_binary([C:get_val_internal(get(this), 'balancerName'), <<": "/utf8>>]), builtin:toString(Cog,C:get_val_internal(get(this), 'reqs'))])),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method printReqs and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% localMonitor.abs:25
 %% localMonitor.abs:25
'm_getTarget'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% localMonitor.abs:26--26
        put(vars, (get(vars))#{'max' => 0}),
         %% localMonitor.abs:27--27
        case m_ABS_StdLib_funs:f_isEmpty(Cog,C:get_val_internal(get(this), 'predictions'),[O,DC| Stack]) of
            true ->  %% localMonitor.abs:28--28
            put(vars, (get(vars))#{'max' := (fun() -> case C:get_val_internal(get(this), 'balancer') of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_get_workload'(Callee,[O,DC,Vars| Stack]),
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
                    Result=T:'m_get_workload'(Callee,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_get_workload',[[]],#task_info{method= <<"get_workload"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)()}),
             %% localMonitor.abs:29--29
            put(this, C:set_val_internal(get(this), 'reqs',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'reqs'),maps:get('max', get(vars)),[O,DC| Stack])));
            false ->          %% localMonitor.abs:31--31
        put(vars, (get(vars))#{'max' := m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'predictions'),C:get_val_internal(get(this), 'i'),[O,DC| Stack])}),
         %% localMonitor.abs:32--32
        put(this, C:set_val_internal(get(this), 'i',m_ABS_StdLib_funs:f_min(Cog,(m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'predictions'),[O,DC| Stack]) - 1) ,(C:get_val_internal(get(this), 'i') + 1) ,[O,DC| Stack])))
        end,
         %% localMonitor.abs:34--34
         rationals:rdiv(maps:get('max', get(vars)),10) 
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getTarget and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% localMonitor.abs:37
 %% localMonitor.abs:37
'm_check'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% localMonitor.abs:38--38
        put(vars, (get(vars))#{'max' => (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getTarget'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getTarget'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getTarget',[[]],#task_info{method= <<"getTarget"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% localMonitor.abs:39--39
        case (cmp:gt(( rationals:sub(maps:get('max', get(vars)),( rationals:sub(( rationals:mul(C:get_val_internal(get(this), 'mcl'),C:get_val_internal(get(this), 'deplInstances'))) ,C:get_val_internal(get(this), 'kbig'))) )) ,C:get_val_internal(get(this), 'k'))) or (cmp:gt(( rationals:sub(( rationals:sub(( rationals:mul(C:get_val_internal(get(this), 'mcl'),C:get_val_internal(get(this), 'deplInstances'))) ,C:get_val_internal(get(this), 'kbig'))) ,maps:get('max', get(vars)))) ,C:get_val_internal(get(this), 'k'))) of
            true ->  %% localMonitor.abs:40--40
            put(vars, (get(vars))#{'configInstances' => builtin:ceil(Cog,builtin:float(Cog, rationals:rdiv(( rationals:add(maps:get('max', get(vars)),C:get_val_internal(get(this), 'kbig'))) ,C:get_val_internal(get(this), 'mcl')) ))}),
             %% localMonitor.abs:41--41
            case cmp:gt(maps:get('configInstances', get(vars)),C:get_val_internal(get(this), 'deplInstances')) of
                true ->  %% localMonitor.abs:41--41
                T_1 = cog:create_task(C:get_val_internal(get(this), 'sw'),'m_deploy',[(maps:get('configInstances', get(vars)) - C:get_val_internal(get(this), 'deplInstances')) ,[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                T_1;
                false ->              %% localMonitor.abs:42--42
            case (cmp:lt(maps:get('configInstances', get(vars)),C:get_val_internal(get(this), 'deplInstances'))) and (cmp:ge(C:get_val_internal(get(this), 'deplInstances'),C:get_val_internal(get(this), 'baseInstanceN'))) of
                true ->  %% localMonitor.abs:42--42
                T_1 = cog:create_task(C:get_val_internal(get(this), 'sw'),'m_undeploy',[(C:get_val_internal(get(this), 'deplInstances') - maps:get('configInstances', get(vars))) ,[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                T_1;
                false ->             ok
            end
            end,
             %% localMonitor.abs:43--43
            put(this, C:set_val_internal(get(this), 'deplInstances',maps:get('configInstances', get(vars))));
            false ->         ok
        end,
         %% localMonitor.abs:45--45
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
                TempFuture = cog:create_task(Callee,'m_resetMetrics',[[]],#task_info{method= <<"resetMetrics"/utf8>>},Cog),
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
