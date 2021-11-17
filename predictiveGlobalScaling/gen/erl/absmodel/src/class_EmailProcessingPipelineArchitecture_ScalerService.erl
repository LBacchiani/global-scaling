-module(class_EmailProcessingPipelineArchitecture_ScalerService).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"ScalerServiceInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_ScalerService,'kbig'=null,'mcls'=null,'mfs'=null,'baseConfig'=null,'scaleComponents'=null,'deployedDeltas'=null,'orchestrationDeltas'=null,'scaleNames'=null,'scalingTrace'=null,'mcl'=null,'numScales'=null,'scalingAct'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:962
'get_val_internal'(#state{'kbig'=G},'kbig')->
    object:register_read('kbig'),
    G;
 %% code.abs:964
'get_val_internal'(#state{'mcls'=G},'mcls')->
    object:register_read('mcls'),
    G;
 %% code.abs:965
'get_val_internal'(#state{'mfs'=G},'mfs')->
    object:register_read('mfs'),
    G;
 %% code.abs:966
'get_val_internal'(#state{'baseConfig'=G},'baseConfig')->
    object:register_read('baseConfig'),
    G;
 %% code.abs:978
'get_val_internal'(#state{'scaleComponents'=G},'scaleComponents')->
    object:register_read('scaleComponents'),
    G;
 %% code.abs:979
'get_val_internal'(#state{'deployedDeltas'=G},'deployedDeltas')->
    object:register_read('deployedDeltas'),
    G;
 %% code.abs:980
'get_val_internal'(#state{'orchestrationDeltas'=G},'orchestrationDeltas')->
    object:register_read('orchestrationDeltas'),
    G;
 %% code.abs:981
'get_val_internal'(#state{'scaleNames'=G},'scaleNames')->
    object:register_read('scaleNames'),
    G;
 %% code.abs:982
'get_val_internal'(#state{'scalingTrace'=G},'scalingTrace')->
    object:register_read('scalingTrace'),
    G;
 %% code.abs:983
'get_val_internal'(#state{'mcl'=G},'mcl')->
    object:register_read('mcl'),
    G;
 %% code.abs:984
'get_val_internal'(#state{'numScales'=G},'numScales')->
    object:register_read('numScales'),
    G;
 %% code.abs:985
'get_val_internal'(#state{'scalingAct'=G},'scalingAct')->
    object:register_read('scalingAct'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:962
'set_val_internal'(S,'kbig',V)->
    object:register_write('kbig'),
    S#state{'kbig'=V};
 %% code.abs:964
'set_val_internal'(S,'mcls',V)->
    object:register_write('mcls'),
    S#state{'mcls'=V};
 %% code.abs:965
'set_val_internal'(S,'mfs',V)->
    object:register_write('mfs'),
    S#state{'mfs'=V};
 %% code.abs:966
'set_val_internal'(S,'baseConfig',V)->
    object:register_write('baseConfig'),
    S#state{'baseConfig'=V};
 %% code.abs:978
'set_val_internal'(S,'scaleComponents',V)->
    object:register_write('scaleComponents'),
    S#state{'scaleComponents'=V};
 %% code.abs:979
'set_val_internal'(S,'deployedDeltas',V)->
    object:register_write('deployedDeltas'),
    S#state{'deployedDeltas'=V};
 %% code.abs:980
'set_val_internal'(S,'orchestrationDeltas',V)->
    object:register_write('orchestrationDeltas'),
    S#state{'orchestrationDeltas'=V};
 %% code.abs:981
'set_val_internal'(S,'scaleNames',V)->
    object:register_write('scaleNames'),
    S#state{'scaleNames'=V};
 %% code.abs:982
'set_val_internal'(S,'scalingTrace',V)->
    object:register_write('scalingTrace'),
    S#state{'scalingTrace'=V};
 %% code.abs:983
'set_val_internal'(S,'mcl',V)->
    object:register_write('mcl'),
    S#state{'mcl'=V};
 %% code.abs:984
'set_val_internal'(S,'numScales',V)->
    object:register_write('numScales'),
    S#state{'numScales'=V};
 %% code.abs:985
'set_val_internal'(S,'scalingAct',V)->
    object:register_write('scalingAct'),
    S#state{'scalingAct'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'kbig', S#state.'kbig' }
        , { 'mcls', S#state.'mcls' }
        , { 'mfs', S#state.'mfs' }
        , { 'baseConfig', S#state.'baseConfig' }
        , { 'scaleComponents', S#state.'scaleComponents' }
        , { 'deployedDeltas', S#state.'deployedDeltas' }
        , { 'orchestrationDeltas', S#state.'orchestrationDeltas' }
        , { 'scaleNames', S#state.'scaleNames' }
        , { 'scalingTrace', S#state.'scalingTrace' }
        , { 'mcl', S#state.'mcl' }
        , { 'numScales', S#state.'numScales' }
        , { 'scalingAct', S#state.'scalingAct' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_kbig,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'kbig',P_kbig)),
     %% code.abs:964--964
    put(this, C:set_val_internal(get(this),'mcls',m_ABS_StdLib_funs:f_list(Cog,[ 116, 110, 100, 120, 231, 231, 90, 90, 300] ,[O,DC| Stack]))),
     %% code.abs:965--965
    put(this, C:set_val_internal(get(this),'mfs',m_ABS_StdLib_funs:f_list(Cog,[ 1, 1,  rationals:rdiv(5,2) , 2,  rationals:rdiv(3,2) ,  rationals:rdiv(3,2) ,  rationals:rdiv(3,2) ,  rationals:rdiv(3,2) , 5] ,[O,DC| Stack]))),
     %% code.abs:966--977
    put(this, C:set_val_internal(get(this),'baseConfig',m_ABS_StdLib_funs:f_list(Cog,[ 1, 1, 2, 1, 1, 1, 1, 1, 1] ,[O,DC| Stack]))),
     %% code.abs:978--978
    put(this, C:set_val_internal(get(this),'scaleComponents',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% code.abs:979--979
    put(this, C:set_val_internal(get(this),'deployedDeltas',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% code.abs:980--980
    put(this, C:set_val_internal(get(this),'orchestrationDeltas',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% code.abs:981--981
    put(this, C:set_val_internal(get(this),'scaleNames',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% code.abs:982--982
    put(this, C:set_val_internal(get(this),'scalingTrace',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% code.abs:983--983
    put(this, C:set_val_internal(get(this),'mcl',0)),
     %% code.abs:984--984
    put(this, C:set_val_internal(get(this),'numScales',0)),
     %% code.abs:985--985
    put(this, C:set_val_internal(get(this),'scalingAct',<<""/utf8>>)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:987
 %% code.abs:987
'm_insertScalingElements'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_components_0,V_scalingObj_0,V_scalingName_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'components' => V_components_0,
 'scalingObj' => V_scalingObj_0,
 'scalingName' => V_scalingName_0 }),
    try
         %% code.abs:988--988
        put(this, C:set_val_internal(get(this), 'scaleComponents',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'scaleComponents'),maps:get('components', get(vars)),[O,DC| Stack]))),
         %% code.abs:989--989
        put(this, C:set_val_internal(get(this), 'deployedDeltas',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'deployedDeltas'),0,[O,DC| Stack]))),
         %% code.abs:990--990
        put(this, C:set_val_internal(get(this), 'orchestrationDeltas',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'orchestrationDeltas'),maps:get('scalingObj', get(vars)),[O,DC| Stack]))),
         %% code.abs:991--991
        put(this, C:set_val_internal(get(this), 'scalingTrace',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'scalingTrace'),0,[O,DC| Stack]))),
         %% code.abs:992--992
        put(this, C:set_val_internal(get(this), 'scaleNames',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'scaleNames'),maps:get('scalingName', get(vars)),[O,DC| Stack]))),
         %% code.abs:993--993
        put(this, C:set_val_internal(get(this), 'numScales',(C:get_val_internal(get(this), 'numScales') + 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertScalingElements and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:997
 %% code.abs:997
'm_scale'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_inbound_workload_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'inbound_workload' => V_inbound_workload_0 }),
    try
         %% code.abs:998--998
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
                TempFuture = cog:create_task(Callee,'m_createEmpty',[C:get_val_internal(get(this), 'numScales'),[]],#task_info{method= <<"createEmpty"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:999--999
        put(vars, (get(vars))#{'printableconfig' => maps:get('configDeltas', get(vars))}),
         %% code.abs:1000--1000
        put(vars, (get(vars))#{'config' => C:get_val_internal(get(this), 'baseConfig')}),
         %% code.abs:1001--1001
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
                TempFuture = cog:create_task(Callee,'m_mcl',[maps:get('config', get(vars)),[]],#task_info{method= <<"mcl"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% code.abs:1002--1002
        put(vars, (get(vars))#{'configFound' => cmp:ge(( rationals:sub(( rationals:sub(C:get_val_internal(get(this), 'mcl'),C:get_val_internal(get(this), 'kbig'))) ,maps:get('inbound_workload', get(vars)))) ,0)}),
         %% code.abs:1003--1003
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
                 %% code.abs:1004--1004
                put(vars, (get(vars))#{'candidateConfig' => C:get_val_internal(get(this), 'baseConfig')}),
                 %% code.abs:1005--1005
                put(vars, (get(vars))#{'i' => -1}),
                 %% code.abs:1006--1006
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
                         %% code.abs:1007--1007
                        put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
                         %% code.abs:1008--1008
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
                                TempFuture = cog:create_task(Callee,'m_vSum',[maps:get('config', get(vars)),m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'scaleComponents'),maps:get('i', get(vars)),[O,DC| Stack]),[]],#task_info{method= <<"vSum"/utf8>>},Cog, true),
                                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                        end end)()}),
                         %% code.abs:1009--1009
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
                                TempFuture = cog:create_task(Callee,'m_mcl',[maps:get('candidateConfig', get(vars)),[]],#task_info{method= <<"mcl"/utf8>>},Cog, true),
                                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                        end end)())),
                         %% code.abs:1010--1010
                        put(vars, (get(vars))#{'configFound' := cmp:ge(( rationals:sub(( rationals:sub(C:get_val_internal(get(this), 'mcl'),C:get_val_internal(get(this), 'kbig'))) ,maps:get('inbound_workload', get(vars)))) ,0)}),
                    Loop([])  end end)
                ([]),
                 %% code.abs:1012--1012
                put(vars, (get(vars))#{'config' := maps:get('candidateConfig', get(vars))}),
                 %% code.abs:1013--1013
                put(vars, (get(vars))#{'printableconfig' := (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_incrementValue'(Callee,maps:get('i', get(vars)),maps:get('printableconfig', get(vars)),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_index = maps:get('i', get(vars)),
                        V_list = maps:get('printableconfig', get(vars)),
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
                        TempFuture = cog:create_task(Callee,'m_incrementValue',[maps:get('i', get(vars)),maps:get('printableconfig', get(vars)),[]],#task_info{method= <<"incrementValue"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:1014--1014
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
                        TempFuture = cog:create_task(Callee,'m_addDeltas',[maps:get('i', get(vars)),maps:get('configDeltas', get(vars)),[]],#task_info{method= <<"addDeltas"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
            Loop([])  end end)
        ([]),
         %% code.abs:1016--1016
        T_1 = (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_reconfigure'(Callee,C:get_val_internal(get(this), 'deployedDeltas'),maps:get('configDeltas', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_deployedDeltas = C:get_val_internal(get(this), 'deployedDeltas'),
                V_configDeltas = maps:get('configDeltas', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_reconfigure'(Callee, V_deployedDeltas, V_configDeltas,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_reconfigure',[C:get_val_internal(get(this), 'deployedDeltas'),maps:get('configDeltas', get(vars)),[]],#task_info{method= <<"reconfigure"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% code.abs:1017--1017
        put(this, C:set_val_internal(get(this), 'scalingAct',(fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_recordAction'(Callee,C:get_val_internal(get(this), 'scalingTrace'),maps:get('printableconfig', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_scalingTrace = C:get_val_internal(get(this), 'scalingTrace'),
                V_printableconfig = maps:get('printableconfig', get(vars)),
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
                TempFuture = cog:create_task(Callee,'m_recordAction',[C:get_val_internal(get(this), 'scalingTrace'),maps:get('printableconfig', get(vars)),[]],#task_info{method= <<"recordAction"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% code.abs:1018--1018
        put(this, C:set_val_internal(get(this), 'deployedDeltas',maps:get('configDeltas', get(vars)))),
         %% code.abs:1019--1019
        put(this, C:set_val_internal(get(this), 'scalingTrace',maps:get('printableconfig', get(vars)))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method scale and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1022
 %% code.abs:1022
'm_getSystemMCL'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1023--1023
        case cmp:eq(C:get_val_internal(get(this), 'mcl'),0) of
            true ->  %% code.abs:1023--1023
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
                    TempFuture = cog:create_task(Callee,'m_mcl',[C:get_val_internal(get(this), 'baseConfig'),[]],#task_info{method= <<"mcl"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)()));
            false ->         ok
        end,
         %% code.abs:1024--1024
        C:get_val_internal(get(this), 'mcl')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getSystemMCL and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1027
 %% code.abs:1027
'm_getScalingActions'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1028--1028
        put(vars, (get(vars))#{'tmp' => C:get_val_internal(get(this), 'scalingAct')}),
         %% code.abs:1029--1029
        case (not cmp:eq(C:get_val_internal(get(this), 'scalingAct'),<<""/utf8>>)) of
            true ->  %% code.abs:1029--1029
            put(this, C:set_val_internal(get(this), 'scalingAct',<<""/utf8>>));
            false ->         ok
        end,
         %% code.abs:1030--1030
        maps:get('tmp', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getScalingActions and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1035
 %% code.abs:1035
'm_computeInstanceNumber'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1036--1036
        put(vars, (get(vars))#{'nInstances' => 0}),
         %% code.abs:1037--1042
        put(vars, (get(vars))#{'tmp930748259' => C:get_val_internal(get(this), 'orchestrationDeltas')}),
         %% code.abs:1037--1042
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp930748259', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:1037--1042
                put(vars, (get(vars))#{'orch' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp930748259', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1037--1042
                put(vars, (get(vars))#{'tmp930748259' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp930748259', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1038--1038
                put(vars, (get(vars))#{'wrapper' => maps:get('orch', get(vars))}),
                 %% code.abs:1039--1039
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
                        TempFuture = cog:create_task(Callee,'m_getDeployedInstances',[[]],#task_info{method= <<"getDeployedInstances"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:1040--1040
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
                        TempFuture = cog:create_task(Callee,'m_getDeplTimes',[[]],#task_info{method= <<"getDeplTimes"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:1041--1041
                put(vars, (get(vars))#{'nInstances' := ( rationals:add(maps:get('nInstances', get(vars)),(maps:get('n', get(vars)) * maps:get('deplTimes', get(vars))) )) }),
            Loop([])  end end)
        ([]),
         %% code.abs:1043--1043
        maps:get('nInstances', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method computeInstanceNumber and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1046
 %% code.abs:1046
'm_mcl'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_microserviceInstances_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'microserviceInstances' => V_microserviceInstances_0 }),
    try
         %% code.abs:1047--1047
        put(vars, (get(vars))#{'mcl' => 1000000000}),
         %% code.abs:1048--1048
        put(vars, (get(vars))#{'i' => 0}),
         %% code.abs:1049--1049
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
                 %% code.abs:1050--1050
                put(vars, (get(vars))#{'n_inst' => m_ABS_StdLib_funs:f_nth(Cog,maps:get('microserviceInstances', get(vars)),maps:get('i', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1051--1051
                put(vars, (get(vars))#{'handled_frequency' =>  rationals:rdiv(( rationals:mul(maps:get('n_inst', get(vars)),m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'mcls'),maps:get('i', get(vars)),[O,DC| Stack]))) ,m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'mfs'),maps:get('i', get(vars)),[O,DC| Stack])) }),
                 %% code.abs:1052--1052
                case cmp:lt(maps:get('handled_frequency', get(vars)),maps:get('mcl', get(vars))) of
                    true ->  %% code.abs:1052--1052
                    put(vars, (get(vars))#{'mcl' := maps:get('handled_frequency', get(vars))});
                    false ->                 ok
                end,
                 %% code.abs:1053--1053
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% code.abs:1055--1055
        maps:get('mcl', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method mcl and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1058
 %% code.abs:1058
'm_vSum'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_v1_0,V_v2_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'v1' => V_v1_0,
 'v2' => V_v2_0 }),
    try
         %% code.abs:1059--1059
        put(vars, (get(vars))#{'i' => 0}),
         %% code.abs:1060--1060
        put(vars, (get(vars))#{'res' => m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack])}),
         %% code.abs:1061--1061
        []=(fun Loop ([])->
            case cmp:lt(maps:get('i', get(vars)),m_ABS_StdLib_funs:f_length(Cog,maps:get('v1', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:1062--1062
                put(vars, (get(vars))#{'e1' => m_ABS_StdLib_funs:f_nth(Cog,maps:get('v1', get(vars)),maps:get('i', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1063--1063
                put(vars, (get(vars))#{'e2' => m_ABS_StdLib_funs:f_nth(Cog,maps:get('v2', get(vars)),maps:get('i', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1064--1064
                put(vars, (get(vars))#{'res' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('res', get(vars)),(maps:get('e1', get(vars)) + maps:get('e2', get(vars))) ,[O,DC| Stack])}),
                 %% code.abs:1065--1065
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% code.abs:1067--1067
        maps:get('res', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method vSum and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1070
 %% code.abs:1070
'm_createEmpty'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_nDeltas_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'nDeltas' => V_nDeltas_0 }),
    try
         %% code.abs:1071--1071
        put(vars, (get(vars))#{'n' => maps:get('nDeltas', get(vars))}),
         %% code.abs:1072--1072
        put(vars, (get(vars))#{'empty' => m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack])}),
         %% code.abs:1073--1073
        []=(fun Loop ([])->
            case cmp:gt(maps:get('n', get(vars)),0) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:1073--1073
                put(vars, (get(vars))#{'empty' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('empty', get(vars)),0,[O,DC| Stack])}),
                 %% code.abs:1073--1073
                put(vars, (get(vars))#{'n' := (maps:get('n', get(vars)) - 1) }),
            Loop([])  end end)
        ([]),
         %% code.abs:1074--1074
        maps:get('empty', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method createEmpty and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1077
 %% code.abs:1077
'm_incrementValue'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_index_0,V_list_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'index' => V_index_0,
 'list' => V_list_0 }),
    try
         %% code.abs:1078--1078
        put(vars, (get(vars))#{'updatedList' => m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack])}),
         %% code.abs:1079--1079
        put(vars, (get(vars))#{'i' => 0}),
         %% code.abs:1080--1080
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
                 %% code.abs:1081--1081
                case cmp:eq(maps:get('i', get(vars)),maps:get('index', get(vars))) of
                    true ->  %% code.abs:1081--1081
                    put(vars, (get(vars))#{'updatedList' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('updatedList', get(vars)),(m_ABS_StdLib_funs:f_nth(Cog,maps:get('list', get(vars)),maps:get('i', get(vars)),[O,DC| Stack]) + 1) ,[O,DC| Stack])});
                    false ->                  %% code.abs:1082--1082
                put(vars, (get(vars))#{'updatedList' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('updatedList', get(vars)),m_ABS_StdLib_funs:f_nth(Cog,maps:get('list', get(vars)),maps:get('i', get(vars)),[O,DC| Stack]),[O,DC| Stack])})
                end,
                 %% code.abs:1083--1083
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% code.abs:1085--1085
        maps:get('updatedList', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method incrementValue and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1088
 %% code.abs:1088
'm_addDeltas'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_scaleIndex_0,V_currentPoliciesConfig_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'scaleIndex' => V_scaleIndex_0,
 'currentPoliciesConfig' => V_currentPoliciesConfig_0 }),
    try
         %% code.abs:1089--1089
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
                TempFuture = cog:create_task(Callee,'m_incrementValue',[maps:get('scaleIndex', get(vars)),maps:get('currentPoliciesConfig', get(vars)),[]],#task_info{method= <<"incrementValue"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1090--1090
        put(vars, (get(vars))#{'i' => 0}),
         %% code.abs:1091--1091
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
                 %% code.abs:1092--1092
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
                        TempFuture = cog:create_task(Callee,'m_incrementValue',[maps:get('i', get(vars)),maps:get('configDeltas', get(vars)),[]],#task_info{method= <<"incrementValue"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% code.abs:1093--1093
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% code.abs:1095--1095
        maps:get('configDeltas', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method addDeltas and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1098
 %% code.abs:1098
'm_recordAction'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_scalingTrace_0,V_printableconfig_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'scalingTrace' => V_scalingTrace_0,
 'printableconfig' => V_printableconfig_0 }),
    try
         %% code.abs:1099--1099
        put(vars, (get(vars))#{'toPrint' => <<""/utf8>>}),
         %% code.abs:1100--1100
        put(vars, (get(vars))#{'i' => 0}),
         %% code.abs:1101--1101
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
                 %% code.abs:1102--1102
                put(vars, (get(vars))#{'diff' => (m_ABS_StdLib_funs:f_nth(Cog,maps:get('printableconfig', get(vars)),maps:get('i', get(vars)),[O,DC| Stack]) - m_ABS_StdLib_funs:f_nth(Cog,maps:get('scalingTrace', get(vars)),maps:get('i', get(vars)),[O,DC| Stack])) }),
                 %% code.abs:1103--1103
                put(vars, (get(vars))#{'name' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'scaleNames'),maps:get('i', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1104--1104
                case cmp:gt(maps:get('diff', get(vars)),0) of
                    true ->  %% code.abs:1104--1104
                    put(vars, (get(vars))#{'toPrint' := iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([maps:get('toPrint', get(vars)), <<" "/utf8>>]), maps:get('name', get(vars))]), <<"-upx"/utf8>>]), builtin:toString(Cog,maps:get('diff', get(vars)))])});
                    false ->                  %% code.abs:1105--1105
                case cmp:lt(maps:get('diff', get(vars)),0) of
                    true ->  %% code.abs:1105--1105
                    put(vars, (get(vars))#{'toPrint' := iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([maps:get('toPrint', get(vars)), <<" "/utf8>>]), maps:get('name', get(vars))]), <<"-downx"/utf8>>]), builtin:toString(Cog,( - maps:get('diff', get(vars))))])});
                    false ->                 ok
                end
                end,
                 %% code.abs:1106--1106
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% code.abs:1108--1108
        maps:get('toPrint', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method recordAction and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1111
 %% code.abs:1111
'm_reconfigure'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_deployedDeltas_0,V_configDeltas_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'deployedDeltas' => V_deployedDeltas_0,
 'configDeltas' => V_configDeltas_0 }),
    try
         %% code.abs:1112--1112
        put(vars, (get(vars))#{'i' => 0}),
         %% code.abs:1113--1113
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
                 %% code.abs:1114--1114
                put(vars, (get(vars))#{'diff' => (m_ABS_StdLib_funs:f_nth(Cog,maps:get('configDeltas', get(vars)),maps:get('i', get(vars)),[O,DC| Stack]) - m_ABS_StdLib_funs:f_nth(Cog,maps:get('deployedDeltas', get(vars)),maps:get('i', get(vars)),[O,DC| Stack])) }),
                 %% code.abs:1115--1115
                put(vars, (get(vars))#{'num' => m_ABS_StdLib_funs:f_abs(Cog,maps:get('diff', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1116--1116
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
                         %% code.abs:1117--1117
                        case cmp:gt(maps:get('diff', get(vars)),0) of
                            true ->  %% code.abs:1117--1117
                            T_1 = cog:create_task(m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'orchestrationDeltas'),maps:get('i', get(vars)),[O,DC| Stack]),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
                            T_1;
                            false ->                          %% code.abs:1118--1118
                        T_1 = cog:create_task(m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'orchestrationDeltas'),maps:get('i', get(vars)),[O,DC| Stack]),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
                        T_1
                        end,
                         %% code.abs:1119--1119
                        put(vars, (get(vars))#{'num' := ( rationals:sub(maps:get('num', get(vars)),1)) }),
                    Loop([])  end end)
                ([]),
                 %% code.abs:1121--1121
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method reconfigure and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
