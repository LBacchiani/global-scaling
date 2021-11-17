-module(class_EmailProcessingPipelineArchitecture_MessageParser_LoadBalancer).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"LoadBalancer">>, <<"Object">>, <<"MessageParser_LoadBalancerInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_MessageParser_LoadBalancer,'db'=null,'instancesConnected'=null,'nextInstance'=null,'buffer_size'=null,'pending'=null,'inbound_workload'=null,'id'=null,'plan'=null,'deplTimes'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:225
'get_val_internal'(#state{'db'=G},'db')->
    G;
 %% code.abs:226
'get_val_internal'(#state{'instancesConnected'=G},'instancesConnected')->
    G;
 %% code.abs:227
'get_val_internal'(#state{'nextInstance'=G},'nextInstance')->
    G;
 %% code.abs:228
'get_val_internal'(#state{'buffer_size'=G},'buffer_size')->
    G;
 %% code.abs:229
'get_val_internal'(#state{'pending'=G},'pending')->
    G;
 %% code.abs:230
'get_val_internal'(#state{'inbound_workload'=G},'inbound_workload')->
    G;
 %% code.abs:231
'get_val_internal'(#state{'id'=G},'id')->
    G;
 %% code.abs:232
'get_val_internal'(#state{'plan'=G},'plan')->
    G;
 %% code.abs:233
'get_val_internal'(#state{'deplTimes'=G},'deplTimes')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:225
'set_val_internal'(S,'db',V)->
    S#state{'db'=V};
 %% code.abs:226
'set_val_internal'(S,'instancesConnected',V)->
    S#state{'instancesConnected'=V};
 %% code.abs:227
'set_val_internal'(S,'nextInstance',V)->
    S#state{'nextInstance'=V};
 %% code.abs:228
'set_val_internal'(S,'buffer_size',V)->
    S#state{'buffer_size'=V};
 %% code.abs:229
'set_val_internal'(S,'pending',V)->
    S#state{'pending'=V};
 %% code.abs:230
'set_val_internal'(S,'inbound_workload',V)->
    S#state{'inbound_workload'=V};
 %% code.abs:231
'set_val_internal'(S,'id',V)->
    S#state{'id'=V};
 %% code.abs:232
'set_val_internal'(S,'plan',V)->
    S#state{'plan'=V};
 %% code.abs:233
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
        , { 'id', S#state.'id' }
        , { 'plan', S#state.'plan' }
        , { 'deplTimes', S#state.'deplTimes' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_db,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'db',P_db)),
     %% code.abs:226--226
    put(this, C:set_val_internal(get(this),'instancesConnected',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% code.abs:227--227
    put(this, C:set_val_internal(get(this),'nextInstance',-1)),
     %% code.abs:228--228
    put(this, C:set_val_internal(get(this),'buffer_size',50)),
     %% code.abs:229--229
    put(this, C:set_val_internal(get(this),'pending',0)),
     %% code.abs:230--230
    put(this, C:set_val_internal(get(this),'inbound_workload',0)),
     %% code.abs:231--231
    put(this, C:set_val_internal(get(this),'id',0)),
     %% code.abs:232--232
     %% code.abs:233--233
    put(this, C:set_val_internal(get(this),'deplTimes',0)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:236
 %% code.abs:236
'm_connectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_newInstance_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'newInstance' => V_newInstance_0 }),
    try
         %% code.abs:237--237
        case (not cmp:eq(C:get_val_internal(get(this), 'plan'),null)) of
            true ->  %% code.abs:237--237
            put(this, C:set_val_internal(get(this), 'deplTimes',(C:get_val_internal(get(this), 'deplTimes') + 1) ));
            false ->         ok
        end,
         %% code.abs:238--238
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('newInstance', get(vars)),[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method connectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:241
 %% code.abs:241
'm_disconnectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:242--242
        put(this, C:set_val_internal(get(this), 'deplTimes',(C:get_val_internal(get(this), 'deplTimes') - 1) )),
         %% code.abs:243--243
        put(vars, (get(vars))#{'removedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),(m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack]) - 1) ,[O,DC| Stack])}),
         %% code.abs:244--244
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_without(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('removedInstance', get(vars)),[O,DC| Stack]))),
         %% code.abs:245--245
        maps:get('removedInstance', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method disconnectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:248
 %% code.abs:248
'm_getCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:249--249
        put(vars, (get(vars))#{'totalCost' => 0}),
         %% code.abs:250--250
        put(vars, (get(vars))#{'tmp690361423' => cog:create_task(C:get_val_internal(get(this), 'plan'),'m_getDeploymentComponent',[[]],#task_info{method= <<"getDeploymentComponent"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
         %% code.abs:250--250
        future:await(maps:get('tmp690361423', get(vars)), Cog, [O,DC| Stack]),
        ok,
         %% code.abs:250--250
        put(vars, (get(vars))#{'dcs' => future:get_blocking(maps:get('tmp690361423', get(vars)), Cog, [O,DC| Stack])}),
         %% code.abs:251--251
        case cmp:gt(m_ABS_StdLib_funs:f_length(Cog,maps:get('dcs', get(vars)),[O,DC| Stack]),0) of
            true ->  %% code.abs:252--252
            put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_nth(Cog,maps:get('dcs', get(vars)),0,[O,DC| Stack])}),
             %% code.abs:253--253
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
             %% code.abs:254--254
            put(vars, (get(vars))#{'totalCost' := ( rationals:mul(C:get_val_internal(get(this), 'deplTimes'),maps:get('cost', get(vars)))) });
            false ->         ok
        end,
         %% code.abs:256--256
        maps:get('totalCost', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:259
 %% code.abs:259
'm_connectPlan'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_p_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'p' => V_p_0 }),
    try
         %% code.abs:259--259
        put(this, C:set_val_internal(get(this), 'plan',maps:get('p', get(vars)))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method connectPlan and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:261
 %% code.abs:261
'm_resetMetrics'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:261--261
        put(this, C:set_val_internal(get(this), 'inbound_workload',0)),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method resetMetrics and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:263
 %% code.abs:263
'm_getInstanceNumberDescription'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:263--263
        iolist_to_binary([iolist_to_binary([<<"MP"/utf8>>, builtin:toString(Cog,m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack]))]), <<" "/utf8>>])
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getInstanceNumberDescription and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:265
 %% code.abs:265
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:265--265
        T_1 = cog:create_task(C:get_val_internal(get(this), 'plan'),'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:267
 %% code.abs:267
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:267--267
        T_1 = cog:create_task(C:get_val_internal(get(this), 'plan'),'m_undeploy',[[]],#task_info{method= <<"undeploy"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:269
 %% code.abs:269
'm_getInstancesNumber'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:269--269
        m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack])
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getInstancesNumber and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:271
 %% code.abs:271
'm_returninbound_workload'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:271--271
        C:get_val_internal(get(this), 'inbound_workload')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method returninbound_workload and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:273
 %% code.abs:273
'm_newRequest'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_mailData_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'mailData' => V_mailData_0 }),
    try
         %% code.abs:274--274
        put(this, C:set_val_internal(get(this), 'inbound_workload',(C:get_val_internal(get(this), 'inbound_workload') + 1) )),
         %% code.abs:275--275
        case cmp:lt(C:get_val_internal(get(this), 'pending'),C:get_val_internal(get(this), 'buffer_size')) of
            true ->  %% code.abs:276--276
            put(this, C:set_val_internal(get(this), 'nextInstance',((C:get_val_internal(get(this), 'nextInstance') + 1)  rem m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack])) )),
             %% code.abs:277--277
            put(vars, (get(vars))#{'selectedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),C:get_val_internal(get(this), 'nextInstance'),[O,DC| Stack])}),
             %% code.abs:278--278
            put(this, C:set_val_internal(get(this), 'pending',(C:get_val_internal(get(this), 'pending') + 1) )),
             %% code.abs:279--279
            T_1 = cog:create_task(maps:get('selectedInstance', get(vars)),'m_parseMessage',[maps:get('mailData', get(vars)),O,C:get_val_internal(get(this), 'id'),[]],#task_info{method= <<"parseMessage"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
            T_1,
             %% code.abs:280--280
            put(this, C:set_val_internal(get(this), 'id',(C:get_val_internal(get(this), 'id') + 1) ));
            false ->          %% code.abs:281--281
        T_1 = (fun() -> case C:get_val_internal(get(this), 'db') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_messageLoss'(Callee,<<""/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_messageId = <<""/utf8>>,
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
                TempFuture = cog:create_task(Callee,'m_messageLoss',[<<""/utf8>>,[]],#task_info{method= <<"messageLoss"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method newRequest and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:284
 %% code.abs:284
'm_removeMessage'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:284--284
        put(this, C:set_val_internal(get(this), 'pending',(C:get_val_internal(get(this), 'pending') - 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method removeMessage and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
