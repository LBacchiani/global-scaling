-module(class_Wrapper_WrapperScale).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"WrapperScaleInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Wrapper_WrapperScale,'s1'=null,'s2'=null,'s3'=null,'s4'=null,'nInst'=null,'deplTimes'=null}).
'init_internal'()->
    #state{}.

 %% scaler_wrapper.abs:19
'get_val_internal'(#state{'s1'=G},'s1')->
    object:register_read('s1'),
    G;
 %% scaler_wrapper.abs:19
'get_val_internal'(#state{'s2'=G},'s2')->
    object:register_read('s2'),
    G;
 %% scaler_wrapper.abs:19
'get_val_internal'(#state{'s3'=G},'s3')->
    object:register_read('s3'),
    G;
 %% scaler_wrapper.abs:19
'get_val_internal'(#state{'s4'=G},'s4')->
    object:register_read('s4'),
    G;
 %% scaler_wrapper.abs:19
'get_val_internal'(#state{'nInst'=G},'nInst')->
    object:register_read('nInst'),
    G;
 %% scaler_wrapper.abs:21
'get_val_internal'(#state{'deplTimes'=G},'deplTimes')->
    object:register_read('deplTimes'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% scaler_wrapper.abs:19
'set_val_internal'(S,'s1',V)->
    object:register_write('s1'),
    S#state{'s1'=V};
 %% scaler_wrapper.abs:19
'set_val_internal'(S,'s2',V)->
    object:register_write('s2'),
    S#state{'s2'=V};
 %% scaler_wrapper.abs:19
'set_val_internal'(S,'s3',V)->
    object:register_write('s3'),
    S#state{'s3'=V};
 %% scaler_wrapper.abs:19
'set_val_internal'(S,'s4',V)->
    object:register_write('s4'),
    S#state{'s4'=V};
 %% scaler_wrapper.abs:19
'set_val_internal'(S,'nInst',V)->
    object:register_write('nInst'),
    S#state{'nInst'=V};
 %% scaler_wrapper.abs:21
'set_val_internal'(S,'deplTimes',V)->
    object:register_write('deplTimes'),
    S#state{'deplTimes'=V}.

'get_state_for_modelapi'(S)->
    [
        { 's1', S#state.'s1' }
        , { 's2', S#state.'s2' }
        , { 's3', S#state.'s3' }
        , { 's4', S#state.'s4' }
        , { 'nInst', S#state.'nInst' }
        , { 'deplTimes', S#state.'deplTimes' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_s1,P_s2,P_s3,P_s4,P_nInst,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'s1',P_s1)),
    put(this, C:set_val_internal(get(this),'s2',P_s2)),
    put(this, C:set_val_internal(get(this),'s3',P_s3)),
    put(this, C:set_val_internal(get(this),'s4',P_s4)),
    put(this, C:set_val_internal(get(this),'nInst',P_nInst)),
     %% scaler_wrapper.abs:21--21
    put(this, C:set_val_internal(get(this),'deplTimes',0)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% scaler_wrapper.abs:23
 %% scaler_wrapper.abs:23
'm_getDeploymentComponent'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% scaler_wrapper.abs:24--24
        put(vars, (get(vars))#{'res' => []}),
         %% scaler_wrapper.abs:25--25
        case (not cmp:eq(C:get_val_internal(get(this), 's4'),null)) of
            true ->  %% scaler_wrapper.abs:25--25
            put(vars, (get(vars))#{'res' := (fun() -> case C:get_val_internal(get(this), 's4') of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_getDeploymentComponent'(Callee,[O,DC,Vars| Stack]),
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
                    Result=T:'m_getDeploymentComponent'(Callee,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_getDeploymentComponent',[[]],#task_info{method= <<"getDeploymentComponent"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)()});
            false ->          %% scaler_wrapper.abs:26--26
        case (not cmp:eq(C:get_val_internal(get(this), 's3'),null)) of
            true ->  %% scaler_wrapper.abs:26--26
            put(vars, (get(vars))#{'res' := (fun() -> case C:get_val_internal(get(this), 's3') of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_getDeploymentComponent'(Callee,[O,DC,Vars| Stack]),
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
                    Result=T:'m_getDeploymentComponent'(Callee,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_getDeploymentComponent',[[]],#task_info{method= <<"getDeploymentComponent"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)()});
            false ->          %% scaler_wrapper.abs:27--27
        case (not cmp:eq(C:get_val_internal(get(this), 's2'),null)) of
            true ->  %% scaler_wrapper.abs:27--27
            put(vars, (get(vars))#{'res' := (fun() -> case C:get_val_internal(get(this), 's2') of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_getDeploymentComponent'(Callee,[O,DC,Vars| Stack]),
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
                    Result=T:'m_getDeploymentComponent'(Callee,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_getDeploymentComponent',[[]],#task_info{method= <<"getDeploymentComponent"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)()});
            false ->          %% scaler_wrapper.abs:28--28
        put(vars, (get(vars))#{'res' := (fun() -> case C:get_val_internal(get(this), 's1') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getDeploymentComponent'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getDeploymentComponent'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getDeploymentComponent',[[]],#task_info{method= <<"getDeploymentComponent"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()})
        end
        end
        end,
         %% scaler_wrapper.abs:29--29
        maps:get('res', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getDeploymentComponent and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% scaler_wrapper.abs:32
 %% scaler_wrapper.abs:32
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% scaler_wrapper.abs:33--33
        case (not cmp:eq(C:get_val_internal(get(this), 's4'),null)) of
            true ->  %% scaler_wrapper.abs:33--33
            T_1 = cog:create_task(C:get_val_internal(get(this), 's4'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% scaler_wrapper.abs:34--34
        case (not cmp:eq(C:get_val_internal(get(this), 's3'),null)) of
            true ->  %% scaler_wrapper.abs:34--34
            T_1 = cog:create_task(C:get_val_internal(get(this), 's3'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% scaler_wrapper.abs:35--35
        case (not cmp:eq(C:get_val_internal(get(this), 's2'),null)) of
            true ->  %% scaler_wrapper.abs:35--35
            T_1 = cog:create_task(C:get_val_internal(get(this), 's2'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% scaler_wrapper.abs:36--36
        T_1 = cog:create_task(C:get_val_internal(get(this), 's1'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1
        end
        end
        end,
         %% scaler_wrapper.abs:37--37
        put(this, C:set_val_internal(get(this), 'deplTimes',(C:get_val_internal(get(this), 'deplTimes') + 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% scaler_wrapper.abs:40
 %% scaler_wrapper.abs:40
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% scaler_wrapper.abs:41--41
        case (not cmp:eq(C:get_val_internal(get(this), 's4'),null)) of
            true ->  %% scaler_wrapper.abs:41--41
            T_1 = cog:create_task(C:get_val_internal(get(this), 's4'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% scaler_wrapper.abs:42--42
        case (not cmp:eq(C:get_val_internal(get(this), 's3'),null)) of
            true ->  %% scaler_wrapper.abs:42--42
            T_1 = cog:create_task(C:get_val_internal(get(this), 's3'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% scaler_wrapper.abs:43--43
        case (not cmp:eq(C:get_val_internal(get(this), 's2'),null)) of
            true ->  %% scaler_wrapper.abs:43--43
            T_1 = cog:create_task(C:get_val_internal(get(this), 's2'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
            T_1;
            false ->          %% scaler_wrapper.abs:44--44
        T_1 = cog:create_task(C:get_val_internal(get(this), 's1'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1
        end
        end
        end,
         %% scaler_wrapper.abs:45--45
        put(this, C:set_val_internal(get(this), 'deplTimes',(C:get_val_internal(get(this), 'deplTimes') - 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% scaler_wrapper.abs:48
 %% scaler_wrapper.abs:48
'm_getDeplTimes'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% scaler_wrapper.abs:48--48
        C:get_val_internal(get(this), 'deplTimes')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getDeplTimes and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% scaler_wrapper.abs:50
 %% scaler_wrapper.abs:50
'm_getDeployedInstances'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% scaler_wrapper.abs:50--50
        C:get_val_internal(get(this), 'nInst')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getDeployedInstances and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
