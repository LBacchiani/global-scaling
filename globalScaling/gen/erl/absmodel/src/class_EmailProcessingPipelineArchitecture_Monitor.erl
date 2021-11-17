-module(class_EmailProcessingPipelineArchitecture_Monitor).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"MonitorInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_Monitor,'scaler'=null,'db'=null,'windowDim'=null,'initialCost'=null,'initInstancesNumber'=null,'kbig'=null,'k'=null,'monitoringWindowDimension'=null,'time'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:870
'get_val_internal'(#state{'scaler'=G},'scaler')->
    object:register_read('scaler'),
    G;
 %% code.abs:870
'get_val_internal'(#state{'db'=G},'db')->
    object:register_read('db'),
    G;
 %% code.abs:870
'get_val_internal'(#state{'windowDim'=G},'windowDim')->
    object:register_read('windowDim'),
    G;
 %% code.abs:870
'get_val_internal'(#state{'initialCost'=G},'initialCost')->
    object:register_read('initialCost'),
    G;
 %% code.abs:870
'get_val_internal'(#state{'initInstancesNumber'=G},'initInstancesNumber')->
    object:register_read('initInstancesNumber'),
    G;
 %% code.abs:870
'get_val_internal'(#state{'kbig'=G},'kbig')->
    object:register_read('kbig'),
    G;
 %% code.abs:870
'get_val_internal'(#state{'k'=G},'k')->
    object:register_read('k'),
    G;
 %% code.abs:872
'get_val_internal'(#state{'monitoringWindowDimension'=G},'monitoringWindowDimension')->
    object:register_read('monitoringWindowDimension'),
    G;
 %% code.abs:873
'get_val_internal'(#state{'time'=G},'time')->
    object:register_read('time'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:870
'set_val_internal'(S,'scaler',V)->
    object:register_write('scaler'),
    S#state{'scaler'=V};
 %% code.abs:870
'set_val_internal'(S,'db',V)->
    object:register_write('db'),
    S#state{'db'=V};
 %% code.abs:870
'set_val_internal'(S,'windowDim',V)->
    object:register_write('windowDim'),
    S#state{'windowDim'=V};
 %% code.abs:870
'set_val_internal'(S,'initialCost',V)->
    object:register_write('initialCost'),
    S#state{'initialCost'=V};
 %% code.abs:870
'set_val_internal'(S,'initInstancesNumber',V)->
    object:register_write('initInstancesNumber'),
    S#state{'initInstancesNumber'=V};
 %% code.abs:870
'set_val_internal'(S,'kbig',V)->
    object:register_write('kbig'),
    S#state{'kbig'=V};
 %% code.abs:870
'set_val_internal'(S,'k',V)->
    object:register_write('k'),
    S#state{'k'=V};
 %% code.abs:872
'set_val_internal'(S,'monitoringWindowDimension',V)->
    object:register_write('monitoringWindowDimension'),
    S#state{'monitoringWindowDimension'=V};
 %% code.abs:873
'set_val_internal'(S,'time',V)->
    object:register_write('time'),
    S#state{'time'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'scaler', S#state.'scaler' }
        , { 'db', S#state.'db' }
        , { 'windowDim', S#state.'windowDim' }
        , { 'initialCost', S#state.'initialCost' }
        , { 'initInstancesNumber', S#state.'initInstancesNumber' }
        , { 'kbig', S#state.'kbig' }
        , { 'k', S#state.'k' }
        , { 'monitoringWindowDimension', S#state.'monitoringWindowDimension' }
        , { 'time', S#state.'time' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_scaler,P_db,P_windowDim,P_initialCost,P_initInstancesNumber,P_kbig,P_k,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'scaler',P_scaler)),
    put(this, C:set_val_internal(get(this),'db',P_db)),
    put(this, C:set_val_internal(get(this),'windowDim',P_windowDim)),
    put(this, C:set_val_internal(get(this),'initialCost',P_initialCost)),
    put(this, C:set_val_internal(get(this),'initInstancesNumber',P_initInstancesNumber)),
    put(this, C:set_val_internal(get(this),'kbig',P_kbig)),
    put(this, C:set_val_internal(get(this),'k',P_k)),
     %% code.abs:872--872
    put(this, C:set_val_internal(get(this),'monitoringWindowDimension',C:get_val_internal(get(this), 'windowDim'))),
     %% code.abs:873--873
    put(this, C:set_val_internal(get(this),'time',10)),
    cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
    cog:add_task(Cog,active_object_task,null,O,[],#task_info{event=#event{type=schedule, local_id=run}, method= <<"run"/utf8>>,this=O,destiny=null},[O,DC| Stack]),
    cog:task_is_runnable(Cog,self()),
    task:wait_for_token(Cog,[O,DC| Stack]),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:897
 %% code.abs:897
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:898--898
        []=(fun Loop ([])->
            case true of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:900--900
                cog:suspend_current_task_for_duration(Cog,C:get_val_internal(get(this), 'monitoringWindowDimension'),C:get_val_internal(get(this), 'monitoringWindowDimension'),[O,DC| Stack]),
                ok,
                 %% code.abs:901--901
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
                        TempFuture = cog:create_task(Callee,'m_returnAverageAnalysisTime',[[]],#task_info{method= <<"returnAverageAnalysisTime"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:902--902
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
                        TempFuture = cog:create_task(Callee,'m_messageCompleted',[[]],#task_info{method= <<"messageCompleted"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:903--903
                put(vars, (get(vars))#{'completed' :=  rationals:rdiv(maps:get('completed', get(vars)),10) }),
                 %% code.abs:904--904
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
                        TempFuture = cog:create_task(Callee,'m_returninbound_workload',[[]],#task_info{method= <<"returninbound_workload"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:905--905
                put(vars, (get(vars))#{'inbound_workload' :=  rationals:rdiv(maps:get('inbound_workload', get(vars)),10) }),
                 %% code.abs:906--906
                put(vars, (get(vars))#{'pending' => (fun() -> case C:get_val_internal(get(this), 'db') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_pendingMessages'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_pendingMessages'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_pendingMessages',[[]],#task_info{method= <<"pendingMessages"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:907--907
                put(vars, (get(vars))#{'pending' :=  rationals:rdiv(maps:get('pending', get(vars)),10) }),
                 %% code.abs:908--908
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
                        TempFuture = cog:create_task(Callee,'m_rejectedMessages',[[]],#task_info{method= <<"rejectedMessages"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:909--909
                put(vars, (get(vars))#{'rejected' :=  rationals:rdiv(maps:get('rejected', get(vars)),10) }),
                 %% code.abs:911--911
                put(vars, (get(vars))#{'nInst' => (fun() -> case C:get_val_internal(get(this), 'scaler') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_computeInstanceNumber'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_computeInstanceNumber'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_computeInstanceNumber',[[]],#task_info{method= <<"computeInstanceNumber"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:912--912
                put(vars, (get(vars))#{'nInst' := ( rationals:add(maps:get('nInst', get(vars)),C:get_val_internal(get(this), 'initInstancesNumber'))) }),
                 %% code.abs:913--913
                put(vars, (get(vars))#{'mcl' => (fun() -> case C:get_val_internal(get(this), 'scaler') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getSystemMCL'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getSystemMCL'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getSystemMCL',[[]],#task_info{method= <<"getSystemMCL"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:914--914
                put(vars, (get(vars))#{'toPrint' => iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([builtin:toString(Cog,C:get_val_internal(get(this), 'time')), <<"  "/utf8>>]), builtin:toString(Cog,(builtin:float(Cog, rationals:rdiv(100,3) ) * maps:get('averageAnalysisTime', get(vars))) )]), <<" #MSG:"/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('inbound_workload', get(vars))))]), <<" COMPLETED:"/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('completed', get(vars))))]), <<" REJECTED: "/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('rejected', get(vars))))]), <<" SUPP: "/utf8>>]), builtin:toString(Cog,maps:get('mcl', get(vars)))]), <<" INST: "/utf8>>]), builtin:toString(Cog,maps:get('nInst', get(vars)))])}),
                 %% code.abs:915--915
                case (cmp:gt(( rationals:sub(maps:get('inbound_workload', get(vars)),( rationals:sub(maps:get('mcl', get(vars)),C:get_val_internal(get(this), 'kbig'))) )) ,C:get_val_internal(get(this), 'k'))) or (cmp:gt(( rationals:sub(( rationals:sub(maps:get('mcl', get(vars)),C:get_val_internal(get(this), 'kbig'))) ,maps:get('inbound_workload', get(vars)))) ,C:get_val_internal(get(this), 'k'))) of
                    true ->  %% code.abs:915--915
                    T_1 = (fun() -> case C:get_val_internal(get(this), 'scaler') of
                        null -> throw(dataNullPointerException);
                        Callee=#object{oid=Oid,cog=Cog} ->
                            %% self-call
                            Vars=get(vars),
                            Result=C:'m_scale'(Callee,maps:get('inbound_workload', get(vars)),[O,DC,Vars| Stack]),
                            put(vars, Vars),
                            Result;
                        Callee=#object{oid=ObjRef,cog=Cog} ->
                            %% cog-local call
                            V_inbound_workload = maps:get('inbound_workload', get(vars)),
                            State=get(this),
                            Vars=get(vars),
                            cog:object_state_changed(Cog, O, State),
                            put(this,cog:get_object_state(Callee#object.cog, Callee)),
                            put(task_info,(get(task_info))#task_info{this=Callee}),
                            T=object:get_class_from_state(get(this)), % it's the callee state already
                            Result=T:'m_scale'(Callee, V_inbound_workload,[O,DC,Vars,State| Stack]),
                            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                            put(task_info,(get(task_info))#task_info{this=O}),
                            put(this, cog:get_object_state(Cog, O)),
                            put(vars, Vars),
                            Result;
                        Callee ->
                            %% remote call
                            TempFuture = cog:create_task(Callee,'m_scale',[maps:get('inbound_workload', get(vars)),[]],#task_info{method= <<"scale"/utf8>>},Cog, true),
                            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                    end end)(),
                    T_1;
                    false ->                 ok
                end,
                 %% code.abs:916--916
                put(vars, (get(vars))#{'scalingAct' => (fun() -> case C:get_val_internal(get(this), 'scaler') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getScalingActions'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getScalingActions'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getScalingActions',[[]],#task_info{method= <<"getScalingActions"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:917--917
                put(vars, (get(vars))#{'toPrint' := iolist_to_binary([maps:get('toPrint', get(vars)), maps:get('scalingAct', get(vars))])}),
                 %% code.abs:918--918
                put(this, C:set_val_internal(get(this), 'time',(C:get_val_internal(get(this), 'time') + 10) )),
                 %% code.abs:919--919
                T_2 = (fun() -> case C:get_val_internal(get(this), 'db') of
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
                 %% code.abs:920--920
                T_3 = builtin:println(Cog,maps:get('toPrint', get(vars))),
                T_3,
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method run and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
