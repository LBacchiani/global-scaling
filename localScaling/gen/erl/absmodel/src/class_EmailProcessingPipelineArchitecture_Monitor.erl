-module(class_EmailProcessingPipelineArchitecture_Monitor).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"MonitorInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_Monitor,'db'=null,'balancers'=null,'monitors'=null,'windowDim'=null,'initialCost'=null,'monitoringWindowDimension'=null,'i'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:1199
'get_val_internal'(#state{'db'=G},'db')->
    G;
 %% code.abs:1199
'get_val_internal'(#state{'balancers'=G},'balancers')->
    G;
 %% code.abs:1199
'get_val_internal'(#state{'monitors'=G},'monitors')->
    G;
 %% code.abs:1199
'get_val_internal'(#state{'windowDim'=G},'windowDim')->
    G;
 %% code.abs:1199
'get_val_internal'(#state{'initialCost'=G},'initialCost')->
    G;
 %% code.abs:1201
'get_val_internal'(#state{'monitoringWindowDimension'=G},'monitoringWindowDimension')->
    G;
 %% code.abs:1202
'get_val_internal'(#state{'i'=G},'i')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:1199
'set_val_internal'(S,'db',V)->
    S#state{'db'=V};
 %% code.abs:1199
'set_val_internal'(S,'balancers',V)->
    S#state{'balancers'=V};
 %% code.abs:1199
'set_val_internal'(S,'monitors',V)->
    S#state{'monitors'=V};
 %% code.abs:1199
'set_val_internal'(S,'windowDim',V)->
    S#state{'windowDim'=V};
 %% code.abs:1199
'set_val_internal'(S,'initialCost',V)->
    S#state{'initialCost'=V};
 %% code.abs:1201
'set_val_internal'(S,'monitoringWindowDimension',V)->
    S#state{'monitoringWindowDimension'=V};
 %% code.abs:1202
'set_val_internal'(S,'i',V)->
    S#state{'i'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'db', S#state.'db' }
        , { 'balancers', S#state.'balancers' }
        , { 'monitors', S#state.'monitors' }
        , { 'windowDim', S#state.'windowDim' }
        , { 'initialCost', S#state.'initialCost' }
        , { 'monitoringWindowDimension', S#state.'monitoringWindowDimension' }
        , { 'i', S#state.'i' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_db,P_balancers,P_monitors,P_windowDim,P_initialCost,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'db',P_db)),
    put(this, C:set_val_internal(get(this),'balancers',P_balancers)),
    put(this, C:set_val_internal(get(this),'monitors',P_monitors)),
    put(this, C:set_val_internal(get(this),'windowDim',P_windowDim)),
    put(this, C:set_val_internal(get(this),'initialCost',P_initialCost)),
     %% code.abs:1201--1201
    put(this, C:set_val_internal(get(this),'monitoringWindowDimension',C:get_val_internal(get(this), 'windowDim'))),
     %% code.abs:1202--1202
    put(this, C:set_val_internal(get(this),'i',10)),
    cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
    cog:add_task(Cog,active_object_task,null,O,[],#task_info{event=#event{type=schedule, local_id=run}, method= <<"run"/utf8>>,this=O,destiny=null},[O,DC| Stack]),
    cog:task_is_runnable(Cog,self()),
    task:wait_for_token(Cog,[O,DC| Stack]),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:1204
 %% code.abs:1204
'm_computeCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1205--1205
        put(vars, (get(vars))#{'totalCost' => 0}),
         %% code.abs:1206--1209
        put(vars, (get(vars))#{'tmp2056411844' => C:get_val_internal(get(this), 'balancers')}),
         %% code.abs:1206--1209
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp2056411844', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:1206--1209
                put(vars, (get(vars))#{'b' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp2056411844', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1206--1209
                put(vars, (get(vars))#{'tmp2056411844' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp2056411844', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1207--1207
                put(vars, (get(vars))#{'cost' => (fun() -> case maps:get('b', get(vars)) of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getCost'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getCost'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getCost',[[]],#task_info{method= <<"getCost"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:1208--1208
                put(vars, (get(vars))#{'totalCost' := ( rationals:add(maps:get('totalCost', get(vars)),maps:get('cost', get(vars)))) }),
            Loop([])  end end)
        ([]),
         %% code.abs:1210--1210
        maps:get('totalCost', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method computeCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1213
 %% code.abs:1213
'm_getInstances'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1214--1214
        put(vars, (get(vars))#{'res' => <<""/utf8>>}),
         %% code.abs:1215--1218
        put(vars, (get(vars))#{'tmp990468141' => C:get_val_internal(get(this), 'balancers')}),
         %% code.abs:1215--1218
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp990468141', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:1215--1218
                put(vars, (get(vars))#{'b' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp990468141', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1215--1218
                put(vars, (get(vars))#{'tmp990468141' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp990468141', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1216--1216
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
                        TempFuture = cog:create_task(Callee,'m_getInstanceNumberDescription',[[]],#task_info{method= <<"getInstanceNumberDescription"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:1217--1217
                put(vars, (get(vars))#{'res' := iolist_to_binary([maps:get('res', get(vars)), maps:get('toAdd', get(vars))])}),
            Loop([])  end end)
        ([]),
         %% code.abs:1219--1219
        maps:get('res', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getInstances and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1222
 %% code.abs:1222
'm_checkBalancers'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1222--1222
        put(vars, (get(vars))#{'tmp704063109' => C:get_val_internal(get(this), 'monitors')}),
         %% code.abs:1222--1222
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp704063109', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:1222--1222
                put(vars, (get(vars))#{'monitor' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp704063109', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1222--1222
                put(vars, (get(vars))#{'tmp704063109' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp704063109', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1222--1222
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
                        TempFuture = cog:create_task(Callee,'m_check',[[]],#task_info{method= <<"check"/utf8>>},Cog, true),
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
 %% code.abs:1224
 %% code.abs:1224
'm_getTotalInstances'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1225--1225
        put(vars, (get(vars))#{'total' => 0}),
         %% code.abs:1226--1229
        put(vars, (get(vars))#{'tmp1334085871' => C:get_val_internal(get(this), 'balancers')}),
         %% code.abs:1226--1229
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1334085871', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:1226--1229
                put(vars, (get(vars))#{'b' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1334085871', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1226--1229
                put(vars, (get(vars))#{'tmp1334085871' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1334085871', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1227--1227
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
                        TempFuture = cog:create_task(Callee,'m_getInstancesNumber',[[]],#task_info{method= <<"getInstancesNumber"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:1228--1228
                put(vars, (get(vars))#{'total' := (maps:get('total', get(vars)) + maps:get('n', get(vars))) }),
            Loop([])  end end)
        ([]),
         %% code.abs:1230--1230
        maps:get('total', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getTotalInstances and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1234
 %% code.abs:1234
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1235--1235
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
                 %% code.abs:1237--1237
                cog:suspend_current_task_for_duration(Cog,C:get_val_internal(get(this), 'monitoringWindowDimension'),C:get_val_internal(get(this), 'monitoringWindowDimension'),[O,DC| Stack]),
                ok,
                 %% code.abs:1238--1238
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
                 %% code.abs:1239--1239
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
                 %% code.abs:1240--1240
                put(vars, (get(vars))#{'completed' :=  rationals:rdiv(maps:get('completed', get(vars)),10) }),
                 %% code.abs:1241--1241
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
                 %% code.abs:1242--1242
                put(vars, (get(vars))#{'inbound_workload' :=  rationals:rdiv(maps:get('inbound_workload', get(vars)),10) }),
                 %% code.abs:1243--1243
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
                 %% code.abs:1244--1244
                put(vars, (get(vars))#{'rejected' :=  rationals:rdiv(maps:get('rejected', get(vars)),10) }),
                 %% code.abs:1245--1245
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
                        TempFuture = cog:create_task(Callee,'m_getTotalInstances',[[]],#task_info{method= <<"getTotalInstances"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:1246--1246
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
                        TempFuture = cog:create_task(Callee,'m_getInstances',[[]],#task_info{method= <<"getInstances"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:1247--1247
                put(vars, (get(vars))#{'totalCost' => (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_computeCost'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_computeCost'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_computeCost',[[]],#task_info{method= <<"computeCost"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:1248--1248
                put(vars, (get(vars))#{'toPrint' => iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([builtin:toString(Cog,C:get_val_internal(get(this), 'i')), <<"  "/utf8>>]), builtin:toString(Cog,(builtin:float(Cog, rationals:rdiv(100,3) ) * maps:get('averageAnalysisTime', get(vars))) )]), <<" #MSG:"/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('inbound_workload', get(vars))))]), <<" COMPLETED:"/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('completed', get(vars))))]), <<" REJECTED: "/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('rejected', get(vars))))]), <<" COST: "/utf8>>]), builtin:toString(Cog,builtin:float(Cog, rationals:rdiv(( rationals:add(maps:get('totalCost', get(vars)),C:get_val_internal(get(this), 'initialCost'))) ,1000) ))]), <<" INST: "/utf8>>]), builtin:toString(Cog,(maps:get('totalInstances', get(vars)) + 3) )]), <<" "/utf8>>]), maps:get('instances', get(vars))])}),
                 %% code.abs:1249--1249
                T_1 = (fun() -> case O of
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
                        TempFuture = cog:create_task(Callee,'m_checkBalancers',[[]],#task_info{method= <<"checkBalancers"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_1,
                 %% code.abs:1250--1250
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
                 %% code.abs:1251--1251
                T_3 = builtin:println(Cog,maps:get('toPrint', get(vars))),
                T_3,
                 %% code.abs:1252--1252
                put(this, C:set_val_internal(get(this), 'i',(C:get_val_internal(get(this), 'i') + 10) )),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method run and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
