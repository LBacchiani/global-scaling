-module(class_ABS_DC_CloudProvider).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"CloudProviderForDeploymentComponent">>, <<"Object">>, <<"CloudProvider">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_ABS_DC_CloudProvider,'name'=null,'instanceDescriptions'=null,'launchedInstances'=null,'acquiredInstances'=null,'killedInstances'=null,'nextInstanceId'=null,'accumulatedCostOfKilledDCs'=null}).
'init_internal'()->
    #state{}.

 %% abs/lang/abslang.abs:859
'get_val_internal'(#state{'name'=G},'name')->
    object:register_read('name'),
    G;
 %% abs/lang/abslang.abs:863
'get_val_internal'(#state{'instanceDescriptions'=G},'instanceDescriptions')->
    object:register_read('instanceDescriptions'),
    G;
 %% abs/lang/abslang.abs:866
'get_val_internal'(#state{'launchedInstances'=G},'launchedInstances')->
    object:register_read('launchedInstances'),
    G;
 %% abs/lang/abslang.abs:868
'get_val_internal'(#state{'acquiredInstances'=G},'acquiredInstances')->
    object:register_read('acquiredInstances'),
    G;
 %% abs/lang/abslang.abs:869
'get_val_internal'(#state{'killedInstances'=G},'killedInstances')->
    object:register_read('killedInstances'),
    G;
 %% abs/lang/abslang.abs:870
'get_val_internal'(#state{'nextInstanceId'=G},'nextInstanceId')->
    object:register_read('nextInstanceId'),
    G;
 %% abs/lang/abslang.abs:871
'get_val_internal'(#state{'accumulatedCostOfKilledDCs'=G},'accumulatedCostOfKilledDCs')->
    object:register_read('accumulatedCostOfKilledDCs'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% abs/lang/abslang.abs:859
'set_val_internal'(S,'name',V)->
    object:register_write('name'),
    S#state{'name'=V};
 %% abs/lang/abslang.abs:863
'set_val_internal'(S,'instanceDescriptions',V)->
    object:register_write('instanceDescriptions'),
    S#state{'instanceDescriptions'=V};
 %% abs/lang/abslang.abs:866
'set_val_internal'(S,'launchedInstances',V)->
    object:register_write('launchedInstances'),
    S#state{'launchedInstances'=V};
 %% abs/lang/abslang.abs:868
'set_val_internal'(S,'acquiredInstances',V)->
    object:register_write('acquiredInstances'),
    S#state{'acquiredInstances'=V};
 %% abs/lang/abslang.abs:869
'set_val_internal'(S,'killedInstances',V)->
    object:register_write('killedInstances'),
    S#state{'killedInstances'=V};
 %% abs/lang/abslang.abs:870
'set_val_internal'(S,'nextInstanceId',V)->
    object:register_write('nextInstanceId'),
    S#state{'nextInstanceId'=V};
 %% abs/lang/abslang.abs:871
'set_val_internal'(S,'accumulatedCostOfKilledDCs',V)->
    object:register_write('accumulatedCostOfKilledDCs'),
    S#state{'accumulatedCostOfKilledDCs'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'name', S#state.'name' }
        , { 'instanceDescriptions', S#state.'instanceDescriptions' }
        , { 'launchedInstances', S#state.'launchedInstances' }
        , { 'acquiredInstances', S#state.'acquiredInstances' }
        , { 'killedInstances', S#state.'killedInstances' }
        , { 'nextInstanceId', S#state.'nextInstanceId' }
        , { 'accumulatedCostOfKilledDCs', S#state.'accumulatedCostOfKilledDCs' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_name,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'name',P_name)),
     %% abs/lang/abslang.abs:863--863
    put(this, C:set_val_internal(get(this),'instanceDescriptions',m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack]))),
     %% abs/lang/abslang.abs:866--866
    put(this, C:set_val_internal(get(this),'launchedInstances',m_ABS_StdLib_funs:f_set(Cog,[],[O,DC| Stack]))),
     %% abs/lang/abslang.abs:868--868
    put(this, C:set_val_internal(get(this),'acquiredInstances',m_ABS_StdLib_funs:f_set(Cog,[],[O,DC| Stack]))),
     %% abs/lang/abslang.abs:869--869
    put(this, C:set_val_internal(get(this),'killedInstances',m_ABS_StdLib_funs:f_set(Cog,[],[O,DC| Stack]))),
     %% abs/lang/abslang.abs:870--870
    put(this, C:set_val_internal(get(this),'nextInstanceId',0)),
     %% abs/lang/abslang.abs:871--871
    put(this, C:set_val_internal(get(this),'accumulatedCostOfKilledDCs',0)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% abs/lang/abslang.abs:873
 %% abs/lang/abslang.abs:873
'm_shutdown'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:875--875
        skip,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method shutdown and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:878
 %% abs/lang/abslang.abs:878
'm_createInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_instancename_0,V_d_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'instancename' => V_instancename_0,
 'd' => V_d_0 }),
    try
         %% abs/lang/abslang.abs:879--879
        put(vars, (get(vars))#{'mightNeedToStartAccounting' => m_ABS_StdLib_funs:f_emptySet(Cog,C:get_val_internal(get(this), 'launchedInstances'),[O,DC| Stack])}),
         %% abs/lang/abslang.abs:880--881
        put(vars, (get(vars))#{'result' => object:new(cog:start(Cog,DC),class_ABS_DC_DeploymentComponent,[iolist_to_binary([iolist_to_binary([maps:get('instancename', get(vars)), <<"-"/utf8>>]), builtin:toString(Cog,C:get_val_internal(get(this), 'nextInstanceId'))]),maps:get('d', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% abs/lang/abslang.abs:882--882
        T_1 = cog:create_task(maps:get('result', get(vars)),'m_setProvider',[O,[]],#task_info{method= <<"setProvider"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
         %% abs/lang/abslang.abs:883--883
        put(this, C:set_val_internal(get(this), 'nextInstanceId',(C:get_val_internal(get(this), 'nextInstanceId') + 1) )),
         %% abs/lang/abslang.abs:886--886
        put(vars, (get(vars))#{'stupidTypeSystem' => maps:get('result', get(vars))}),
         %% abs/lang/abslang.abs:887--887
        put(this, C:set_val_internal(get(this), 'launchedInstances',m_ABS_StdLib_funs:f_insertElement(Cog,C:get_val_internal(get(this), 'launchedInstances'),maps:get('stupidTypeSystem', get(vars)),[O,DC| Stack]))),
         %% abs/lang/abslang.abs:888--888
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method createInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:891
 %% abs/lang/abslang.abs:891
'm_prelaunchInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_d_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'd' => V_d_0 }),
    try
         %% abs/lang/abslang.abs:892--892
        put(vars, (get(vars))#{'result' => (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_createInstance'(Callee,C:get_val_internal(get(this), 'name'),maps:get('d', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = C:get_val_internal(get(this), 'name'),
                V_d = maps:get('d', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_createInstance'(Callee, V_instancename, V_d,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_createInstance',[C:get_val_internal(get(this), 'name'),maps:get('d', get(vars)),[]],#task_info{method= <<"createInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% abs/lang/abslang.abs:893--893
        put(vars, (get(vars))#{'tmp753396831' => cog:create_task(maps:get('result', get(vars)),'m_getStartupDuration',[[]],#task_info{method= <<"getStartupDuration"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
         %% abs/lang/abslang.abs:893--893
        future:await(maps:get('tmp753396831', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% abs/lang/abslang.abs:893--893
        put(vars, (get(vars))#{'startup_duration' => future:get_blocking(maps:get('tmp753396831', get(vars)), Cog, [O,DC| Stack])}),
         %% abs/lang/abslang.abs:894--894
        cog:suspend_current_task_for_duration(Cog,maps:get('startup_duration', get(vars)),maps:get('startup_duration', get(vars)),[O,DC| Stack]),
        ok,
         %% abs/lang/abslang.abs:895--895
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method prelaunchInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:898
 %% abs/lang/abslang.abs:898
'm_prelaunchInstanceNamed'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_instancename_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'instancename' => V_instancename_0 }),
    try
         %% abs/lang/abslang.abs:899--899
        put(vars, (get(vars))#{'mconfig' => m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'instanceDescriptions'),maps:get('instancename', get(vars)),[O,DC| Stack])}),
         %% abs/lang/abslang.abs:900--900
        put(vars, (get(vars))#{'dc' => null}),
         %% abs/lang/abslang.abs:901--901
        case m_ABS_StdLib_funs:f_isJust(Cog,maps:get('mconfig', get(vars)),[O,DC| Stack]) of
            true ->  %% abs/lang/abslang.abs:902--902
            put(vars, (get(vars))#{'config' => m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('mconfig', get(vars)),[O,DC| Stack])}),
             %% abs/lang/abslang.abs:903--903
            put(vars, (get(vars))#{'dc' := (fun() -> case O of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_createInstance'(Callee,iolist_to_binary([iolist_to_binary([C:get_val_internal(get(this), 'name'), <<"-"/utf8>>]), maps:get('instancename', get(vars))]),maps:get('config', get(vars)),[O,DC,Vars| Stack]),
                    put(vars, Vars),
                    Result;
                Callee=#object{oid=ObjRef,cog=Cog} ->
                    %% cog-local call
                    V_instancename = iolist_to_binary([iolist_to_binary([C:get_val_internal(get(this), 'name'), <<"-"/utf8>>]), maps:get('instancename', get(vars))]),
                    V_d = maps:get('config', get(vars)),
                    State=get(this),
                    Vars=get(vars),
                    cog:object_state_changed(Cog, O, State),
                    put(this,cog:get_object_state(Callee#object.cog, Callee)),
                    put(task_info,(get(task_info))#task_info{this=Callee}),
                    T=object:get_class_from_state(get(this)), % it's the callee state already
                    Result=T:'m_createInstance'(Callee, V_instancename, V_d,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_createInstance',[iolist_to_binary([iolist_to_binary([C:get_val_internal(get(this), 'name'), <<"-"/utf8>>]), maps:get('instancename', get(vars))]),maps:get('config', get(vars)),[]],#task_info{method= <<"createInstance"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)()});
            false ->         ok
        end,
         %% abs/lang/abslang.abs:905--905
        put(vars, (get(vars))#{'tmp1706840265' => cog:create_task(maps:get('dc', get(vars)),'m_getStartupDuration',[[]],#task_info{method= <<"getStartupDuration"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
         %% abs/lang/abslang.abs:905--905
        future:await(maps:get('tmp1706840265', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% abs/lang/abslang.abs:905--905
        put(vars, (get(vars))#{'startup_duration' => future:get_blocking(maps:get('tmp1706840265', get(vars)), Cog, [O,DC| Stack])}),
         %% abs/lang/abslang.abs:906--906
        cog:suspend_current_task_for_duration(Cog,maps:get('startup_duration', get(vars)),maps:get('startup_duration', get(vars)),[O,DC| Stack]),
        ok,
         %% abs/lang/abslang.abs:907--907
        maps:get('dc', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method prelaunchInstanceNamed and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:910
 %% abs/lang/abslang.abs:910
'm_launchInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_d_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'd' => V_d_0 }),
    try
         %% abs/lang/abslang.abs:911--911
        put(vars, (get(vars))#{'result' => (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_prelaunchInstance'(Callee,maps:get('d', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_d = maps:get('d', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_prelaunchInstance'(Callee, V_d,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_prelaunchInstance',[maps:get('d', get(vars)),[]],#task_info{method= <<"prelaunchInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% abs/lang/abslang.abs:912--912
        put(this, C:set_val_internal(get(this), 'acquiredInstances',m_ABS_StdLib_funs:f_insertElement(Cog,C:get_val_internal(get(this), 'acquiredInstances'),maps:get('result', get(vars)),[O,DC| Stack]))),
         %% abs/lang/abslang.abs:913--913
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method launchInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:916
 %% abs/lang/abslang.abs:916
'm_launchInstanceNamed'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_instancename_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'instancename' => V_instancename_0 }),
    try
         %% abs/lang/abslang.abs:917--917
        put(vars, (get(vars))#{'result' => (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_prelaunchInstanceNamed'(Callee,maps:get('instancename', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = maps:get('instancename', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_prelaunchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_prelaunchInstanceNamed',[maps:get('instancename', get(vars)),[]],#task_info{method= <<"prelaunchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% abs/lang/abslang.abs:918--918
        case (not cmp:eq(maps:get('result', get(vars)),null)) of
            true ->  %% abs/lang/abslang.abs:919--919
            put(this, C:set_val_internal(get(this), 'acquiredInstances',m_ABS_StdLib_funs:f_insertElement(Cog,C:get_val_internal(get(this), 'acquiredInstances'),maps:get('result', get(vars)),[O,DC| Stack])));
            false ->         ok
        end,
         %% abs/lang/abslang.abs:921--921
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method launchInstanceNamed and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:924
 %% abs/lang/abslang.abs:924
'm_acquireInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_instance_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'instance' => V_instance_0 }),
    try
         %% abs/lang/abslang.abs:925--925
        put(vars, (get(vars))#{'result' => true}),
         %% abs/lang/abslang.abs:926--926
        put(vars, (get(vars))#{'tmp2067271782' => cog:create_task(maps:get('instance', get(vars)),'m_getProvider',[[]],#task_info{method= <<"getProvider"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
         %% abs/lang/abslang.abs:926--926
        future:await(maps:get('tmp2067271782', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% abs/lang/abslang.abs:926--926
        put(vars, (get(vars))#{'cp' => future:get_blocking(maps:get('tmp2067271782', get(vars)), Cog, [O,DC| Stack])}),
         %% abs/lang/abslang.abs:927--927
        case (not cmp:eq(maps:get('cp', get(vars)),O)) of
            true ->  %% abs/lang/abslang.abs:929--929
            put(vars, (get(vars))#{'result' := false});
            false ->          %% abs/lang/abslang.abs:930--931
        case (m_ABS_StdLib_funs:f_contains(Cog,C:get_val_internal(get(this), 'acquiredInstances'),maps:get('instance', get(vars)),[O,DC| Stack])) or (m_ABS_StdLib_funs:f_contains(Cog,C:get_val_internal(get(this), 'killedInstances'),maps:get('instance', get(vars)),[O,DC| Stack])) of
            true ->  %% abs/lang/abslang.abs:932--932
            put(vars, (get(vars))#{'result' := false});
            false ->          %% abs/lang/abslang.abs:934--934
        put(this, C:set_val_internal(get(this), 'acquiredInstances',m_ABS_StdLib_funs:f_insertElement(Cog,C:get_val_internal(get(this), 'acquiredInstances'),maps:get('instance', get(vars)),[O,DC| Stack])))
        end
        end,
         %% abs/lang/abslang.abs:936--936
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method acquireInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:938
 %% abs/lang/abslang.abs:938
'm_releaseInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_instance_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'instance' => V_instance_0 }),
    try
         %% abs/lang/abslang.abs:943--943
        case m_ABS_StdLib_funs:f_contains(Cog,C:get_val_internal(get(this), 'acquiredInstances'),maps:get('instance', get(vars)),[O,DC| Stack]) of
            true ->  %% abs/lang/abslang.abs:944--944
            put(this, C:set_val_internal(get(this), 'acquiredInstances',m_ABS_StdLib_funs:f_remove(Cog,C:get_val_internal(get(this), 'acquiredInstances'),maps:get('instance', get(vars)),[O,DC| Stack])));
            false ->         ok
        end,
         %% abs/lang/abslang.abs:946--946
        true
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method releaseInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:949
 %% abs/lang/abslang.abs:949
'm_shutdownInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_instance_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'instance' => V_instance_0 }),
    try
         %% abs/lang/abslang.abs:950--950
        T_1 = cog:create_task(maps:get('instance', get(vars)),'m_shutdown',[[]],#task_info{method= <<"shutdown"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
         %% abs/lang/abslang.abs:951--951
        true
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method shutdownInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:954
 %% abs/lang/abslang.abs:954
'm_internalShutdownInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_instance_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'instance' => V_instance_0 }),
    try
         %% abs/lang/abslang.abs:955--955
        put(vars, (get(vars))#{'stupidTypeSystem' => maps:get('instance', get(vars))}),
         %% abs/lang/abslang.abs:958--958
        put(this, C:set_val_internal(get(this), 'acquiredInstances',m_ABS_StdLib_funs:f_remove(Cog,C:get_val_internal(get(this), 'acquiredInstances'),maps:get('stupidTypeSystem', get(vars)),[O,DC| Stack]))),
         %% abs/lang/abslang.abs:961--961
        put(this, C:set_val_internal(get(this), 'killedInstances',m_ABS_StdLib_funs:f_insertElement(Cog,C:get_val_internal(get(this), 'killedInstances'),maps:get('stupidTypeSystem', get(vars)),[O,DC| Stack]))),
         %% abs/lang/abslang.abs:962--962
        put(vars, (get(vars))#{'tmp19919839' => cog:create_task(maps:get('instance', get(vars)),'m_getShutdownDuration',[[]],#task_info{method= <<"getShutdownDuration"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
         %% abs/lang/abslang.abs:962--962
        future:await(maps:get('tmp19919839', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% abs/lang/abslang.abs:962--962
        put(vars, (get(vars))#{'shutdown_duration' => future:get_blocking(maps:get('tmp19919839', get(vars)), Cog, [O,DC| Stack])}),
         %% abs/lang/abslang.abs:963--963
        cog:suspend_current_task_for_duration(Cog,maps:get('shutdown_duration', get(vars)),maps:get('shutdown_duration', get(vars)),[O,DC| Stack]),
        ok,
         %% abs/lang/abslang.abs:967--967
        put(this, C:set_val_internal(get(this), 'launchedInstances',m_ABS_StdLib_funs:f_remove(Cog,C:get_val_internal(get(this), 'launchedInstances'),maps:get('stupidTypeSystem', get(vars)),[O,DC| Stack]))),
         %% abs/lang/abslang.abs:969--969
        put(vars, (get(vars))#{'tmp314139313' => cog:create_task(maps:get('instance', get(vars)),'m_getAccumulatedCost',[[]],#task_info{method= <<"getAccumulatedCost"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
         %% abs/lang/abslang.abs:969--969
        future:await(maps:get('tmp314139313', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% abs/lang/abslang.abs:969--969
        put(vars, (get(vars))#{'cost' => future:get_blocking(maps:get('tmp314139313', get(vars)), Cog, [O,DC| Stack])}),
         %% abs/lang/abslang.abs:970--970
        put(this, C:set_val_internal(get(this), 'accumulatedCostOfKilledDCs',( rationals:add(C:get_val_internal(get(this), 'accumulatedCostOfKilledDCs'),maps:get('cost', get(vars)))) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method internalShutdownInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:973
 %% abs/lang/abslang.abs:973
'm_getAccumulatedCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:974--974
        put(vars, (get(vars))#{'result' => 0}),
         %% abs/lang/abslang.abs:975--975
        put(vars, (get(vars))#{'t' => m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack])}),
         %% abs/lang/abslang.abs:976--979
        put(vars, (get(vars))#{'tmp1039634839' => m_ABS_StdLib_funs:f_elements(Cog,C:get_val_internal(get(this), 'launchedInstances'),[O,DC| Stack])}),
         %% abs/lang/abslang.abs:976--979
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1039634839', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% abs/lang/abslang.abs:976--979
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1039634839', get(vars)),[O,DC| Stack])}),
                 %% abs/lang/abslang.abs:976--979
                put(vars, (get(vars))#{'tmp1039634839' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1039634839', get(vars)),[O,DC| Stack])}),
                 %% abs/lang/abslang.abs:977--977
                put(vars, (get(vars))#{'tmp360989239' => cog:create_task(maps:get('dc', get(vars)),'m_getAccumulatedCost',[[]],#task_info{method= <<"getAccumulatedCost"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
                 %% abs/lang/abslang.abs:977--977
                future:await(maps:get('tmp360989239', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% abs/lang/abslang.abs:977--977
                put(vars, (get(vars))#{'cost' => future:get_blocking(maps:get('tmp360989239', get(vars)), Cog, [O,DC| Stack])}),
                 %% abs/lang/abslang.abs:978--978
                put(vars, (get(vars))#{'result' := ( rationals:add(maps:get('result', get(vars)),maps:get('cost', get(vars)))) }),
            Loop([])  end end)
        ([]),
         %% abs/lang/abslang.abs:980--980
        ( rationals:add(maps:get('result', get(vars)),C:get_val_internal(get(this), 'accumulatedCostOfKilledDCs'))) 
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getAccumulatedCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:984
 %% abs/lang/abslang.abs:984
'm_setInstanceDescriptions'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_instanceDescriptions_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'instanceDescriptions' => V_instanceDescriptions_0 }),
    try
         %% abs/lang/abslang.abs:985--985
        put(this, C:set_val_internal(get(this), 'instanceDescriptions',maps:get('instanceDescriptions', get(vars)))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method setInstanceDescriptions and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:989
 %% abs/lang/abslang.abs:989
'm_addInstanceDescription'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_instanceDescription_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'instanceDescription' => V_instanceDescription_0 }),
    try
         %% abs/lang/abslang.abs:990--990
        put(this, C:set_val_internal(get(this), 'instanceDescriptions',m_ABS_StdLib_funs:f_insert(Cog,C:get_val_internal(get(this), 'instanceDescriptions'),maps:get('instanceDescription', get(vars)),[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method addInstanceDescription and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:994
 %% abs/lang/abslang.abs:994
'm_removeInstanceDescription'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_instanceDescriptionName_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'instanceDescriptionName' => V_instanceDescriptionName_0 }),
    try
         %% abs/lang/abslang.abs:995--995
        put(this, C:set_val_internal(get(this), 'instanceDescriptions',m_ABS_StdLib_funs:f_removeKey(Cog,C:get_val_internal(get(this), 'instanceDescriptions'),maps:get('instanceDescriptionName', get(vars)),[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method removeInstanceDescription and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:998
 %% abs/lang/abslang.abs:998
'm_getInstanceDescriptions'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:999--999
        C:get_val_internal(get(this), 'instanceDescriptions')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getInstanceDescriptions and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
