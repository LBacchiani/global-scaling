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

 %% code.abs:1131
'get_val_internal'(#state{'messageInfo'=G},'messageInfo')->
    G;
 %% code.abs:1132
'get_val_internal'(#state{'inbound_workload'=G},'inbound_workload')->
    G;
 %% code.abs:1133
'get_val_internal'(#state{'totalTime'=G},'totalTime')->
    G;
 %% code.abs:1134
'get_val_internal'(#state{'totalMessages'=G},'totalMessages')->
    G;
 %% code.abs:1135
'get_val_internal'(#state{'rejected'=G},'rejected')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:1131
'set_val_internal'(S,'messageInfo',V)->
    S#state{'messageInfo'=V};
 %% code.abs:1132
'set_val_internal'(S,'inbound_workload',V)->
    S#state{'inbound_workload'=V};
 %% code.abs:1133
'set_val_internal'(S,'totalTime',V)->
    S#state{'totalTime'=V};
 %% code.abs:1134
'set_val_internal'(S,'totalMessages',V)->
    S#state{'totalMessages'=V};
 %% code.abs:1135
'set_val_internal'(S,'rejected',V)->
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
     %% code.abs:1131--1131
    put(this, C:set_val_internal(get(this),'messageInfo',m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack]))),
     %% code.abs:1132--1132
    put(this, C:set_val_internal(get(this),'inbound_workload',0)),
     %% code.abs:1133--1133
    put(this, C:set_val_internal(get(this),'totalTime',0)),
     %% code.abs:1134--1134
    put(this, C:set_val_internal(get(this),'totalMessages',0)),
     %% code.abs:1135--1135
    put(this, C:set_val_internal(get(this),'rejected',0)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:1137
 %% code.abs:1137
'm_messageLoss'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageId_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageId' => V_messageId_0 }),
    try
         %% code.abs:1138--1138
        case cmp:eq(maps:get('messageId', get(vars)),<<""/utf8>>) of
            true ->  %% code.abs:1138--1138
            put(this, C:set_val_internal(get(this), 'rejected',(C:get_val_internal(get(this), 'rejected') + 1) ));
            false ->          %% code.abs:1139--1139
        case m_ABS_StdLib_funs:f_isJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('messageId', get(vars)),[O,DC| Stack]),[O,DC| Stack]) of
            true ->  %% code.abs:1139--1139
            put(this, C:set_val_internal(get(this), 'rejected',(C:get_val_internal(get(this), 'rejected') + 1) )),
             %% code.abs:1139--1139
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
 %% code.abs:1142
 %% code.abs:1142
'm_messageArrived'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1142--1142
        put(this, C:set_val_internal(get(this), 'inbound_workload',(C:get_val_internal(get(this), 'inbound_workload') + 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method messageArrived and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1144
 %% code.abs:1144
'm_returninbound_workload'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1144--1144
        C:get_val_internal(get(this), 'inbound_workload')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method returninbound_workload and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1146
 %% code.abs:1146
'm_pendingMessages'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1146--1146
        m_ABS_StdLib_funs:f_length(Cog,m_ABS_StdLib_funs:f_entries(Cog,C:get_val_internal(get(this), 'messageInfo'),[O,DC| Stack]),[O,DC| Stack])
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method pendingMessages and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1148
 %% code.abs:1148
'm_messageCompleted'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1148--1148
        C:get_val_internal(get(this), 'totalMessages')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method messageCompleted and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1150
 %% code.abs:1150
'm_rejectedMessages'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1150--1150
        C:get_val_internal(get(this), 'rejected')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method rejectedMessages and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1152
 %% code.abs:1152
'm_insertMessageInformation'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageId_0,V_attachmentsNumber_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageId' => V_messageId_0,
 'attachmentsNumber' => V_attachmentsNumber_0 }),
    try
         %% code.abs:1153--1153
        put(vars, (get(vars))#{'newResults' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_MessageResult,[(3 + maps:get('attachmentsNumber', get(vars))) ,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1154--1154
        put(this, C:set_val_internal(get(this), 'messageInfo',m_ABS_StdLib_funs:f_insert(Cog,C:get_val_internal(get(this), 'messageInfo'),{ dataPair,maps:get('messageId', get(vars)),{ dataPair,maps:get('newResults', get(vars)),m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack])}},[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertMessageInformation and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1157
 %% code.abs:1157
'm_insertResult'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_res_0,V_id_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'res' => V_res_0,
 'id' => V_id_0 }),
    try
         %% code.abs:1158--1158
        put(vars, (get(vars))#{'numberOfActivityWaiting' => -1}),
         %% code.abs:1159--1159
        put(vars, (get(vars))#{'maybe' => m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('id', get(vars)),[O,DC| Stack])}),
         %% code.abs:1160--1160
        case m_ABS_StdLib_funs:f_isJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]) of
            true ->  %% code.abs:1161--1161
            put(vars, (get(vars))#{'actualResults' => m_ABS_StdLib_funs:f_fst(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% code.abs:1162--1162
            put(vars, (get(vars))#{'analysisTime' => m_ABS_StdLib_funs:f_snd(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% code.abs:1163--1163
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
             %% code.abs:1164--1164
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
         %% code.abs:1166--1166
        maps:get('numberOfActivityWaiting', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertResult and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1169
 %% code.abs:1169
'm_returnMessageResults'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageId_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageId' => V_messageId_0 }),
    try
         %% code.abs:1170--1170
        put(vars, (get(vars))#{'messageResults' => null}),
         %% code.abs:1171--1171
        put(vars, (get(vars))#{'maybe' => m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('messageId', get(vars)),[O,DC| Stack])}),
         %% code.abs:1172--1172
        case m_ABS_StdLib_funs:f_isJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]) of
            true ->  %% code.abs:1173--1173
            put(vars, (get(vars))#{'messageResults' := m_ABS_StdLib_funs:f_fst(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% code.abs:1174--1174
            put(vars, (get(vars))#{'startTime' => m_ABS_StdLib_funs:f_snd(Cog,m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack]),[O,DC| Stack])}),
             %% code.abs:1175--1175
            put(this, C:set_val_internal(get(this), 'messageInfo',m_ABS_StdLib_funs:f_removeKey(Cog,C:get_val_internal(get(this), 'messageInfo'),maps:get('messageId', get(vars)),[O,DC| Stack]))),
             %% code.abs:1176--1176
            put(this, C:set_val_internal(get(this), 'totalTime',( rationals:add(C:get_val_internal(get(this), 'totalTime'),( rationals:sub(m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack]),maps:get('startTime', get(vars)))) )) )),
             %% code.abs:1177--1177
            put(this, C:set_val_internal(get(this), 'totalMessages',(C:get_val_internal(get(this), 'totalMessages') + 1) ));
            false ->         ok
        end,
         %% code.abs:1179--1179
        maps:get('messageResults', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method returnMessageResults and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1182
 %% code.abs:1182
'm_returnAverageAnalysisTime'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1183--1183
        put(vars, (get(vars))#{'averageTime' => 1000000}),
         %% code.abs:1184--1184
        case (not cmp:eq(C:get_val_internal(get(this), 'totalMessages'),0)) of
            true ->  %% code.abs:1184--1184
            put(vars, (get(vars))#{'averageTime' :=  rationals:rdiv(C:get_val_internal(get(this), 'totalTime'),C:get_val_internal(get(this), 'totalMessages')) });
            false ->         ok
        end,
         %% code.abs:1185--1185
        builtin:float(Cog,maps:get('averageTime', get(vars)))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method returnAverageAnalysisTime and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1189
 %% code.abs:1189
'm_resetMetrics'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1190--1190
        put(this, C:set_val_internal(get(this), 'totalMessages',0)),
         %% code.abs:1191--1191
        put(this, C:set_val_internal(get(this), 'totalTime',0)),
         %% code.abs:1192--1192
        put(this, C:set_val_internal(get(this), 'inbound_workload',0)),
         %% code.abs:1193--1193
        put(this, C:set_val_internal(get(this), 'rejected',0)),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method resetMetrics and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
