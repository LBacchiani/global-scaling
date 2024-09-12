-module(class_Architecture_MessageParser).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"MessageParserInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Architecture_MessageParser,'headerAnalyserLoadBalancer'=null,'linkAnalyserLoadBalancer'=null,'textAnalyserLoadBalancer'=null,'virusScannerLoadBalancer'=null,'messageAnalyserLoadBalancer'=null,'db'=null,'speed_res'=null,'mcl'=null}).
'init_internal'()->
    #state{}.

 %% architecture.abs:178
'get_val_internal'(#state{'headerAnalyserLoadBalancer'=G},'headerAnalyserLoadBalancer')->
    object:register_read('headerAnalyserLoadBalancer'),
    G;
 %% architecture.abs:178
'get_val_internal'(#state{'linkAnalyserLoadBalancer'=G},'linkAnalyserLoadBalancer')->
    object:register_read('linkAnalyserLoadBalancer'),
    G;
 %% architecture.abs:178
'get_val_internal'(#state{'textAnalyserLoadBalancer'=G},'textAnalyserLoadBalancer')->
    object:register_read('textAnalyserLoadBalancer'),
    G;
 %% architecture.abs:178
'get_val_internal'(#state{'virusScannerLoadBalancer'=G},'virusScannerLoadBalancer')->
    object:register_read('virusScannerLoadBalancer'),
    G;
 %% architecture.abs:178
'get_val_internal'(#state{'messageAnalyserLoadBalancer'=G},'messageAnalyserLoadBalancer')->
    object:register_read('messageAnalyserLoadBalancer'),
    G;
 %% architecture.abs:178
'get_val_internal'(#state{'db'=G},'db')->
    object:register_read('db'),
    G;
 %% architecture.abs:179
'get_val_internal'(#state{'speed_res'=G},'speed_res')->
    object:register_read('speed_res'),
    G;
 %% architecture.abs:180
'get_val_internal'(#state{'mcl'=G},'mcl')->
    object:register_read('mcl'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% architecture.abs:178
'set_val_internal'(S,'headerAnalyserLoadBalancer',V)->
    object:register_write('headerAnalyserLoadBalancer'),
    S#state{'headerAnalyserLoadBalancer'=V};
 %% architecture.abs:178
'set_val_internal'(S,'linkAnalyserLoadBalancer',V)->
    object:register_write('linkAnalyserLoadBalancer'),
    S#state{'linkAnalyserLoadBalancer'=V};
 %% architecture.abs:178
'set_val_internal'(S,'textAnalyserLoadBalancer',V)->
    object:register_write('textAnalyserLoadBalancer'),
    S#state{'textAnalyserLoadBalancer'=V};
 %% architecture.abs:178
'set_val_internal'(S,'virusScannerLoadBalancer',V)->
    object:register_write('virusScannerLoadBalancer'),
    S#state{'virusScannerLoadBalancer'=V};
 %% architecture.abs:178
'set_val_internal'(S,'messageAnalyserLoadBalancer',V)->
    object:register_write('messageAnalyserLoadBalancer'),
    S#state{'messageAnalyserLoadBalancer'=V};
 %% architecture.abs:178
'set_val_internal'(S,'db',V)->
    object:register_write('db'),
    S#state{'db'=V};
 %% architecture.abs:179
'set_val_internal'(S,'speed_res',V)->
    object:register_write('speed_res'),
    S#state{'speed_res'=V};
 %% architecture.abs:180
'set_val_internal'(S,'mcl',V)->
    object:register_write('mcl'),
    S#state{'mcl'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'headerAnalyserLoadBalancer', S#state.'headerAnalyserLoadBalancer' }
        , { 'linkAnalyserLoadBalancer', S#state.'linkAnalyserLoadBalancer' }
        , { 'textAnalyserLoadBalancer', S#state.'textAnalyserLoadBalancer' }
        , { 'virusScannerLoadBalancer', S#state.'virusScannerLoadBalancer' }
        , { 'messageAnalyserLoadBalancer', S#state.'messageAnalyserLoadBalancer' }
        , { 'db', S#state.'db' }
        , { 'speed_res', S#state.'speed_res' }
        , { 'mcl', S#state.'mcl' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_headerAnalyserLoadBalancer,P_linkAnalyserLoadBalancer,P_textAnalyserLoadBalancer,P_virusScannerLoadBalancer,P_messageAnalyserLoadBalancer,P_db,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'headerAnalyserLoadBalancer',P_headerAnalyserLoadBalancer)),
    put(this, C:set_val_internal(get(this),'linkAnalyserLoadBalancer',P_linkAnalyserLoadBalancer)),
    put(this, C:set_val_internal(get(this),'textAnalyserLoadBalancer',P_textAnalyserLoadBalancer)),
    put(this, C:set_val_internal(get(this),'virusScannerLoadBalancer',P_virusScannerLoadBalancer)),
    put(this, C:set_val_internal(get(this),'messageAnalyserLoadBalancer',P_messageAnalyserLoadBalancer)),
    put(this, C:set_val_internal(get(this),'db',P_db)),
     %% architecture.abs:179--179
    put(this, C:set_val_internal(get(this),'speed_res',5)),
     %% architecture.abs:180--180
    put(this, C:set_val_internal(get(this),'mcl',110)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% architecture.abs:181
 %% architecture.abs:181
'm_parseMessage'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_balancer_0,V_id_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'balancer' => V_balancer_0,
 'id' => V_id_0 }),
    try
         %% architecture.abs:182--182
        cog:block_current_task_for_cpu(Cog, rationals:rdiv((C:get_val_internal(get(this), 'speed_res') * 30) ,C:get_val_internal(get(this), 'mcl')) ,[O,DC| Stack]),
        skip,
         %% architecture.abs:183--183
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
                TempFuture = cog:create_task(Callee,'m_removeMessage',[[]],#task_info{method= <<"removeMessage"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% architecture.abs:184--184
        put(vars, (get(vars))#{'n_links' => builtin:random(Cog,11)}),
         %% architecture.abs:185--185
        put(vars, (get(vars))#{'n_attachments' => builtin:random(Cog,5)}),
         %% architecture.abs:186--186
        put(vars, (get(vars))#{'messageId' => builtin:toString(Cog,maps:get('id', get(vars)))}),
         %% architecture.abs:187--187
        T_2 = (fun() -> case C:get_val_internal(get(this), 'db') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_insertMessageInformation'(Callee,maps:get('messageId', get(vars)),maps:get('n_attachments', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_messageId = maps:get('messageId', get(vars)),
                V_attachmentsNumber = maps:get('n_attachments', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_insertMessageInformation'(Callee, V_messageId, V_attachmentsNumber,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_insertMessageInformation',[maps:get('messageId', get(vars)),maps:get('n_attachments', get(vars)),[]],#task_info{method= <<"insertMessageInformation"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
         %% architecture.abs:188--188
        T_3 = (fun() -> case C:get_val_internal(get(this), 'headerAnalyserLoadBalancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_newRequest'(Callee,maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
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
                Result=T:'m_newRequest'(Callee, V_messageId,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_3,
         %% architecture.abs:189--189
        case cmp:gt(maps:get('n_links', get(vars)),0) of
            true ->  %% architecture.abs:189--189
            T_4 = (fun() -> case C:get_val_internal(get(this), 'linkAnalyserLoadBalancer') of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_newRequest'(Callee,maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
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
                    Result=T:'m_newRequest'(Callee, V_messageId,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_4;
            false ->          %% architecture.abs:190--190
        T_4 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyserLoadBalancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_insertResult'(Callee,maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_id = maps:get('messageId', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_insertResult'(Callee, V_id,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_insertResult',[maps:get('messageId', get(vars)),[]],#task_info{method= <<"insertResult"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_4
        end,
         %% architecture.abs:191--191
        T_5 = (fun() -> case C:get_val_internal(get(this), 'textAnalyserLoadBalancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_newRequest'(Callee,maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
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
                Result=T:'m_newRequest'(Callee, V_messageId,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_5,
         %% architecture.abs:192--192
        []=(fun Loop ([])->
            case cmp:gt(maps:get('n_attachments', get(vars)),0) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% architecture.abs:193--193
                T_6 = (fun() -> case C:get_val_internal(get(this), 'virusScannerLoadBalancer') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_newRequest'(Callee,maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
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
                        Result=T:'m_newRequest'(Callee, V_messageId,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_6,
                 %% architecture.abs:194--194
                put(vars, (get(vars))#{'n_attachments' := (maps:get('n_attachments', get(vars)) - 1) }),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method parseMessage and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
