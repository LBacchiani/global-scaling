-module(class_EmailProcessingPipelineArchitecture_DB).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"DBInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_DB,'messageInfo'=null,'inbound_workload'=null,'totalTime'=null,'totalMessages'=null,'rejected'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:758
'get_val_internal'(#state{'messageInfo'=G},'messageInfo')->
    object:register_read('messageInfo'),
    G;
 %% code.abs:759
'get_val_internal'(#state{'inbound_workload'=G},'inbound_workload')->
    object:register_read('inbound_workload'),
    G;
 %% code.abs:760
'get_val_internal'(#state{'totalTime'=G},'totalTime')->
    object:register_read('totalTime'),
    G;
 %% code.abs:761
'get_val_internal'(#state{'totalMessages'=G},'totalMessages')->
    object:register_read('totalMessages'),
    G;
 %% code.abs:762
'get_val_internal'(#state{'rejected'=G},'rejected')->
    object:register_read('rejected'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:758
'set_val_internal'(S,'messageInfo',V)->
    object:register_write('messageInfo'),
    S#state{'messageInfo'=V};
 %% code.abs:759
'set_val_internal'(S,'inbound_workload',V)->
    object:register_write('inbound_workload'),
    S#state{'inbound_workload'=V};
 %% code.abs:760
'set_val_internal'(S,'totalTime',V)->
    object:register_write('totalTime'),
    S#state{'totalTime'=V};
 %% code.abs:761
'set_val_internal'(S,'totalMessages',V)->
    object:register_write('totalMessages'),
    S#state{'totalMessages'=V};
 %% code.abs:762
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
     %% code.abs:758--758
    put(this, C:set_val_internal(get(this),'messageInfo',m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack]))),
     %% code.abs:759--759
    put(this, C:set_val_internal(get(this),'inbound_workload',0)),
     %% code.abs:760--760
    put(this, C:set_val_internal(get(this),'totalTime',0)),
     %% code.abs:761--761
    put(this, C:set_val_internal(get(this),'totalMessages',0)),
     %% code.abs:762--762
    put(this, C:set_val_internal(get(this),'rejected',0)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:764
 %% code.abs:764
'm_messageLoss'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageId_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageId' => V_messageId_0 }),
    try
         %% code.abs:765--765
        case cmp:eq(maps:get('messageId', get(vars)),<<""/utf8>>) of
            true ->  %% code.abs:765--765
            put(this, C:set_val_internal(get(this), 'rejected',(C:get_val_internal(get(this), 'rejected') + 1) ));
            false ->          %% code.abs:766--766
        case m_ABS_StdLib_funs:f_isJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('messageId', get(vars)),[O,DC| Stack]),[O,DC| Stack]) of
            true ->  %% code.abs:766--766
            put(this, C:set_val_internal(get(this), 'rejected',(C:get_val_internal(get(this), 'rejected') + 1) )),
             %% code.abs:766--766
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
 %% code.abs:769
 %% code.abs:769
'm_messageArrived'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:769--769
        put(this, C:set_val_internal(get(this), 'inbound_workload',(C:get_val_internal(get(this), 'inbound_workload') + 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method messageArrived and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:771
 %% code.abs:771
'm_returninbound_workload'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:771--771
        C:get_val_internal(get(this), 'inbound_workload')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method returninbound_workload and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:773
 %% code.abs:773
'm_pendingMessages'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:773--773
        m_ABS_StdLib_funs:f_length(Cog,m_ABS_StdLib_funs:f_entries(Cog,C:get_val_internal(get(this), 'messageInfo'),[O,DC| Stack]),[O,DC| Stack])
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method pendingMessages and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:775
 %% code.abs:775
'm_messageCompleted'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:775--775
        C:get_val_internal(get(this), 'totalMessages')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method messageCompleted and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:777
 %% code.abs:777
'm_rejectedMessages'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:777--777
        C:get_val_internal(get(this), 'rejected')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method rejectedMessages and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:779
 %% code.abs:779
'm_insertMessageInformation'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageId_0,V_attachmentsNumber_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageId' => V_messageId_0,
 'attachmentsNumber' => V_attachmentsNumber_0 }),
    try
         %% code.abs:780--780
        put(vars, (get(vars))#{'newResults' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_MessageResult,[(3 + maps:get('attachmentsNumber', get(vars))) ,[]],Cog,[O,DC| Stack])}),
         %% code.abs:781--781
        put(this, C:set_val_internal(get(this), 'messageInfo',m_ABS_StdLib_funs:f_insert(Cog,C:get_val_internal(get(this), 'messageInfo'),{ dataPair,maps:get('messageId', get(vars)),{ dataPair,maps:get('newResults', get(vars)),m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack])}},[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertMessageInformation and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:784
 %% code.abs:784
'm_insertResult'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_res_0,V_id_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'res' => V_res_0,
 'id' => V_id_0 }),
    try
         %% code.abs:785--785
        put(vars, (get(vars))#{'numberOfActivityWaiting' => -1}),
         %% code.abs:786--786
        put(vars, (get(vars))#{'maybe' => m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('id', get(vars)),[O,DC| Stack])}),
         %% code.abs:787--787
        case m_ABS_StdLib_funs:f_isJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]) of
            true ->  %% code.abs:788--788
            put(vars, (get(vars))#{'actualResults' => m_ABS_StdLib_funs:f_fst(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% code.abs:789--789
            put(vars, (get(vars))#{'analysisTime' => m_ABS_StdLib_funs:f_snd(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% code.abs:790--790
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
                    TempFuture = cog:create_task(Callee,'m_insertRes',[maps:get('res', get(vars)),[]],#task_info{method= <<"insertRes"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_1,
             %% code.abs:791--791
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
                    TempFuture = cog:create_task(Callee,'m_getActivityWaiting',[[]],#task_info{method= <<"getActivityWaiting"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)()});
            false ->         ok
        end,
         %% code.abs:793--793
        maps:get('numberOfActivityWaiting', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertResult and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:796
 %% code.abs:796
'm_returnMessageResults'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageId_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageId' => V_messageId_0 }),
    try
         %% code.abs:797--797
        put(vars, (get(vars))#{'messageResults' => null}),
         %% code.abs:798--798
        put(vars, (get(vars))#{'maybe' => m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('messageId', get(vars)),[O,DC| Stack])}),
         %% code.abs:799--799
        case m_ABS_StdLib_funs:f_isJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]) of
            true ->  %% code.abs:800--800
            put(vars, (get(vars))#{'messageResults' := m_ABS_StdLib_funs:f_fst(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% code.abs:801--801
            put(vars, (get(vars))#{'startTime' => m_ABS_StdLib_funs:f_snd(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% code.abs:802--802
            put(this, C:set_val_internal(get(this), 'messageInfo',m_ABS_StdLib_funs:f_removeKey(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('messageId', get(vars)),[O,DC| Stack]))),
             %% code.abs:803--803
            put(this, C:set_val_internal(get(this), 'totalTime',( rationals:add(C:get_val_internal(get(this), 'totalTime'),( rationals:sub(m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack]),maps:get('startTime', get(vars)))) )) )),
             %% code.abs:804--804
            put(this, C:set_val_internal(get(this), 'totalMessages',(C:get_val_internal(get(this), 'totalMessages') + 1) ));
            false ->         ok
        end,
         %% code.abs:806--806
        maps:get('messageResults', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method returnMessageResults and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:809
 %% code.abs:809
'm_returnAverageAnalysisTime'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:810--810
        put(vars, (get(vars))#{'averageTime' => 1000000}),
         %% code.abs:811--811
        case (not cmp:eq(C:get_val_internal(get(this), 'totalMessages'),0)) of
            true ->  %% code.abs:811--811
            put(vars, (get(vars))#{'averageTime' :=  rationals:rdiv(C:get_val_internal(get(this), 'totalTime'),C:get_val_internal(get(this), 'totalMessages')) });
            false ->         ok
        end,
         %% code.abs:812--812
        builtin:float(Cog,maps:get('averageTime', get(vars)))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method returnAverageAnalysisTime and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:816
 %% code.abs:816
'm_resetMetrics'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:817--817
        put(this, C:set_val_internal(get(this), 'totalMessages',0)),
         %% code.abs:818--818
        put(this, C:set_val_internal(get(this), 'totalTime',0)),
         %% code.abs:819--819
        put(this, C:set_val_internal(get(this), 'inbound_workload',0)),
         %% code.abs:820--820
        put(this, C:set_val_internal(get(this), 'rejected',0)),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method resetMetrics and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
