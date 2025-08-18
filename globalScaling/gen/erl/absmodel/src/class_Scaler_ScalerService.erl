-module(class_Scaler_ScalerService).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"ScalerServiceInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Scaler_ScalerService,'initialCost'=null,'mcls'=null,'mfs'=null,'baseConfig'=null,'scaleComponents'=null,'deployedDeltas'=null,'orchestrationDeltas'=null,'scaleNames'=null,'scalingTrace'=null,'printableconfig'=null,'mcl'=null,'numScales'=null,'scalingAct'=null}).
'init_internal'()->
    #state{}.

 %% global_scaling_alg.abs:19
'get_val_internal'(#state{'initialCost'=G},'initialCost')->
    object:register_read('initialCost'),
    G;
 %% global_scaling_alg.abs:21
'get_val_internal'(#state{'mcls'=G},'mcls')->
    object:register_read('mcls'),
    G;
 %% global_scaling_alg.abs:22
'get_val_internal'(#state{'mfs'=G},'mfs')->
    object:register_read('mfs'),
    G;
 %% global_scaling_alg.abs:23
'get_val_internal'(#state{'baseConfig'=G},'baseConfig')->
    object:register_read('baseConfig'),
    G;
 %% global_scaling_alg.abs:31
'get_val_internal'(#state{'scaleComponents'=G},'scaleComponents')->
    object:register_read('scaleComponents'),
    G;
 %% global_scaling_alg.abs:32
'get_val_internal'(#state{'deployedDeltas'=G},'deployedDeltas')->
    object:register_read('deployedDeltas'),
    G;
 %% global_scaling_alg.abs:33
'get_val_internal'(#state{'orchestrationDeltas'=G},'orchestrationDeltas')->
    object:register_read('orchestrationDeltas'),
    G;
 %% global_scaling_alg.abs:34
'get_val_internal'(#state{'scaleNames'=G},'scaleNames')->
    object:register_read('scaleNames'),
    G;
 %% global_scaling_alg.abs:35
'get_val_internal'(#state{'scalingTrace'=G},'scalingTrace')->
    object:register_read('scalingTrace'),
    G;
 %% global_scaling_alg.abs:36
'get_val_internal'(#state{'printableconfig'=G},'printableconfig')->
    object:register_read('printableconfig'),
    G;
 %% global_scaling_alg.abs:37
'get_val_internal'(#state{'mcl'=G},'mcl')->
    object:register_read('mcl'),
    G;
 %% global_scaling_alg.abs:38
'get_val_internal'(#state{'numScales'=G},'numScales')->
    object:register_read('numScales'),
    G;
 %% global_scaling_alg.abs:39
'get_val_internal'(#state{'scalingAct'=G},'scalingAct')->
    object:register_read('scalingAct'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% global_scaling_alg.abs:19
'set_val_internal'(S,'initialCost',V)->
    object:register_write('initialCost'),
    S#state{'initialCost'=V};
 %% global_scaling_alg.abs:21
'set_val_internal'(S,'mcls',V)->
    object:register_write('mcls'),
    S#state{'mcls'=V};
 %% global_scaling_alg.abs:22
'set_val_internal'(S,'mfs',V)->
    object:register_write('mfs'),
    S#state{'mfs'=V};
 %% global_scaling_alg.abs:23
'set_val_internal'(S,'baseConfig',V)->
    object:register_write('baseConfig'),
    S#state{'baseConfig'=V};
 %% global_scaling_alg.abs:31
'set_val_internal'(S,'scaleComponents',V)->
    object:register_write('scaleComponents'),
    S#state{'scaleComponents'=V};
 %% global_scaling_alg.abs:32
'set_val_internal'(S,'deployedDeltas',V)->
    object:register_write('deployedDeltas'),
    S#state{'deployedDeltas'=V};
 %% global_scaling_alg.abs:33
'set_val_internal'(S,'orchestrationDeltas',V)->
    object:register_write('orchestrationDeltas'),
    S#state{'orchestrationDeltas'=V};
 %% global_scaling_alg.abs:34
'set_val_internal'(S,'scaleNames',V)->
    object:register_write('scaleNames'),
    S#state{'scaleNames'=V};
 %% global_scaling_alg.abs:35
'set_val_internal'(S,'scalingTrace',V)->
    object:register_write('scalingTrace'),
    S#state{'scalingTrace'=V};
 %% global_scaling_alg.abs:36
'set_val_internal'(S,'printableconfig',V)->
    object:register_write('printableconfig'),
    S#state{'printableconfig'=V};
 %% global_scaling_alg.abs:37
'set_val_internal'(S,'mcl',V)->
    object:register_write('mcl'),
    S#state{'mcl'=V};
 %% global_scaling_alg.abs:38
'set_val_internal'(S,'numScales',V)->
    object:register_write('numScales'),
    S#state{'numScales'=V};
 %% global_scaling_alg.abs:39
'set_val_internal'(S,'scalingAct',V)->
    object:register_write('scalingAct'),
    S#state{'scalingAct'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'initialCost', S#state.'initialCost' }
        , { 'mcls', S#state.'mcls' }
        , { 'mfs', S#state.'mfs' }
        , { 'baseConfig', S#state.'baseConfig' }
        , { 'scaleComponents', S#state.'scaleComponents' }
        , { 'deployedDeltas', S#state.'deployedDeltas' }
        , { 'orchestrationDeltas', S#state.'orchestrationDeltas' }
        , { 'scaleNames', S#state.'scaleNames' }
        , { 'scalingTrace', S#state.'scalingTrace' }
        , { 'printableconfig', S#state.'printableconfig' }
        , { 'mcl', S#state.'mcl' }
        , { 'numScales', S#state.'numScales' }
        , { 'scalingAct', S#state.'scalingAct' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_initialCost,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'initialCost',P_initialCost)),
     %% global_scaling_alg.abs:21--21
    put(this, C:set_val_internal(get(this),'mcls',m_ABS_StdLib_funs:f_list(Cog,[ 110, 120, 231, 231, 300] ,[O,DC| Stack]))),
     %% global_scaling_alg.abs:22--22
    put(this, C:set_val_internal(get(this),'mfs',m_ABS_StdLib_funs:f_list(Cog,[ 1, 2,  rationals:rdiv(3,2) ,  rationals:rdiv(3,2) , 5] ,[O,DC| Stack]))),
     %% global_scaling_alg.abs:23--30
    put(this, C:set_val_internal(get(this),'baseConfig',m_ABS_StdLib_funs:f_list(Cog,[ 1, 1, 1, 1, 1] ,[O,DC| Stack]))),
     %% global_scaling_alg.abs:31--31
    put(this, C:set_val_internal(get(this),'scaleComponents',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% global_scaling_alg.abs:32--32
    put(this, C:set_val_internal(get(this),'deployedDeltas',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% global_scaling_alg.abs:33--33
    put(this, C:set_val_internal(get(this),'orchestrationDeltas',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% global_scaling_alg.abs:34--34
    put(this, C:set_val_internal(get(this),'scaleNames',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% global_scaling_alg.abs:35--35
    put(this, C:set_val_internal(get(this),'scalingTrace',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% global_scaling_alg.abs:36--36
    put(this, C:set_val_internal(get(this),'printableconfig',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% global_scaling_alg.abs:37--37
    put(this, C:set_val_internal(get(this),'mcl',0)),
     %% global_scaling_alg.abs:38--38
    put(this, C:set_val_internal(get(this),'numScales',0)),
     %% global_scaling_alg.abs:39--39
    put(this, C:set_val_internal(get(this),'scalingAct',<<""/utf8>>)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% global_scaling_alg.abs:41
 %% global_scaling_alg.abs:41
'm_insertScalingElements'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_components_0,V_scalingObj_0,V_scalingName_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'components' => V_components_0,
 'scalingObj' => V_scalingObj_0,
 'scalingName' => V_scalingName_0 }),
    try
         %% global_scaling_alg.abs:42--42
        put(this, C:set_val_internal(get(this), 'scaleComponents',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'scaleComponents'),maps:get('components', get(vars)),[O,DC| Stack]))),
         %% global_scaling_alg.abs:43--43
        put(this, C:set_val_internal(get(this), 'deployedDeltas',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'deployedDeltas'),0,[O,DC| Stack]))),
         %% global_scaling_alg.abs:44--44
        put(this, C:set_val_internal(get(this), 'orchestrationDeltas',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'orchestrationDeltas'),maps:get('scalingObj', get(vars)),[O,DC| Stack]))),
         %% global_scaling_alg.abs:45--45
        put(this, C:set_val_internal(get(this), 'scalingTrace',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'scalingTrace'),0,[O,DC| Stack]))),
         %% global_scaling_alg.abs:46--46
        put(this, C:set_val_internal(get(this), 'scaleNames',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'scaleNames'),maps:get('scalingName', get(vars)),[O,DC| Stack]))),
         %% global_scaling_alg.abs:47--47
        put(this, C:set_val_internal(get(this), 'numScales',(C:get_val_internal(get(this), 'numScales') + 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertScalingElements and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:50
 %% global_scaling_alg.abs:50
'm_computeConfiguration'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_target_workload_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'target_workload' => V_target_workload_0 }),
    try
         %% global_scaling_alg.abs:51--51
        put(vars, (get(vars))#{'configDeltas' => (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_createEmpty'(Callee,C:get_val_internal(get(this), 'numScales'),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_nDeltas = C:get_val_internal(get(this), 'numScales'),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_createEmpty'(Callee, V_nDeltas,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_createEmpty',[C:get_val_internal(get(this), 'numScales'),[]],#task_info{method= <<"createEmpty"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% global_scaling_alg.abs:52--52
        put(this, C:set_val_internal(get(this), 'printableconfig',maps:get('configDeltas', get(vars)))),
         %% global_scaling_alg.abs:53--53
        put(vars, (get(vars))#{'config' => C:get_val_internal(get(this), 'baseConfig')}),
         %% global_scaling_alg.abs:54--54
        put(this, C:set_val_internal(get(this), 'mcl',(fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_mcl'(Callee,maps:get('config', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_microserviceInstances = maps:get('config', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_mcl'(Callee, V_microserviceInstances,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_mcl',[maps:get('config', get(vars)),[]],#task_info{method= <<"mcl"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% global_scaling_alg.abs:55--55
        put(vars, (get(vars))#{'configFound' => cmp:ge(( rationals:sub(( rationals:sub(C:get_val_internal(get(this), 'mcl'),m_Param_funs:f_kbig(Cog,[O,DC| Stack]))) ,maps:get('target_workload', get(vars)))) ,0)}),
         %% global_scaling_alg.abs:56--56
        []=(fun Loop ([])->
            case not (maps:get('configFound', get(vars))) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% global_scaling_alg.abs:57--57
                put(vars, (get(vars))#{'candidateConfig' => C:get_val_internal(get(this), 'baseConfig')}),
                 %% global_scaling_alg.abs:58--58
                put(vars, (get(vars))#{'i' => -1}),
                 %% global_scaling_alg.abs:59--59
                []=(fun Loop ([])->
                    case (cmp:lt(maps:get('i', get(vars)),(C:get_val_internal(get(this), 'numScales') - 1) )) and (not (maps:get('configFound', get(vars)))) of
                    false -> [];
                    true -> receive
                            {stop_world, CogRef} ->
                                cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                                cog:task_is_runnable(Cog,self()),
                                task:wait_for_token(Cog,[O,DC| Stack])
                            after 0 -> ok
                        end,
                         %% global_scaling_alg.abs:60--60
                        put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
                         %% global_scaling_alg.abs:61--61
                        put(vars, (get(vars))#{'candidateConfig' := (fun() -> case O of
                            null -> throw(dataNullPointerException);
                            Callee=#object{oid=Oid,cog=Cog} ->
                                %% self-call
                                Vars=get(vars),
                                Result=C:'m_vSum'(Callee,maps:get('config', get(vars)),m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'scaleComponents'),maps:get('i', get(vars)),[O,DC| Stack]),[O,DC,Vars| Stack]),
                                put(vars, Vars),
                                Result;
                            Callee=#object{oid=ObjRef,cog=Cog} ->
                                %% cog-local call
                                V_v1 = maps:get('config', get(vars)),
                                V_v2 = m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'scaleComponents'),maps:get('i', get(vars)),[O,DC| Stack]),
                                State=get(this),
                                Vars=get(vars),
                                cog:object_state_changed(Cog, O, State),
                                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                                put(task_info,(get(task_info))#task_info{this=Callee}),
                                T=object:get_class_from_state(get(this)), % it's the callee state already
                                Result=T:'m_vSum'(Callee, V_v1, V_v2,[O,DC,Vars,State| Stack]),
                                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                                put(task_info,(get(task_info))#task_info{this=O}),
                                put(this, cog:get_object_state(Cog, O)),
                                put(vars, Vars),
                                Result;
                            Callee ->
                                %% remote call
                                TempFuture = cog:create_task(Callee,'m_vSum',[maps:get('config', get(vars)),m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'scaleComponents'),maps:get('i', get(vars)),[O,DC| Stack]),[]],#task_info{method= <<"vSum"/utf8>>},Cog),
                                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                        end end)()}),
                         %% global_scaling_alg.abs:62--62
                        put(this, C:set_val_internal(get(this), 'mcl',(fun() -> case O of
                            null -> throw(dataNullPointerException);
                            Callee=#object{oid=Oid,cog=Cog} ->
                                %% self-call
                                Vars=get(vars),
                                Result=C:'m_mcl'(Callee,maps:get('candidateConfig', get(vars)),[O,DC,Vars| Stack]),
                                put(vars, Vars),
                                Result;
                            Callee=#object{oid=ObjRef,cog=Cog} ->
                                %% cog-local call
                                V_microserviceInstances = maps:get('candidateConfig', get(vars)),
                                State=get(this),
                                Vars=get(vars),
                                cog:object_state_changed(Cog, O, State),
                                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                                put(task_info,(get(task_info))#task_info{this=Callee}),
                                T=object:get_class_from_state(get(this)), % it's the callee state already
                                Result=T:'m_mcl'(Callee, V_microserviceInstances,[O,DC,Vars,State| Stack]),
                                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                                put(task_info,(get(task_info))#task_info{this=O}),
                                put(this, cog:get_object_state(Cog, O)),
                                put(vars, Vars),
                                Result;
                            Callee ->
                                %% remote call
                                TempFuture = cog:create_task(Callee,'m_mcl',[maps:get('candidateConfig', get(vars)),[]],#task_info{method= <<"mcl"/utf8>>},Cog),
                                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                        end end)())),
                         %% global_scaling_alg.abs:63--63
                        put(vars, (get(vars))#{'configFound' := cmp:ge(( rationals:sub(( rationals:sub(C:get_val_internal(get(this), 'mcl'),m_Param_funs:f_kbig(Cog,[O,DC| Stack]))) ,maps:get('target_workload', get(vars)))) ,0)}),
                    Loop([])  end end)
                ([]),
                 %% global_scaling_alg.abs:65--65
                put(vars, (get(vars))#{'config' := maps:get('candidateConfig', get(vars))}),
                 %% global_scaling_alg.abs:66--66
                put(this, C:set_val_internal(get(this), 'printableconfig',(fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_incrementValue'(Callee,maps:get('i', get(vars)),C:get_val_internal(get(this), 'printableconfig'),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_index = maps:get('i', get(vars)),
                        V_list = C:get_val_internal(get(this), 'printableconfig'),
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_incrementValue'(Callee, V_index, V_list,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_incrementValue',[maps:get('i', get(vars)),C:get_val_internal(get(this), 'printableconfig'),[]],#task_info{method= <<"incrementValue"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)())),
                 %% global_scaling_alg.abs:67--67
                put(vars, (get(vars))#{'configDeltas' := (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_addDeltas'(Callee,maps:get('i', get(vars)),maps:get('configDeltas', get(vars)),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_scaleIndex = maps:get('i', get(vars)),
                        V_currentPoliciesConfig = maps:get('configDeltas', get(vars)),
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_addDeltas'(Callee, V_scaleIndex, V_currentPoliciesConfig,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_addDeltas',[maps:get('i', get(vars)),maps:get('configDeltas', get(vars)),[]],#task_info{method= <<"addDeltas"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
            Loop([])  end end)
        ([]),
         %% global_scaling_alg.abs:69--69
        maps:get('configDeltas', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method computeConfiguration and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:73
 %% global_scaling_alg.abs:73
'm_scale'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_configDeltas_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'configDeltas' => V_configDeltas_0 }),
    try
         %% global_scaling_alg.abs:74--74
        put(vars, (get(vars))#{'i' => 0}),
         %% global_scaling_alg.abs:75--75
        []=(fun Loop ([])->
            case cmp:lt(maps:get('i', get(vars)),C:get_val_internal(get(this), 'numScales')) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% global_scaling_alg.abs:76--76
                put(vars, (get(vars))#{'diff' => (m_ABS_StdLib_funs:f_nth(Cog,maps:get('configDeltas', get(vars)),maps:get('i', get(vars)),[O,DC| Stack]) - m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'deployedDeltas'),maps:get('i', get(vars)),[O,DC| Stack])) }),
                 %% global_scaling_alg.abs:77--77
                put(vars, (get(vars))#{'num' => builtin:abs(Cog,maps:get('diff', get(vars)))}),
                 %% global_scaling_alg.abs:78--78
                []=(fun Loop ([])->
                    case cmp:gt(maps:get('num', get(vars)),0) of
                    false -> [];
                    true -> receive
                            {stop_world, CogRef} ->
                                cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                                cog:task_is_runnable(Cog,self()),
                                task:wait_for_token(Cog,[O,DC| Stack])
                            after 0 -> ok
                        end,
                         %% global_scaling_alg.abs:79--79
                        case cmp:gt(maps:get('diff', get(vars)),0) of
                            true ->  %% global_scaling_alg.abs:79--79
                            T_1 = cog:create_task(m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'orchestrationDeltas'),maps:get('i', get(vars)),[O,DC| Stack]),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                            T_1;
                            false ->                          %% global_scaling_alg.abs:80--80
                        T_1 = cog:create_task(m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'orchestrationDeltas'),maps:get('i', get(vars)),[O,DC| Stack]),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                        T_1
                        end,
                         %% global_scaling_alg.abs:81--81
                        put(vars, (get(vars))#{'num' := ( rationals:sub(maps:get('num', get(vars)),1)) }),
                    Loop([])  end end)
                ([]),
                 %% global_scaling_alg.abs:83--83
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% global_scaling_alg.abs:85--85
        put(this, C:set_val_internal(get(this), 'deployedDeltas',maps:get('configDeltas', get(vars)))),
         %% global_scaling_alg.abs:86--86
        put(this, C:set_val_internal(get(this), 'scalingAct',(fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_recordAction'(Callee,C:get_val_internal(get(this), 'scalingTrace'),C:get_val_internal(get(this), 'printableconfig'),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_scalingTrace = C:get_val_internal(get(this), 'scalingTrace'),
                V_printableconfig = C:get_val_internal(get(this), 'printableconfig'),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_recordAction'(Callee, V_scalingTrace, V_printableconfig,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_recordAction',[C:get_val_internal(get(this), 'scalingTrace'),C:get_val_internal(get(this), 'printableconfig'),[]],#task_info{method= <<"recordAction"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% global_scaling_alg.abs:87--87
        put(this, C:set_val_internal(get(this), 'scalingTrace',C:get_val_internal(get(this), 'printableconfig'))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method scale and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:90
 %% global_scaling_alg.abs:90
'm_getSystemMCL'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% global_scaling_alg.abs:91--91
        case cmp:eq(C:get_val_internal(get(this), 'mcl'),0) of
            true ->  %% global_scaling_alg.abs:91--91
            put(this, C:set_val_internal(get(this), 'mcl',(fun() -> case O of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_mcl'(Callee,C:get_val_internal(get(this), 'baseConfig'),[O,DC,Vars| Stack]),
                    put(vars, Vars),
                    Result;
                Callee=#object{oid=ObjRef,cog=Cog} ->
                    %% cog-local call
                    V_microserviceInstances = C:get_val_internal(get(this), 'baseConfig'),
                    State=get(this),
                    Vars=get(vars),
                    cog:object_state_changed(Cog, O, State),
                    put(this,cog:get_object_state(Callee#object.cog, Callee)),
                    put(task_info,(get(task_info))#task_info{this=Callee}),
                    T=object:get_class_from_state(get(this)), % it's the callee state already
                    Result=T:'m_mcl'(Callee, V_microserviceInstances,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_mcl',[C:get_val_internal(get(this), 'baseConfig'),[]],#task_info{method= <<"mcl"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)()));
            false ->         ok
        end,
         %% global_scaling_alg.abs:92--92
        C:get_val_internal(get(this), 'mcl')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getSystemMCL and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:95
 %% global_scaling_alg.abs:95
'm_getScalingActions'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% global_scaling_alg.abs:96--96
        put(vars, (get(vars))#{'tmp' => C:get_val_internal(get(this), 'scalingAct')}),
         %% global_scaling_alg.abs:97--97
        case (not cmp:eq(C:get_val_internal(get(this), 'scalingAct'),<<""/utf8>>)) of
            true ->  %% global_scaling_alg.abs:97--97
            put(this, C:set_val_internal(get(this), 'scalingAct',<<""/utf8>>));
            false ->         ok
        end,
         %% global_scaling_alg.abs:98--98
        maps:get('tmp', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getScalingActions and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:101
 %% global_scaling_alg.abs:101
'm_computeTotalCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_ratio_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'ratio' => V_ratio_0 }),
    try
         %% global_scaling_alg.abs:102--102
        put(vars, (get(vars))#{'totalCost' => C:get_val_internal(get(this), 'initialCost')}),
         %% global_scaling_alg.abs:103--109
        put(vars, (get(vars))#{'tmp883195923' => C:get_val_internal(get(this), 'orchestrationDeltas')}),
         %% global_scaling_alg.abs:103--109
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp883195923', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% global_scaling_alg.abs:103--109
                put(vars, (get(vars))#{'orch' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp883195923', get(vars)),[O,DC| Stack])}),
                 %% global_scaling_alg.abs:103--109
                put(vars, (get(vars))#{'tmp883195923' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp883195923', get(vars)),[O,DC| Stack])}),
                 %% global_scaling_alg.abs:104--104
                put(vars, (get(vars))#{'wrapper' => maps:get('orch', get(vars))}),
                 %% global_scaling_alg.abs:105--105
                put(vars, (get(vars))#{'scaleCost' => (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_computeCostPerScaling'(Callee,maps:get('wrapper', get(vars)),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_wrapper = maps:get('wrapper', get(vars)),
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_computeCostPerScaling'(Callee, V_wrapper,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_computeCostPerScaling',[maps:get('wrapper', get(vars)),[]],#task_info{method= <<"computeCostPerScaling"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% global_scaling_alg.abs:106--106
                put(vars, (get(vars))#{'deplTimes' => (fun() -> case maps:get('wrapper', get(vars)) of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getDeplTimes'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getDeplTimes'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getDeplTimes',[[]],#task_info{method= <<"getDeplTimes"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% global_scaling_alg.abs:107--107
                put(vars, (get(vars))#{'scaleCost' := ( rationals:mul(maps:get('scaleCost', get(vars)),maps:get('deplTimes', get(vars)))) }),
                 %% global_scaling_alg.abs:108--108
                put(vars, (get(vars))#{'totalCost' := ( rationals:add(maps:get('totalCost', get(vars)),maps:get('scaleCost', get(vars)))) }),
            Loop([])  end end)
        ([]),
         %% global_scaling_alg.abs:110--110
         rationals:rdiv(( rationals:mul(maps:get('totalCost', get(vars)),maps:get('ratio', get(vars)))) ,3600000) 
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method computeTotalCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:113
 %% global_scaling_alg.abs:113
'm_computeInstanceNumber'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% global_scaling_alg.abs:114--114
        put(vars, (get(vars))#{'nInstances' => m_Param_funs:f_initInstancesNumber(Cog,[O,DC| Stack])}),
         %% global_scaling_alg.abs:115--120
        put(vars, (get(vars))#{'tmp2077672286' => C:get_val_internal(get(this), 'orchestrationDeltas')}),
         %% global_scaling_alg.abs:115--120
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp2077672286', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% global_scaling_alg.abs:115--120
                put(vars, (get(vars))#{'orch' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp2077672286', get(vars)),[O,DC| Stack])}),
                 %% global_scaling_alg.abs:115--120
                put(vars, (get(vars))#{'tmp2077672286' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp2077672286', get(vars)),[O,DC| Stack])}),
                 %% global_scaling_alg.abs:116--116
                put(vars, (get(vars))#{'wrapper' => maps:get('orch', get(vars))}),
                 %% global_scaling_alg.abs:117--117
                put(vars, (get(vars))#{'n' => (fun() -> case maps:get('wrapper', get(vars)) of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getDeployedInstances'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getDeployedInstances'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getDeployedInstances',[[]],#task_info{method= <<"getDeployedInstances"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% global_scaling_alg.abs:118--118
                put(vars, (get(vars))#{'deplTimes' => (fun() -> case maps:get('wrapper', get(vars)) of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getDeplTimes'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getDeplTimes'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getDeplTimes',[[]],#task_info{method= <<"getDeplTimes"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% global_scaling_alg.abs:119--119
                put(vars, (get(vars))#{'nInstances' := (maps:get('nInstances', get(vars)) + (maps:get('n', get(vars)) * maps:get('deplTimes', get(vars))) ) }),
            Loop([])  end end)
        ([]),
         %% global_scaling_alg.abs:121--121
        maps:get('nInstances', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method computeInstanceNumber and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:126
 %% global_scaling_alg.abs:126
'm_computeCostPerScaling'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_wrapper_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'wrapper' => V_wrapper_0 }),
    try
         %% global_scaling_alg.abs:127--127
        put(vars, (get(vars))#{'dcs' => (fun() -> case maps:get('wrapper', get(vars)) of
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
        end end)()}),
         %% global_scaling_alg.abs:128--128
        put(vars, (get(vars))#{'cost' => 0}),
         %% global_scaling_alg.abs:129--132
        put(vars, (get(vars))#{'tmp1447955052' => maps:get('dcs', get(vars))}),
         %% global_scaling_alg.abs:129--132
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1447955052', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% global_scaling_alg.abs:129--132
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1447955052', get(vars)),[O,DC| Stack])}),
                 %% global_scaling_alg.abs:129--132
                put(vars, (get(vars))#{'tmp1447955052' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1447955052', get(vars)),[O,DC| Stack])}),
                 %% global_scaling_alg.abs:130--130
                put(vars, (get(vars))#{'singleCost' => (fun() -> case maps:get('dc', get(vars)) of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getCostPerInterval'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getCostPerInterval'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getCostPerInterval',[[]],#task_info{method= <<"getCostPerInterval"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% global_scaling_alg.abs:131--131
                put(vars, (get(vars))#{'cost' := ( rationals:add(maps:get('cost', get(vars)),maps:get('singleCost', get(vars)))) }),
            Loop([])  end end)
        ([]),
         %% global_scaling_alg.abs:133--133
        maps:get('cost', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method computeCostPerScaling and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:136
 %% global_scaling_alg.abs:136
'm_mcl'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_microserviceInstances_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'microserviceInstances' => V_microserviceInstances_0 }),
    try
         %% global_scaling_alg.abs:137--137
        put(vars, (get(vars))#{'mcl' => 0}),
         %% global_scaling_alg.abs:138--138
        put(vars, (get(vars))#{'i' => 0}),
         %% global_scaling_alg.abs:139--139
        []=(fun Loop ([])->
            case cmp:lt(maps:get('i', get(vars)),m_ABS_StdLib_funs:f_length(Cog,maps:get('microserviceInstances', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% global_scaling_alg.abs:140--140
                put(vars, (get(vars))#{'n_inst' => m_ABS_StdLib_funs:f_nth(Cog,maps:get('microserviceInstances', get(vars)),maps:get('i', get(vars)),[O,DC| Stack])}),
                 %% global_scaling_alg.abs:141--141
                put(vars, (get(vars))#{'handled_frequency' =>  rationals:rdiv(( rationals:mul(maps:get('n_inst', get(vars)),m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'mcls'),maps:get('i', get(vars)),[O,DC| Stack]))) ,m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'mfs'),maps:get('i', get(vars)),[O,DC| Stack])) }),
                 %% global_scaling_alg.abs:142--142
                case (cmp:lt(maps:get('handled_frequency', get(vars)),maps:get('mcl', get(vars)))) or (cmp:eq(maps:get('mcl', get(vars)),0)) of
                    true ->  %% global_scaling_alg.abs:142--142
                    put(vars, (get(vars))#{'mcl' := maps:get('handled_frequency', get(vars))});
                    false ->                 ok
                end,
                 %% global_scaling_alg.abs:143--143
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% global_scaling_alg.abs:145--145
        maps:get('mcl', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method mcl and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:148
 %% global_scaling_alg.abs:148
'm_vSum'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_v1_0,V_v2_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'v1' => V_v1_0,
 'v2' => V_v2_0 }),
    try
         %% global_scaling_alg.abs:149--149
        put(vars, (get(vars))#{'res' => m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack])}),
         %% global_scaling_alg.abs:150--150
        []=(fun Loop ([])->
            case (not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('v1', get(vars)),[O,DC| Stack]))) and (not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('v2', get(vars)),[O,DC| Stack]))) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% global_scaling_alg.abs:151--151
                put(vars, (get(vars))#{'res' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('res', get(vars)),(m_ABS_StdLib_funs:f_head(Cog,maps:get('v1', get(vars)),[O,DC| Stack]) + m_ABS_StdLib_funs:f_head(Cog,maps:get('v2', get(vars)),[O,DC| Stack])) ,[O,DC| Stack])}),
                 %% global_scaling_alg.abs:152--152
                put(vars, (get(vars))#{'v1' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('v1', get(vars)),[O,DC| Stack])}),
                 %% global_scaling_alg.abs:153--153
                put(vars, (get(vars))#{'v2' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('v2', get(vars)),[O,DC| Stack])}),
            Loop([])  end end)
        ([]),
         %% global_scaling_alg.abs:155--155
        maps:get('res', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method vSum and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:158
 %% global_scaling_alg.abs:158
'm_createEmpty'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_nDeltas_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'nDeltas' => V_nDeltas_0 }),
    try
         %% global_scaling_alg.abs:159--159
        put(vars, (get(vars))#{'empty' => m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack])}),
         %% global_scaling_alg.abs:160--160
        []=(fun Loop ([])->
            case cmp:gt(maps:get('nDeltas', get(vars)),0) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% global_scaling_alg.abs:160--160
                put(vars, (get(vars))#{'empty' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('empty', get(vars)),0,[O,DC| Stack])}),
                 %% global_scaling_alg.abs:160--160
                put(vars, (get(vars))#{'nDeltas' := (maps:get('nDeltas', get(vars)) - 1) }),
            Loop([])  end end)
        ([]),
         %% global_scaling_alg.abs:161--161
        maps:get('empty', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method createEmpty and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:164
 %% global_scaling_alg.abs:164
'm_incrementValue'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_index_0,V_list_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'index' => V_index_0,
 'list' => V_list_0 }),
    try
         %% global_scaling_alg.abs:165--165
        put(vars, (get(vars))#{'updatedList' => m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack])}),
         %% global_scaling_alg.abs:166--166
        put(vars, (get(vars))#{'i' => 0}),
         %% global_scaling_alg.abs:167--167
        []=(fun Loop ([])->
            case cmp:lt(maps:get('i', get(vars)),m_ABS_StdLib_funs:f_length(Cog,maps:get('list', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% global_scaling_alg.abs:168--168
                case cmp:eq(maps:get('i', get(vars)),maps:get('index', get(vars))) of
                    true ->  %% global_scaling_alg.abs:168--168
                    put(vars, (get(vars))#{'updatedList' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('updatedList', get(vars)),(m_ABS_StdLib_funs:f_nth(Cog,maps:get('list', get(vars)),maps:get('i', get(vars)),[O,DC| Stack]) + 1) ,[O,DC| Stack])});
                    false ->                  %% global_scaling_alg.abs:169--169
                put(vars, (get(vars))#{'updatedList' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('updatedList', get(vars)),m_ABS_StdLib_funs:f_nth(Cog,maps:get('list', get(vars)),maps:get('i', get(vars)),[O,DC| Stack]),[O,DC| Stack])})
                end,
                 %% global_scaling_alg.abs:170--170
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% global_scaling_alg.abs:172--172
        maps:get('updatedList', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method incrementValue and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:175
 %% global_scaling_alg.abs:175
'm_addDeltas'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_scaleIndex_0,V_currentPoliciesConfig_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'scaleIndex' => V_scaleIndex_0,
 'currentPoliciesConfig' => V_currentPoliciesConfig_0 }),
    try
         %% global_scaling_alg.abs:176--176
        put(vars, (get(vars))#{'configDeltas' => (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_incrementValue'(Callee,maps:get('scaleIndex', get(vars)),maps:get('currentPoliciesConfig', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_index = maps:get('scaleIndex', get(vars)),
                V_list = maps:get('currentPoliciesConfig', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_incrementValue'(Callee, V_index, V_list,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_incrementValue',[maps:get('scaleIndex', get(vars)),maps:get('currentPoliciesConfig', get(vars)),[]],#task_info{method= <<"incrementValue"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% global_scaling_alg.abs:177--177
        put(vars, (get(vars))#{'i' => 0}),
         %% global_scaling_alg.abs:178--178
        []=(fun Loop ([])->
            case cmp:lt(maps:get('i', get(vars)),maps:get('scaleIndex', get(vars))) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% global_scaling_alg.abs:179--179
                put(vars, (get(vars))#{'configDeltas' := (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_incrementValue'(Callee,maps:get('i', get(vars)),maps:get('configDeltas', get(vars)),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_index = maps:get('i', get(vars)),
                        V_list = maps:get('configDeltas', get(vars)),
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_incrementValue'(Callee, V_index, V_list,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_incrementValue',[maps:get('i', get(vars)),maps:get('configDeltas', get(vars)),[]],#task_info{method= <<"incrementValue"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% global_scaling_alg.abs:180--180
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% global_scaling_alg.abs:182--182
        maps:get('configDeltas', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method addDeltas and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% global_scaling_alg.abs:185
 %% global_scaling_alg.abs:185
'm_recordAction'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_scalingTrace_0,V_printableconfig_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'scalingTrace' => V_scalingTrace_0,
 'printableconfig' => V_printableconfig_0 }),
    try
         %% global_scaling_alg.abs:186--186
        put(vars, (get(vars))#{'toPrint' => <<""/utf8>>}),
         %% global_scaling_alg.abs:187--187
        put(vars, (get(vars))#{'i' => 0}),
         %% global_scaling_alg.abs:188--188
        []=(fun Loop ([])->
            case cmp:lt(maps:get('i', get(vars)),C:get_val_internal(get(this), 'numScales')) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% global_scaling_alg.abs:189--189
                put(vars, (get(vars))#{'diff' => (m_ABS_StdLib_funs:f_nth(Cog,maps:get('printableconfig', get(vars)),maps:get('i', get(vars)),[O,DC| Stack]) - m_ABS_StdLib_funs:f_nth(Cog,maps:get('scalingTrace', get(vars)),maps:get('i', get(vars)),[O,DC| Stack])) }),
                 %% global_scaling_alg.abs:190--190
                put(vars, (get(vars))#{'name' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'scaleNames'),maps:get('i', get(vars)),[O,DC| Stack])}),
                 %% global_scaling_alg.abs:191--191
                case cmp:gt(maps:get('diff', get(vars)),0) of
                    true ->  %% global_scaling_alg.abs:191--191
                    put(vars, (get(vars))#{'toPrint' := iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([maps:get('toPrint', get(vars)), <<" "/utf8>>]), maps:get('name', get(vars))]), <<"-upx"/utf8>>]), builtin:toString(Cog,maps:get('diff', get(vars)))])});
                    false ->                  %% global_scaling_alg.abs:192--192
                case cmp:lt(maps:get('diff', get(vars)),0) of
                    true ->  %% global_scaling_alg.abs:192--192
                    put(vars, (get(vars))#{'toPrint' := iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([maps:get('toPrint', get(vars)), <<" "/utf8>>]), maps:get('name', get(vars))]), <<"-downx"/utf8>>]), builtin:toString(Cog,( - maps:get('diff', get(vars))))])});
                    false ->                 ok
                end
                end,
                 %% global_scaling_alg.abs:193--193
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% global_scaling_alg.abs:195--195
        maps:get('toPrint', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method recordAction and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
