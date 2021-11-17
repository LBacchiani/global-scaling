-module(class_EmailProcessingPipelineArchitecture_SentimentAnalyser_LoadBalancer).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"SentimentAnalyser_LoadBalancerInterface">>, <<"LoadBalancer">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_SentimentAnalyser_LoadBalancer,'dbObj'=null,'instancesConnected'=null,'nextInstance'=null,'plan'=null,'inbound_workload'=null,'pending'=null,'buffer_size'=null,'deplTimes'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:490
'get_val_internal'(#state{'dbObj'=G},'dbObj')->
    G;
 %% code.abs:491
'get_val_internal'(#state{'instancesConnected'=G},'instancesConnected')->
    G;
 %% code.abs:492
'get_val_internal'(#state{'nextInstance'=G},'nextInstance')->
    G;
 %% code.abs:493
'get_val_internal'(#state{'plan'=G},'plan')->
    G;
 %% code.abs:494
'get_val_internal'(#state{'inbound_workload'=G},'inbound_workload')->
    G;
 %% code.abs:495
'get_val_internal'(#state{'pending'=G},'pending')->
    G;
 %% code.abs:496
'get_val_internal'(#state{'buffer_size'=G},'buffer_size')->
    G;
 %% code.abs:497
'get_val_internal'(#state{'deplTimes'=G},'deplTimes')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:490
'set_val_internal'(S,'dbObj',V)->
    S#state{'dbObj'=V};
 %% code.abs:491
'set_val_internal'(S,'instancesConnected',V)->
    S#state{'instancesConnected'=V};
 %% code.abs:492
'set_val_internal'(S,'nextInstance',V)->
    S#state{'nextInstance'=V};
 %% code.abs:493
'set_val_internal'(S,'plan',V)->
    S#state{'plan'=V};
 %% code.abs:494
'set_val_internal'(S,'inbound_workload',V)->
    S#state{'inbound_workload'=V};
 %% code.abs:495
'set_val_internal'(S,'pending',V)->
    S#state{'pending'=V};
 %% code.abs:496
'set_val_internal'(S,'buffer_size',V)->
    S#state{'buffer_size'=V};
 %% code.abs:497
'set_val_internal'(S,'deplTimes',V)->
    S#state{'deplTimes'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'dbObj', S#state.'dbObj' }
        , { 'instancesConnected', S#state.'instancesConnected' }
        , { 'nextInstance', S#state.'nextInstance' }
        , { 'plan', S#state.'plan' }
        , { 'inbound_workload', S#state.'inbound_workload' }
        , { 'pending', S#state.'pending' }
        , { 'buffer_size', S#state.'buffer_size' }
        , { 'deplTimes', S#state.'deplTimes' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_dbObj,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'dbObj',P_dbObj)),
     %% code.abs:491--491
    put(this, C:set_val_internal(get(this),'instancesConnected',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% code.abs:492--492
    put(this, C:set_val_internal(get(this),'nextInstance',-1)),
     %% code.abs:493--493
     %% code.abs:494--494
    put(this, C:set_val_internal(get(this),'inbound_workload',0)),
     %% code.abs:495--495
    put(this, C:set_val_internal(get(this),'pending',0)),
     %% code.abs:496--496
    put(this, C:set_val_internal(get(this),'buffer_size', rationals:rdiv(250,2) )),
     %% code.abs:497--497
    put(this, C:set_val_internal(get(this),'deplTimes',0)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:499
 %% code.abs:499
'm_connectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_newInstance_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'newInstance' => V_newInstance_0 }),
    try
         %% code.abs:500--500
        case (not cmp:eq(C:get_val_internal(get(this), 'plan'),null)) of
            true ->  %% code.abs:500--500
            put(this, C:set_val_internal(get(this), 'deplTimes',(C:get_val_internal(get(this), 'deplTimes') + 1) ));
            false ->         ok
        end,
         %% code.abs:501--501
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('newInstance', get(vars)),[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method connectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:504
 %% code.abs:504
'm_disconnectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:505--505
        put(this, C:set_val_internal(get(this), 'deplTimes',(C:get_val_internal(get(this), 'deplTimes') - 1) )),
         %% code.abs:506--506
        put(vars, (get(vars))#{'removedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),(m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack]) - 1) ,[O,DC| Stack])}),
         %% code.abs:507--507
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_without(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('removedInstance', get(vars)),[O,DC| Stack]))),
         %% code.abs:508--508
        maps:get('removedInstance', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method disconnectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:511
 %% code.abs:511
'm_getCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:512--512
        put(vars, (get(vars))#{'totalCost' => 0}),
         %% code.abs:513--513
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
         %% code.abs:514--514
        case cmp:gt(m_ABS_StdLib_funs:f_length(Cog,maps:get('dcs', get(vars)),[O,DC| Stack]),0) of
            true ->  %% code.abs:515--515
            put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_nth(Cog,maps:get('dcs', get(vars)),0,[O,DC| Stack])}),
             %% code.abs:516--516
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
             %% code.abs:517--517
            put(vars, (get(vars))#{'totalCost' := ( rationals:mul(C:get_val_internal(get(this), 'deplTimes'),maps:get('cost', get(vars)))) });
            false ->         ok
        end,
         %% code.abs:519--519
        maps:get('totalCost', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:522
 %% code.abs:522
'm_connectPlan'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_p_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'p' => V_p_0 }),
    try
         %% code.abs:522--522
        put(this, C:set_val_internal(get(this), 'plan',maps:get('p', get(vars)))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method connectPlan and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:524
 %% code.abs:524
'm_resetMetrics'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:524--524
        put(this, C:set_val_internal(get(this), 'inbound_workload',0)),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method resetMetrics and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:526
 %% code.abs:526
'm_getInstanceNumberDescription'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:526--526
        iolist_to_binary([iolist_to_binary([<<"SA"/utf8>>, builtin:toString(Cog,m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack]))]), <<" "/utf8>>])
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getInstanceNumberDescription and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:528
 %% code.abs:528
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:528--528
        T_1 = cog:create_task(C:get_val_internal(get(this), 'plan'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:530
 %% code.abs:530
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:530--530
        T_1 = cog:create_task(C:get_val_internal(get(this), 'plan'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:532
 %% code.abs:532
'm_getInstancesNumber'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:532--532
        m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack])
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getInstancesNumber and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:534
 %% code.abs:534
'm_returninbound_workload'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:534--534
        C:get_val_internal(get(this), 'inbound_workload')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method returninbound_workload and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:536
 %% code.abs:536
'm_newRequest'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageBody_0,V_messageId_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageBody' => V_messageBody_0,
 'messageId' => V_messageId_0 }),
    try
         %% code.abs:537--537
        put(vars, (get(vars))#{'res' => dataNothing}),
         %% code.abs:538--538
        put(this, C:set_val_internal(get(this), 'inbound_workload',(C:get_val_internal(get(this), 'inbound_workload') + 1) )),
         %% code.abs:539--539
        case cmp:lt(C:get_val_internal(get(this), 'pending'),C:get_val_internal(get(this), 'buffer_size')) of
            true ->  %% code.abs:540--540
            put(this, C:set_val_internal(get(this), 'pending',(C:get_val_internal(get(this), 'pending') + 1) )),
             %% code.abs:541--541
            put(this, C:set_val_internal(get(this), 'nextInstance',((C:get_val_internal(get(this), 'nextInstance') + 1)  rem m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack])) )),
             %% code.abs:542--542
            put(vars, (get(vars))#{'selectedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),C:get_val_internal(get(this), 'nextInstance'),[O,DC| Stack])}),
             %% code.abs:543--543
            put(vars, (get(vars))#{'fut' => cog:create_task(maps:get('selectedInstance', get(vars)),'m_analyzeSentiments',[maps:get('messageBody', get(vars)),O,[]],#task_info{method= <<"analyzeSentiments"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
             %% code.abs:544--544
            put(vars, (get(vars))#{'res' := { dataJust,maps:get('fut', get(vars))}});
            false ->          %% code.abs:545--545
        T_1 = (fun() -> case C:get_val_internal(get(this), 'dbObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_messageLoss'(Callee,maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_messageId = maps:get('messageId', get(vars)),
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
                TempFuture = cog:create_task(Callee,'m_messageLoss',[maps:get('messageId', get(vars)),[]],#task_info{method= <<"messageLoss"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1
        end,
         %% code.abs:546--546
        maps:get('res', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method newRequest and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:549
 %% code.abs:549
'm_removeMessage'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:549--549
        put(this, C:set_val_internal(get(this), 'pending',(C:get_val_internal(get(this), 'pending') - 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method removeMessage and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
