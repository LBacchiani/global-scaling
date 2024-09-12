-module(class_Monitor_Monitor).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"MonitorInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Monitor_Monitor,'db'=null,'balancers'=null,'monitors'=null,'initialCost'=null,'time'=null}).
'init_internal'()->
    #state{}.

 %% monitor.abs:12
'get_val_internal'(#state{'db'=G},'db')->
    object:register_read('db'),
    G;
 %% monitor.abs:12
'get_val_internal'(#state{'balancers'=G},'balancers')->
    object:register_read('balancers'),
    G;
 %% monitor.abs:12
'get_val_internal'(#state{'monitors'=G},'monitors')->
    object:register_read('monitors'),
    G;
 %% monitor.abs:12
'get_val_internal'(#state{'initialCost'=G},'initialCost')->
    object:register_read('initialCost'),
    G;
 %% monitor.abs:13
'get_val_internal'(#state{'time'=G},'time')->
    object:register_read('time'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% monitor.abs:12
'set_val_internal'(S,'db',V)->
    object:register_write('db'),
    S#state{'db'=V};
 %% monitor.abs:12
'set_val_internal'(S,'balancers',V)->
    object:register_write('balancers'),
    S#state{'balancers'=V};
 %% monitor.abs:12
'set_val_internal'(S,'monitors',V)->
    object:register_write('monitors'),
    S#state{'monitors'=V};
 %% monitor.abs:12
'set_val_internal'(S,'initialCost',V)->
    object:register_write('initialCost'),
    S#state{'initialCost'=V};
 %% monitor.abs:13
'set_val_internal'(S,'time',V)->
    object:register_write('time'),
    S#state{'time'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'db', S#state.'db' }
        , { 'balancers', S#state.'balancers' }
        , { 'monitors', S#state.'monitors' }
        , { 'initialCost', S#state.'initialCost' }
        , { 'time', S#state.'time' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_db,P_balancers,P_monitors,P_initialCost,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'db',P_db)),
    put(this, C:set_val_internal(get(this),'balancers',P_balancers)),
    put(this, C:set_val_internal(get(this),'monitors',P_monitors)),
    put(this, C:set_val_internal(get(this),'initialCost',P_initialCost)),
     %% monitor.abs:13--13
    put(this, C:set_val_internal(get(this),'time',0)),
    gc:register_object(O),
    cog:create_task(O,'m_run',[[]],#task_info{method= <<"run"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% monitor.abs:15
 %% monitor.abs:15
'm_getInstances'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% monitor.abs:16--16
        put(vars, (get(vars))#{'res' => <<""/utf8>>}),
         %% monitor.abs:17--20
        put(vars, (get(vars))#{'tmp9089585' => C:get_val_internal(get(this), 'balancers')}),
         %% monitor.abs:17--20
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp9089585', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% monitor.abs:17--20
                put(vars, (get(vars))#{'b' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp9089585', get(vars)),[O,DC| Stack])}),
                 %% monitor.abs:17--20
                put(vars, (get(vars))#{'tmp9089585' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp9089585', get(vars)),[O,DC| Stack])}),
                 %% monitor.abs:18--18
                put(vars, (get(vars))#{'toAdd' => (fun() -> case maps:get('b', get(vars)) of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getInstanceNumberDescription'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getInstanceNumberDescription'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getInstanceNumberDescription',[[]],#task_info{method= <<"getInstanceNumberDescription"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:19--19
                put(vars, (get(vars))#{'res' := iolist_to_binary([maps:get('res', get(vars)), maps:get('toAdd', get(vars))])}),
            Loop([])  end end)
        ([]),
         %% monitor.abs:21--21
        maps:get('res', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getInstances and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% monitor.abs:24
 %% monitor.abs:24
'm_checkBalancers'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% monitor.abs:24--24
        put(vars, (get(vars))#{'tmp1530563562' => C:get_val_internal(get(this), 'monitors')}),
         %% monitor.abs:24--24
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1530563562', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% monitor.abs:24--24
                put(vars, (get(vars))#{'monitor' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1530563562', get(vars)),[O,DC| Stack])}),
                 %% monitor.abs:24--24
                put(vars, (get(vars))#{'tmp1530563562' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1530563562', get(vars)),[O,DC| Stack])}),
                 %% monitor.abs:24--24
                T_1 = (fun() -> case maps:get('monitor', get(vars)) of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_check'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_check'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_check',[[]],#task_info{method= <<"check"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_1,
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method checkBalancers and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% monitor.abs:26
 %% monitor.abs:26
'm_printReqs'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% monitor.abs:26--26
        put(vars, (get(vars))#{'tmp1805704378' => C:get_val_internal(get(this), 'monitors')}),
         %% monitor.abs:26--26
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1805704378', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% monitor.abs:26--26
                put(vars, (get(vars))#{'monitor' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1805704378', get(vars)),[O,DC| Stack])}),
                 %% monitor.abs:26--26
                put(vars, (get(vars))#{'tmp1805704378' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1805704378', get(vars)),[O,DC| Stack])}),
                 %% monitor.abs:26--26
                T_1 = (fun() -> case maps:get('monitor', get(vars)) of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_printReqs'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_printReqs'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_printReqs',[[]],#task_info{method= <<"printReqs"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_1,
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method printReqs and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% monitor.abs:28
 %% monitor.abs:28
'm_getTotalInstances'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% monitor.abs:29--29
        put(vars, (get(vars))#{'total' => 0}),
         %% monitor.abs:30--33
        put(vars, (get(vars))#{'tmp1836544723' => C:get_val_internal(get(this), 'balancers')}),
         %% monitor.abs:30--33
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1836544723', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% monitor.abs:30--33
                put(vars, (get(vars))#{'b' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1836544723', get(vars)),[O,DC| Stack])}),
                 %% monitor.abs:30--33
                put(vars, (get(vars))#{'tmp1836544723' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1836544723', get(vars)),[O,DC| Stack])}),
                 %% monitor.abs:31--31
                put(vars, (get(vars))#{'n' => (fun() -> case maps:get('b', get(vars)) of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getInstancesNumber'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getInstancesNumber'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getInstancesNumber',[[]],#task_info{method= <<"getInstancesNumber"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:32--32
                put(vars, (get(vars))#{'total' := (maps:get('total', get(vars)) + maps:get('n', get(vars))) }),
            Loop([])  end end)
        ([]),
         %% monitor.abs:34--34
        maps:get('total', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getTotalInstances and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% monitor.abs:37
 %% monitor.abs:37
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% monitor.abs:38--38
        T_1 = builtin:println(Cog,<<"0 0.0 #curr_avg: 0.0 TOT: 0 COMP: 0 REJ: 0 INST: 8 VS1 MP1 AM1 MA1 IA1"/utf8>>),
        T_1,
         %% monitor.abs:39--39
        []=(fun Loop ([])->
            case cmp:lt(C:get_val_internal(get(this), 'time'),200) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% monitor.abs:40--40
                cog:suspend_current_task_for_duration(Cog,m_Param_funs:f_monitoringWin(Cog,[O,DC| Stack]),m_Param_funs:f_monitoringWin(Cog,[O,DC| Stack]),[O,DC| Stack]),
                ok,
                 %% monitor.abs:41--41
                put(vars, (get(vars))#{'inbound_workload' => (fun() -> case C:get_val_internal(get(this), 'db') of
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
                        TempFuture = cog:create_task(Callee,'m_returninbound_workload',[[]],#task_info{method= <<"returninbound_workload"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:42--42
                put(vars, (get(vars))#{'measured_avg' =>  rationals:rdiv(maps:get('inbound_workload', get(vars)),10) }),
                 %% monitor.abs:43--43
                put(vars, (get(vars))#{'averageAnalysisTime' => (fun() -> case C:get_val_internal(get(this), 'db') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_returnAverageAnalysisTime'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_returnAverageAnalysisTime'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_returnAverageAnalysisTime',[[]],#task_info{method= <<"returnAverageAnalysisTime"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:44--44
                put(vars, (get(vars))#{'completed' => (fun() -> case C:get_val_internal(get(this), 'db') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_messageCompleted'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_messageCompleted'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_messageCompleted',[[]],#task_info{method= <<"messageCompleted"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:45--45
                put(vars, (get(vars))#{'rejected' => (fun() -> case C:get_val_internal(get(this), 'db') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_rejectedMessages'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_rejectedMessages'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_rejectedMessages',[[]],#task_info{method= <<"rejectedMessages"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:46--46
                put(vars, (get(vars))#{'totalInstances' => (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getTotalInstances'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getTotalInstances'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getTotalInstances',[[]],#task_info{method= <<"getTotalInstances"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:47--47
                put(vars, (get(vars))#{'instances' => (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getInstances'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getInstances'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getInstances',[[]],#task_info{method= <<"getInstances"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:48--48
                put(this, C:set_val_internal(get(this), 'time',(C:get_val_internal(get(this), 'time') + 10) )),
                 %% monitor.abs:49--49
                put(vars, (get(vars))#{'toPrint' => iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([builtin:toString(Cog,C:get_val_internal(get(this), 'time')), <<"  "/utf8>>]), builtin:toString(Cog,(builtin:float(Cog, rationals:rdiv(100,3) ) * maps:get('averageAnalysisTime', get(vars))) )]), <<" #curr_avg: "/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('measured_avg', get(vars))))]), <<" TOT: "/utf8>>]), builtin:toString(Cog,maps:get('inbound_workload', get(vars)))]), <<" COMP: "/utf8>>]), builtin:toString(Cog,maps:get('completed', get(vars)))]), <<" REJ: "/utf8>>]), builtin:toString(Cog,maps:get('rejected', get(vars)))]), <<" INST: "/utf8>>]), builtin:toString(Cog,(maps:get('totalInstances', get(vars)) + 3) )]), <<" "/utf8>>]), maps:get('instances', get(vars))])}),
                 %% monitor.abs:50--50
                T_2 = (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_checkBalancers'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_checkBalancers'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_checkBalancers',[[]],#task_info{method= <<"checkBalancers"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_2,
                 %% monitor.abs:51--51
                T_3 = (fun() -> case C:get_val_internal(get(this), 'db') of
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
                T_3,
                 %% monitor.abs:52--52
                T_4 = builtin:println(Cog,maps:get('toPrint', get(vars))),
                T_4,
            Loop([])  end end)
        ([]),
         %% monitor.abs:54--54
        case not (m_Param_funs:f_oracleScaling(Cog,[O,DC| Stack])) of
            true ->  %% monitor.abs:54--54
            T_2 = (fun() -> case O of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_printReqs'(Callee,[O,DC,Vars| Stack]),
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
                    Result=T:'m_printReqs'(Callee,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_printReqs',[[]],#task_info{method= <<"printReqs"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_2;
            false ->         ok
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method run and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
