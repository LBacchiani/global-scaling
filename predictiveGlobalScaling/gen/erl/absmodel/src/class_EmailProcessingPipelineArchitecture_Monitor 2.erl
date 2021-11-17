-module(class_EmailProcessingPipelineArchitecture_Monitor).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"MonitorInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_Monitor,'scaler'=null,'db'=null,'windowDim'=null,'initialCost'=null,'initInstancesNumber'=null,'kbig'=null,'k'=null,'monitoringWindowDimension'=null,'time'=null,'inbound_workload_list'=null}).
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
 %% code.abs:874
'get_val_internal'(#state{'inbound_workload_list'=G},'inbound_workload_list')->
    object:register_read('inbound_workload_list'),
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
    S#state{'time'=V};
 %% code.abs:874
'set_val_internal'(S,'inbound_workload_list',V)->
    object:register_write('inbound_workload_list'),
    S#state{'inbound_workload_list'=V}.

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
        , { 'inbound_workload_list', S#state.'inbound_workload_list' }
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
     %% code.abs:874--888
    put(this, C:set_val_internal(get(this),'inbound_workload_list',m_ABS_StdLib_funs:f_list(Cog,[ 12, 0, 62, 97, 37, 57, 30, 65, 55, 85, 27, 57, 47, 57, 52, 35, 72, 542, 505, 510, 540, 550, 540, 550, 592, 597, 600, 652, 650, 650, 640, 620, 607, 580, 577, 592, 595, 590, 590, 572, 575, 577, 575, 555, 555, 565, 567, 580, 605, 625, 625, 732, 732, 730, 750, 750, 712, 747, 745, 727, 717, 722, 727, 737, 730, 737, 740, 742, 740, 722, 687, 580, 610, 610, 597, 587, 552, 540, 540, 527, 540, 550, 530, 545, 540, 542, 515, 520, 517, 515, 517, 490, 457, 432, 432, 422, 407, 382, 382, 382, 422, 435, 400, 362, 365, 342, 340, 322, 320, 317, 305, 302, 310, 312, 310, 310, 305, 300, 290, 300, 302, 290, 297, 290, 300, 287, 297, 312, 310, 307, 307, 325, 302, 312, 312, 320, 307, 290, 275, 267, 265, 265, 260, 260, 252, 242, 222, 225, 245, 245, 247, 245, 230, 215, 175, 180, 180, 182, 157, 172, 162, 122, 115, 90, 77, 62, 52, 10, 35, 85, 60, 140, 142, 50, 107, 22, 92, 75, 255, 470, 427, 452, 440, 460, 472, 497, 477, 490, 470, 410] ,[O,DC| Stack]))),
    cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
    cog:add_task(Cog,active_object_task,null,O,[],#task_info{event=#event{type=schedule, local_id=run}, method= <<"run"/utf8>>,this=O,destiny=null},[O,DC| Stack]),
    cog:task_is_runnable(Cog,self()),
    task:wait_for_token(Cog,[O,DC| Stack]),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:912
 %% code.abs:912
'm_sum'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_n_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'n' => V_n_0 }),
    try
         %% code.abs:913--913
        put(vars, (get(vars))#{'i' => (C:get_val_internal(get(this), 'time') - maps:get('n', get(vars))) }),
         %% code.abs:914--914
        put(vars, (get(vars))#{'sum' => 0}),
         %% code.abs:915--915
        []=(fun Loop ([])->
            case cmp:lt(maps:get('i', get(vars)),C:get_val_internal(get(this), 'time')) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:916--916
                case cmp:lt(maps:get('i', get(vars)),m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'inbound_workload_list'),[O,DC| Stack])) of
                    true ->  %% code.abs:916--916
                    put(vars, (get(vars))#{'sum' := (maps:get('sum', get(vars)) + m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'inbound_workload_list'),maps:get('i', get(vars)),[O,DC| Stack])) });
                    false ->                 ok
                end,
                 %% code.abs:917--917
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% code.abs:919--919
        maps:get('sum', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method sum and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:923
 %% code.abs:923
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:924--924
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
                 %% code.abs:926--926
                cog:suspend_current_task_for_duration(Cog,C:get_val_internal(get(this), 'monitoringWindowDimension'),C:get_val_internal(get(this), 'monitoringWindowDimension'),[O,DC| Stack]),
                ok,
                 %% code.abs:927--927
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
                 %% code.abs:928--928
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
                 %% code.abs:929--929
                put(vars, (get(vars))#{'completed' :=  rationals:rdiv(maps:get('completed', get(vars)),10) }),
                 %% code.abs:930--930
                put(vars, (get(vars))#{'y_true' => (fun() -> case C:get_val_internal(get(this), 'db') of
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
                 %% code.abs:931--931
                put(vars, (get(vars))#{'y_true' :=  rationals:rdiv(maps:get('y_true', get(vars)),10) }),
                 %% code.abs:932--932
                put(vars, (get(vars))#{'y_pred' => (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_sum'(Callee,10,[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_n = 10,
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_sum'(Callee, V_n,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_sum',[10,[]],#task_info{method= <<"sum"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:933--933
                put(vars, (get(vars))#{'y_pred' :=  rationals:rdiv(maps:get('y_pred', get(vars)),10) }),
                 %% code.abs:934--934
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
                 %% code.abs:935--935
                put(vars, (get(vars))#{'pending' :=  rationals:rdiv(maps:get('pending', get(vars)),10) }),
                 %% code.abs:936--936
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
                 %% code.abs:937--937
                put(vars, (get(vars))#{'rejected' :=  rationals:rdiv(maps:get('rejected', get(vars)),10) }),
                 %% code.abs:939--939
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
                 %% code.abs:940--940
                put(vars, (get(vars))#{'nInst' := ( rationals:add(maps:get('nInst', get(vars)),C:get_val_internal(get(this), 'initInstancesNumber'))) }),
                 %% code.abs:941--941
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
                 %% code.abs:942--942
                put(vars, (get(vars))#{'toPrint' => iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([builtin:toString(Cog,C:get_val_internal(get(this), 'time')), <<"  "/utf8>>]), builtin:toString(Cog,(builtin:float(Cog, rationals:rdiv(100,3) ) * maps:get('averageAnalysisTime', get(vars))) )]), <<" #y_true:"/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('y_true', get(vars))))]), <<" y_pred: "/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('y_pred', get(vars))))]), <<" COMPLETED:"/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('completed', get(vars))))]), <<" REJECTED: "/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('rejected', get(vars))))]), <<" SUPP: "/utf8>>]), builtin:toString(Cog,maps:get('mcl', get(vars)))]), <<" INST: "/utf8>>]), builtin:toString(Cog,maps:get('nInst', get(vars)))])}),
                 %% code.abs:943--943
                case (cmp:gt(( rationals:sub(maps:get('y_pred', get(vars)),( rationals:sub(maps:get('mcl', get(vars)),C:get_val_internal(get(this), 'kbig'))) )) ,C:get_val_internal(get(this), 'k'))) or (cmp:gt(( rationals:sub(( rationals:sub(maps:get('mcl', get(vars)),C:get_val_internal(get(this), 'kbig'))) ,maps:get('y_pred', get(vars)))) ,C:get_val_internal(get(this), 'k'))) of
                    true ->  %% code.abs:943--943
                    T_1 = (fun() -> case C:get_val_internal(get(this), 'scaler') of
                        null -> throw(dataNullPointerException);
                        Callee=#object{oid=Oid,cog=Cog} ->
                            %% self-call
                            Vars=get(vars),
                            Result=C:'m_scale'(Callee,maps:get('y_pred', get(vars)),[O,DC,Vars| Stack]),
                            put(vars, Vars),
                            Result;
                        Callee=#object{oid=ObjRef,cog=Cog} ->
                            %% cog-local call
                            V_inbound_workload = maps:get('y_pred', get(vars)),
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
                            TempFuture = cog:create_task(Callee,'m_scale',[maps:get('y_pred', get(vars)),[]],#task_info{method= <<"scale"/utf8>>},Cog, true),
                            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                    end end)(),
                    T_1;
                    false ->                 ok
                end,
                 %% code.abs:944--944
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
                 %% code.abs:945--945
                put(vars, (get(vars))#{'toPrint' := iolist_to_binary([maps:get('toPrint', get(vars)), maps:get('scalingAct', get(vars))])}),
                 %% code.abs:946--946
                put(this, C:set_val_internal(get(this), 'time',(C:get_val_internal(get(this), 'time') + 10) )),
                 %% code.abs:947--947
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
                 %% code.abs:948--948
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
