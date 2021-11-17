-module(class_EmailProcessingPipelineArchitecture_MessageAnalyser).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"MessageAnalyserInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_MessageAnalyser,'db'=null,'speed_res'=null,'mcl'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:1094
'get_val_internal'(#state{'db'=G},'db')->
    G;
 %% code.abs:1095
'get_val_internal'(#state{'speed_res'=G},'speed_res')->
    G;
 %% code.abs:1096
'get_val_internal'(#state{'mcl'=G},'mcl')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:1094
'set_val_internal'(S,'db',V)->
    S#state{'db'=V};
 %% code.abs:1095
'set_val_internal'(S,'speed_res',V)->
    S#state{'speed_res'=V};
 %% code.abs:1096
'set_val_internal'(S,'mcl',V)->
    S#state{'mcl'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'db', S#state.'db' }
        , { 'speed_res', S#state.'speed_res' }
        , { 'mcl', S#state.'mcl' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_db,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'db',P_db)),
     %% code.abs:1095--1095
    put(this, C:set_val_internal(get(this),'speed_res',5)),
     %% code.abs:1096--1096
    put(this, C:set_val_internal(get(this),'mcl',300)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:1098
 %% code.abs:1098
'm_insertResult'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_res_0,V_id_0,V_balancer_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'res' => V_res_0,
 'id' => V_id_0,
 'balancer' => V_balancer_0 }),
    try
         %% code.abs:1099--1099
        cog:block_current_task_for_cpu(Cog, rationals:rdiv((C:get_val_internal(get(this), 'speed_res') * 30) ,C:get_val_internal(get(this), 'mcl')) ,[O,DC| Stack]),
        skip,
         %% code.abs:1100--1100
        T_1 = (fun() -> case maps:get('balancer', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_removeMessage'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_removeMessage'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_removeMessage',[[]],#task_info{method= <<"removeMessage"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% code.abs:1101--1101
        put(vars, (get(vars))#{'numberOfActivityWaiting' => (fun() -> case C:get_val_internal(get(this), 'db') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_insertResult'(Callee,maps:get('res', get(vars)),maps:get('id', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_res = maps:get('res', get(vars)),
                V_id = maps:get('id', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_insertResult'(Callee, V_res, V_id,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_insertResult',[maps:get('res', get(vars)),maps:get('id', get(vars)),[]],#task_info{method= <<"insertResult"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1102--1102
        case cmp:eq(maps:get('numberOfActivityWaiting', get(vars)),0) of
            true ->  %% code.abs:1102--1102
            T_2 = (fun() -> case O of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_takeFinalDecision'(Callee,maps:get('id', get(vars)),[O,DC,Vars| Stack]),
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
                    Result=T:'m_takeFinalDecision'(Callee, V_messageId,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_takeFinalDecision',[maps:get('id', get(vars)),[]],#task_info{method= <<"takeFinalDecision"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_2;
            false ->         ok
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertResult and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1105
 %% code.abs:1105
'm_takeFinalDecision'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageId_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageId' => V_messageId_0 }),
    try
         %% code.abs:1107--1107
        put(vars, (get(vars))#{'finalResults' => (fun() -> case C:get_val_internal(get(this), 'db') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_returnMessageResults'(Callee,maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
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
                Result=T:'m_returnMessageResults'(Callee, V_messageId,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_returnMessageResults',[maps:get('messageId', get(vars)),[]],#task_info{method= <<"returnMessageResults"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1108--1108
        put(vars, (get(vars))#{'res' => (fun() -> case maps:get('finalResults', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getRes'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getRes'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getRes',[[]],#task_info{method= <<"getRes"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1109--1109
        put(vars, (get(vars))#{'printString' => <<""/utf8>>}),
         %% code.abs:1110--1110
        put(vars, (get(vars))#{'printString' := iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([maps:get('printString', get(vars)), <<"Results of message \""/utf8>>]), maps:get('messageId', get(vars))]), <<"\" analysis:"/utf8>>]), <<"
"/utf8>>])}),
         %% code.abs:1111--1111
        put(vars, (get(vars))#{'printString' := iolist_to_binary([iolist_to_binary([maps:get('printString', get(vars)), <<"	"/utf8>>]), maps:get('res', get(vars))])}),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method takeFinalDecision and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
