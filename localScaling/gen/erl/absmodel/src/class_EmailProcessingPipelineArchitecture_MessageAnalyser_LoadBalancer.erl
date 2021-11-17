-module(class_EmailProcessingPipelineArchitecture_MessageAnalyser_LoadBalancer).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"LoadBalancer">>, <<"Object">>, <<"MessageAnalyser_LoadBalancerInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_MessageAnalyser_LoadBalancer,'db'=null,'instancesConnected'=null,'nextInstance'=null,'buffer_size'=null,'pending'=null,'inbound_workload'=null,'plan'=null,'deplTimes'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:1030
'get_val_internal'(#state{'db'=G},'db')->
    G;
 %% code.abs:1031
'get_val_internal'(#state{'instancesConnected'=G},'instancesConnected')->
    G;
 %% code.abs:1032
'get_val_internal'(#state{'nextInstance'=G},'nextInstance')->
    G;
 %% code.abs:1033
'get_val_internal'(#state{'buffer_size'=G},'buffer_size')->
    G;
 %% code.abs:1034
'get_val_internal'(#state{'pending'=G},'pending')->
    G;
 %% code.abs:1035
'get_val_internal'(#state{'inbound_workload'=G},'inbound_workload')->
    G;
 %% code.abs:1036
'get_val_internal'(#state{'plan'=G},'plan')->
    G;
 %% code.abs:1037
'get_val_internal'(#state{'deplTimes'=G},'deplTimes')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:1030
'set_val_internal'(S,'db',V)->
    S#state{'db'=V};
 %% code.abs:1031
'set_val_internal'(S,'instancesConnected',V)->
    S#state{'instancesConnected'=V};
 %% code.abs:1032
'set_val_internal'(S,'nextInstance',V)->
    S#state{'nextInstance'=V};
 %% code.abs:1033
'set_val_internal'(S,'buffer_size',V)->
    S#state{'buffer_size'=V};
 %% code.abs:1034
'set_val_internal'(S,'pending',V)->
    S#state{'pending'=V};
 %% code.abs:1035
'set_val_internal'(S,'inbound_workload',V)->
    S#state{'inbound_workload'=V};
 %% code.abs:1036
'set_val_internal'(S,'plan',V)->
    S#state{'plan'=V};
 %% code.abs:1037
'set_val_internal'(S,'deplTimes',V)->
    S#state{'deplTimes'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'db', S#state.'db' }
        , { 'instancesConnected', S#state.'instancesConnected' }
        , { 'nextInstance', S#state.'nextInstance' }
        , { 'buffer_size', S#state.'buffer_size' }
        , { 'pending', S#state.'pending' }
        , { 'inbound_workload', S#state.'inbound_workload' }
        , { 'plan', S#state.'plan' }
        , { 'deplTimes', S#state.'deplTimes' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_db,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'db',P_db)),
     %% code.abs:1031--1031
    put(this, C:set_val_internal(get(this),'instancesConnected',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% code.abs:1032--1032
    put(this, C:set_val_internal(get(this),'nextInstance',-1)),
     %% code.abs:1033--1033
    put(this, C:set_val_internal(get(this),'buffer_size',250)),
     %% code.abs:1034--1034
    put(this, C:set_val_internal(get(this),'pending',0)),
     %% code.abs:1035--1035
    put(this, C:set_val_internal(get(this),'inbound_workload',0)),
     %% code.abs:1036--1036
     %% code.abs:1037--1037
    put(this, C:set_val_internal(get(this),'deplTimes',0)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:1039
 %% code.abs:1039
'm_connectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_newInstance_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'newInstance' => V_newInstance_0 }),
    try
         %% code.abs:1040--1040
        case (not cmp:eq(C:get_val_internal(get(this), 'plan'),null)) of
            true ->  %% code.abs:1040--1040
            put(this, C:set_val_internal(get(this), 'deplTimes',(C:get_val_internal(get(this), 'deplTimes') + 1) ));
            false ->         ok
        end,
         %% code.abs:1041--1041
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('newInstance', get(vars)),[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method connectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1044
 %% code.abs:1044
'm_disconnectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1045--1045
        put(this, C:set_val_internal(get(this), 'deplTimes',(C:get_val_internal(get(this), 'deplTimes') - 1) )),
         %% code.abs:1046--1046
        put(vars, (get(vars))#{'removedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),(m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack]) - 1) ,[O,DC| Stack])}),
         %% code.abs:1047--1047
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_without(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('removedInstance', get(vars)),[O,DC| Stack]))),
         %% code.abs:1048--1048
        maps:get('removedInstance', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method disconnectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1051
 %% code.abs:1051
'm_getCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1052--1052
        put(vars, (get(vars))#{'totalCost' => 0}),
         %% code.abs:1053--1053
        put(vars, (get(vars))#{'dcs' => (fun() -> case C:get_val_internal(get(this), 'plan') of
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
                TempFuture = cog:create_task(Callee,'m_getDeploymentComponent',[[]],#task_info{method= <<"getDeploymentComponent"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1054--1054
        case cmp:gt(m_ABS_StdLib_funs:f_length(Cog,maps:get('dcs', get(vars)),[O,DC| Stack]),0) of
            true ->  %% code.abs:1055--1055
            put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_nth(Cog,maps:get('dcs', get(vars)),0,[O,DC| Stack])}),
             %% code.abs:1056--1056
            put(vars, (get(vars))#{'cost' => (fun() -> case maps:get('dc', get(vars)) of
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
                    TempFuture = cog:create_task(Callee,'m_getCostPerInterval',[[]],#task_info{method= <<"getCostPerInterval"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)()}),
             %% code.abs:1057--1057
            put(vars, (get(vars))#{'totalCost' := ( rationals:mul(C:get_val_internal(get(this), 'deplTimes'),maps:get('cost', get(vars)))) });
            false ->         ok
        end,
         %% code.abs:1059--1059
        maps:get('totalCost', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1062
 %% code.abs:1062
'm_connectPlan'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_p_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'p' => V_p_0 }),
    try
         %% code.abs:1062--1062
        put(this, C:set_val_internal(get(this), 'plan',maps:get('p', get(vars)))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method connectPlan and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1064
 %% code.abs:1064
'm_resetMetrics'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1064--1064
        put(this, C:set_val_internal(get(this), 'inbound_workload',0)),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method resetMetrics and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1066
 %% code.abs:1066
'm_getInstanceNumberDescription'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1066--1066
        iolist_to_binary([iolist_to_binary([<<"MA"/utf8>>, builtin:toString(Cog,m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack]))]), <<" "/utf8>>])
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getInstanceNumberDescription and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1068
 %% code.abs:1068
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1068--1068
        T_1 = cog:create_task(C:get_val_internal(get(this), 'plan'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1070
 %% code.abs:1070
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1070--1070
        T_1 = cog:create_task(C:get_val_internal(get(this), 'plan'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1072
 %% code.abs:1072
'm_getInstancesNumber'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1072--1072
        m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack])
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getInstancesNumber and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1074
 %% code.abs:1074
'm_returninbound_workload'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1074--1074
        C:get_val_internal(get(this), 'inbound_workload')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method returninbound_workload and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1076
 %% code.abs:1076
'm_insertResult'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_res_0,V_id_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'res' => V_res_0,
 'id' => V_id_0 }),
    try
         %% code.abs:1077--1077
        put(this, C:set_val_internal(get(this), 'inbound_workload',(C:get_val_internal(get(this), 'inbound_workload') + 1) )),
         %% code.abs:1078--1078
        case cmp:lt(C:get_val_internal(get(this), 'pending'),C:get_val_internal(get(this), 'buffer_size')) of
            true ->  %% code.abs:1079--1079
            put(this, C:set_val_internal(get(this), 'nextInstance',((C:get_val_internal(get(this), 'nextInstance') + 1)  rem m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack])) )),
             %% code.abs:1080--1080
            put(vars, (get(vars))#{'selectedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),C:get_val_internal(get(this), 'nextInstance'),[O,DC| Stack])}),
             %% code.abs:1081--1081
            put(this, C:set_val_internal(get(this), 'pending',(C:get_val_internal(get(this), 'pending') + 1) )),
             %% code.abs:1082--1082
            T_1 = cog:create_task(maps:get('selectedInstance', get(vars)),'m_insertResult',[maps:get('res', get(vars)),maps:get('id', get(vars)),O,[]],#task_info{method= <<"insertResult"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
            T_1;
            false ->          %% code.abs:1083--1083
        T_1 = (fun() -> case C:get_val_internal(get(this), 'db') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_messageLoss'(Callee,maps:get('id', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_messageId = maps:get('id', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_messageLoss'(Callee, V_messageId,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_messageLoss',[maps:get('id', get(vars)),[]],#task_info{method= <<"messageLoss"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertResult and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1086
 %% code.abs:1086
'm_removeMessage'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1086--1086
        put(this, C:set_val_internal(get(this), 'pending',(C:get_val_internal(get(this), 'pending') - 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method removeMessage and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
