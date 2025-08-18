-module(class_DB_DB).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"DBInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_DB_DB,'messageInfo'=null,'inbound_workload'=null,'totalTime'=null,'totalMessages'=null,'rejected'=null}).
'init_internal'()->
    #state{}.

 %% db.abs:21
'get_val_internal'(#state{'messageInfo'=G},'messageInfo')->
    object:register_read('messageInfo'),
    G;
 %% db.abs:22
'get_val_internal'(#state{'inbound_workload'=G},'inbound_workload')->
    object:register_read('inbound_workload'),
    G;
 %% db.abs:23
'get_val_internal'(#state{'totalTime'=G},'totalTime')->
    object:register_read('totalTime'),
    G;
 %% db.abs:24
'get_val_internal'(#state{'totalMessages'=G},'totalMessages')->
    object:register_read('totalMessages'),
    G;
 %% db.abs:25
'get_val_internal'(#state{'rejected'=G},'rejected')->
    object:register_read('rejected'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% db.abs:21
'set_val_internal'(S,'messageInfo',V)->
    object:register_write('messageInfo'),
    S#state{'messageInfo'=V};
 %% db.abs:22
'set_val_internal'(S,'inbound_workload',V)->
    object:register_write('inbound_workload'),
    S#state{'inbound_workload'=V};
 %% db.abs:23
'set_val_internal'(S,'totalTime',V)->
    object:register_write('totalTime'),
    S#state{'totalTime'=V};
 %% db.abs:24
'set_val_internal'(S,'totalMessages',V)->
    object:register_write('totalMessages'),
    S#state{'totalMessages'=V};
 %% db.abs:25
'set_val_internal'(S,'rejected',V)->
    object:register_write('rejected'),
    S#state{'rejected'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'messageInfo', S#state.'messageInfo' }
        , { 'inbound_workload', S#state.'inbound_workload' }
        , { 'totalTime', S#state.'totalTime' }
        , { 'totalMessages', S#state.'totalMessages' }
        , { 'rejected', S#state.'rejected' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
     %% db.abs:21--21
    put(this, C:set_val_internal(get(this),'messageInfo',m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack]))),
     %% db.abs:22--22
    put(this, C:set_val_internal(get(this),'inbound_workload',0)),
     %% db.abs:23--23
    put(this, C:set_val_internal(get(this),'totalTime',0)),
     %% db.abs:24--24
    put(this, C:set_val_internal(get(this),'totalMessages',0)),
     %% db.abs:25--25
    put(this, C:set_val_internal(get(this),'rejected',0)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% db.abs:27
 %% db.abs:27
'm_messageLoss'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageId_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageId' => V_messageId_0 }),
    try
         %% db.abs:28--28
        case cmp:eq(maps:get('messageId', get(vars)),<<""/utf8>>) of
            true ->  %% db.abs:28--28
            put(this, C:set_val_internal(get(this), 'rejected',(C:get_val_internal(get(this), 'rejected') + 1) ));
            false ->          %% db.abs:29--29
        case m_ABS_StdLib_funs:f_isJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('messageId', get(vars)),[O,DC| Stack]),[O,DC| Stack]) of
            true ->  %% db.abs:29--29
            put(this, C:set_val_internal(get(this), 'rejected',(C:get_val_internal(get(this), 'rejected') + 1) )),
             %% db.abs:29--29
            put(this, C:set_val_internal(get(this), 'messageInfo',m_ABS_StdLib_funs:f_removeKey(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('messageId', get(vars)),[O,DC| Stack])));
            false ->         ok
        end
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method messageLoss and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% db.abs:32
 %% db.abs:32
'm_messageArrived'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% db.abs:33--33
        put(this, C:set_val_internal(get(this), 'inbound_workload',(C:get_val_internal(get(this), 'inbound_workload') + 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method messageArrived and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% db.abs:36
 %% db.abs:36
'm_get_inbound_workload'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% db.abs:36--36
        C:get_val_internal(get(this), 'inbound_workload')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method get_inbound_workload and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% db.abs:39
 %% db.abs:39
'm_messageCompleted'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% db.abs:39--39
        C:get_val_internal(get(this), 'totalMessages')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method messageCompleted and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% db.abs:41
 %% db.abs:41
'm_rejectedMessages'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% db.abs:41--41
        C:get_val_internal(get(this), 'rejected')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method rejectedMessages and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% db.abs:43
 %% db.abs:43
'm_insertMessageInformation'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageId_0,V_attachmentsNumber_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageId' => V_messageId_0,
 'attachmentsNumber' => V_attachmentsNumber_0 }),
    try
         %% db.abs:44--44
        put(vars, (get(vars))#{'newResults' => object:new(cog:start(Cog,DC),class_MsgRes_MessageResult,[(3 + maps:get('attachmentsNumber', get(vars))) ,[]],Cog,[O,DC| Stack])}),
         %% db.abs:45--45
        put(this, C:set_val_internal(get(this), 'messageInfo',m_ABS_StdLib_funs:f_insert(Cog,C:get_val_internal(get(this), 'messageInfo'),{ dataPair,maps:get('messageId', get(vars)),{ dataPair,maps:get('newResults', get(vars)),m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack])}},[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertMessageInformation and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% db.abs:48
 %% db.abs:48
'm_insertResult'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_res_0,V_id_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'res' => V_res_0,
 'id' => V_id_0 }),
    try
         %% db.abs:49--49
        put(vars, (get(vars))#{'numberOfActivityWaiting' => -1}),
         %% db.abs:50--50
        put(vars, (get(vars))#{'maybe' => m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('id', get(vars)),[O,DC| Stack])}),
         %% db.abs:51--51
        case m_ABS_StdLib_funs:f_isJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]) of
            true ->  %% db.abs:52--52
            put(vars, (get(vars))#{'actualResults' => m_ABS_StdLib_funs:f_fst(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% db.abs:53--53
            put(vars, (get(vars))#{'analysisTime' => m_ABS_StdLib_funs:f_snd(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% db.abs:54--54
            T_1 = (fun() -> case maps:get('actualResults', get(vars)) of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_insertRes'(Callee,maps:get('res', get(vars)),[O,DC,Vars| Stack]),
                    put(vars, Vars),
                    Result;
                Callee=#object{oid=ObjRef,cog=Cog} ->
                    %% cog-local call
                    V_r = maps:get('res', get(vars)),
                    State=get(this),
                    Vars=get(vars),
                    cog:object_state_changed(Cog, O, State),
                    put(this,cog:get_object_state(Callee#object.cog, Callee)),
                    put(task_info,(get(task_info))#task_info{this=Callee}),
                    T=object:get_class_from_state(get(this)), % it's the callee state already
                    Result=T:'m_insertRes'(Callee, V_r,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_insertRes',[maps:get('res', get(vars)),[]],#task_info{method= <<"insertRes"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_1,
             %% db.abs:55--55
            put(vars, (get(vars))#{'numberOfActivityWaiting' := (fun() -> case maps:get('actualResults', get(vars)) of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_getActivityWaiting'(Callee,[O,DC,Vars| Stack]),
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
                    Result=T:'m_getActivityWaiting'(Callee,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_getActivityWaiting',[[]],#task_info{method= <<"getActivityWaiting"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)()});
            false ->         ok
        end,
         %% db.abs:57--57
        maps:get('numberOfActivityWaiting', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertResult and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% db.abs:60
 %% db.abs:60
'm_returnMessageResults'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageId_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageId' => V_messageId_0 }),
    try
         %% db.abs:61--61
        put(vars, (get(vars))#{'messageResults' => null}),
         %% db.abs:62--62
        put(vars, (get(vars))#{'maybe' => m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('messageId', get(vars)),[O,DC| Stack])}),
         %% db.abs:63--63
        case m_ABS_StdLib_funs:f_isJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]) of
            true ->  %% db.abs:64--64
            put(vars, (get(vars))#{'messageResults' := m_ABS_StdLib_funs:f_fst(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% db.abs:65--65
            put(vars, (get(vars))#{'startTime' => m_ABS_StdLib_funs:f_snd(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% db.abs:66--66
            put(this, C:set_val_internal(get(this), 'messageInfo',m_ABS_StdLib_funs:f_removeKey(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('messageId', get(vars)),[O,DC| Stack]))),
             %% db.abs:67--67
            put(this, C:set_val_internal(get(this), 'totalTime',( rationals:add(C:get_val_internal(get(this), 'totalTime'),( rationals:sub(m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack]),maps:get('startTime', get(vars)))) )) )),
             %% db.abs:68--68
            put(this, C:set_val_internal(get(this), 'totalMessages',(C:get_val_internal(get(this), 'totalMessages') + 1) ));
            false ->         ok
        end,
         %% db.abs:70--70
        maps:get('messageResults', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method returnMessageResults and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% db.abs:73
 %% db.abs:73
'm_returnAverageAnalysisTime'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% db.abs:74--74
        put(vars, (get(vars))#{'averageTime' => 1000000}),
         %% db.abs:75--75
        case (not cmp:eq(C:get_val_internal(get(this), 'totalMessages'),0)) of
            true ->  %% db.abs:75--75
            put(vars, (get(vars))#{'averageTime' :=  rationals:rdiv(C:get_val_internal(get(this), 'totalTime'),C:get_val_internal(get(this), 'totalMessages')) });
            false ->         ok
        end,
         %% db.abs:76--76
        builtin:float(Cog,maps:get('averageTime', get(vars)))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method returnAverageAnalysisTime and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% db.abs:79
 %% db.abs:79
'm_resetMetrics'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% db.abs:80--80
        put(this, C:set_val_internal(get(this), 'totalMessages',0)),
         %% db.abs:81--81
        put(this, C:set_val_internal(get(this), 'totalTime',0)),
         %% db.abs:82--82
        put(this, C:set_val_internal(get(this), 'inbound_workload',0)),
         %% db.abs:83--83
        put(this, C:set_val_internal(get(this), 'rejected',0)),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method resetMetrics and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
