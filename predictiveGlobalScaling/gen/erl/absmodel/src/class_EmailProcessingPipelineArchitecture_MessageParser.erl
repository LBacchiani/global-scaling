-module(class_EmailProcessingPipelineArchitecture_MessageParser).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"MessageParserInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_MessageParser,'headerAnalyserLoadBalancer'=null,'linkAnalyserLoadBalancer'=null,'textAnalyserLoadBalancer'=null,'virusScannerLoadBalancer'=null,'messageAnalyserLoadBalancer'=null,'db'=null,'speed_res'=null,'mcl'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:171
'get_val_internal'(#state{'headerAnalyserLoadBalancer'=G},'headerAnalyserLoadBalancer')->
    object:register_read('headerAnalyserLoadBalancer'),
    G;
 %% code.abs:171
'get_val_internal'(#state{'linkAnalyserLoadBalancer'=G},'linkAnalyserLoadBalancer')->
    object:register_read('linkAnalyserLoadBalancer'),
    G;
 %% code.abs:171
'get_val_internal'(#state{'textAnalyserLoadBalancer'=G},'textAnalyserLoadBalancer')->
    object:register_read('textAnalyserLoadBalancer'),
    G;
 %% code.abs:171
'get_val_internal'(#state{'virusScannerLoadBalancer'=G},'virusScannerLoadBalancer')->
    object:register_read('virusScannerLoadBalancer'),
    G;
 %% code.abs:171
'get_val_internal'(#state{'messageAnalyserLoadBalancer'=G},'messageAnalyserLoadBalancer')->
    object:register_read('messageAnalyserLoadBalancer'),
    G;
 %% code.abs:171
'get_val_internal'(#state{'db'=G},'db')->
    object:register_read('db'),
    G;
 %% code.abs:172
'get_val_internal'(#state{'speed_res'=G},'speed_res')->
    object:register_read('speed_res'),
    G;
 %% code.abs:173
'get_val_internal'(#state{'mcl'=G},'mcl')->
    object:register_read('mcl'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:171
'set_val_internal'(S,'headerAnalyserLoadBalancer',V)->
    object:register_write('headerAnalyserLoadBalancer'),
    S#state{'headerAnalyserLoadBalancer'=V};
 %% code.abs:171
'set_val_internal'(S,'linkAnalyserLoadBalancer',V)->
    object:register_write('linkAnalyserLoadBalancer'),
    S#state{'linkAnalyserLoadBalancer'=V};
 %% code.abs:171
'set_val_internal'(S,'textAnalyserLoadBalancer',V)->
    object:register_write('textAnalyserLoadBalancer'),
    S#state{'textAnalyserLoadBalancer'=V};
 %% code.abs:171
'set_val_internal'(S,'virusScannerLoadBalancer',V)->
    object:register_write('virusScannerLoadBalancer'),
    S#state{'virusScannerLoadBalancer'=V};
 %% code.abs:171
'set_val_internal'(S,'messageAnalyserLoadBalancer',V)->
    object:register_write('messageAnalyserLoadBalancer'),
    S#state{'messageAnalyserLoadBalancer'=V};
 %% code.abs:171
'set_val_internal'(S,'db',V)->
    object:register_write('db'),
    S#state{'db'=V};
 %% code.abs:172
'set_val_internal'(S,'speed_res',V)->
    object:register_write('speed_res'),
    S#state{'speed_res'=V};
 %% code.abs:173
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
     %% code.abs:172--172
    put(this, C:set_val_internal(get(this),'speed_res',5)),
     %% code.abs:173--173
    put(this, C:set_val_internal(get(this),'mcl',110)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:174
 %% code.abs:174
'm_parseMessage'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_mailData_0,V_balancer_0,V_id_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'mailData' => V_mailData_0,
 'balancer' => V_balancer_0,
 'id' => V_id_0 }),
    try
         %% code.abs:176--176
        cog:block_current_task_for_cpu(Cog, rationals:rdiv((C:get_val_internal(get(this), 'speed_res') * 30) ,C:get_val_internal(get(this), 'mcl')) ,[O,DC| Stack]),
        skip,
         %% code.abs:177--177
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
         %% code.abs:178--178
        put(vars, (get(vars))#{'headers' => iolist_to_binary([maps:get('mailData', get(vars)), <<"_NetworkHeaders"/utf8>>])}),
         %% code.abs:179--179
        put(vars, (get(vars))#{'sender' => iolist_to_binary([maps:get('mailData', get(vars)), <<"_Sender"/utf8>>])}),
         %% code.abs:180--180
        put(vars, (get(vars))#{'messageHeader' => iolist_to_binary([maps:get('mailData', get(vars)), <<"_MessageHeader"/utf8>>])}),
         %% code.abs:181--181
        put(vars, (get(vars))#{'messageBody' => iolist_to_binary([maps:get('mailData', get(vars)), <<"_MessageBody"/utf8>>])}),
         %% code.abs:182--182
        put(vars, (get(vars))#{'links' => m_ABS_StdLib_funs:f_set(Cog,[],[O,DC| Stack])}),
         %% code.abs:183--183
        put(vars, (get(vars))#{'attachments' => m_ABS_StdLib_funs:f_set(Cog,[],[O,DC| Stack])}),
         %% code.abs:184--184
        put(vars, (get(vars))#{'n_links' => builtin:random(Cog,11)}),
         %% code.abs:185--185
        put(vars, (get(vars))#{'n_attachments' => builtin:random(Cog,5)}),
         %% code.abs:186--186
        put(vars, (get(vars))#{'i' => 0}),
         %% code.abs:187--187
        []=(fun Loop ([])->
            case cmp:lt(maps:get('i', get(vars)),maps:get('n_links', get(vars))) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:188--188
                put(vars, (get(vars))#{'links' := m_ABS_StdLib_funs:f_insertElement(Cog,maps:get('links', get(vars)),iolist_to_binary([iolist_to_binary([maps:get('mailData', get(vars)), <<"_Link"/utf8>>]), builtin:toString(Cog,maps:get('i', get(vars)))]),[O,DC| Stack])}),
                 %% code.abs:189--189
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% code.abs:191--191
        put(vars, (get(vars))#{'i' := 0}),
         %% code.abs:192--192
        []=(fun Loop ([])->
            case cmp:lt(maps:get('i', get(vars)),maps:get('n_attachments', get(vars))) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:193--193
                put(vars, (get(vars))#{'attachments' := m_ABS_StdLib_funs:f_insertElement(Cog,maps:get('attachments', get(vars)),iolist_to_binary([iolist_to_binary([maps:get('mailData', get(vars)), <<"_Attachment"/utf8>>]), builtin:toString(Cog,maps:get('i', get(vars)))]),[O,DC| Stack])}),
                 %% code.abs:194--194
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% code.abs:197--197
        put(vars, (get(vars))#{'messageId' => builtin:toString(Cog,maps:get('id', get(vars)))}),
         %% code.abs:198--198
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
                TempFuture = cog:create_task(Callee,'m_insertMessageInformation',[maps:get('messageId', get(vars)),maps:get('n_attachments', get(vars)),[]],#task_info{method= <<"insertMessageInformation"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
         %% code.abs:199--199
        T_3 = (fun() -> case C:get_val_internal(get(this), 'headerAnalyserLoadBalancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_newRequest'(Callee,maps:get('headers', get(vars)),maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_headers = maps:get('headers', get(vars)),
                V_messageId = maps:get('messageId', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_newRequest'(Callee, V_headers, V_messageId,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('headers', get(vars)),maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_3,
         %% code.abs:200--200
        case cmp:gt(maps:get('n_links', get(vars)),0) of
            true ->  %% code.abs:200--200
            T_4 = (fun() -> case C:get_val_internal(get(this), 'linkAnalyserLoadBalancer') of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_newRequest'(Callee,maps:get('links', get(vars)),maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                    put(vars, Vars),
                    Result;
                Callee=#object{oid=ObjRef,cog=Cog} ->
                    %% cog-local call
                    V_links = maps:get('links', get(vars)),
                    V_messageId = maps:get('messageId', get(vars)),
                    State=get(this),
                    Vars=get(vars),
                    cog:object_state_changed(Cog, O, State),
                    put(this,cog:get_object_state(Callee#object.cog, Callee)),
                    put(task_info,(get(task_info))#task_info{this=Callee}),
                    T=object:get_class_from_state(get(this)), % it's the callee state already
                    Result=T:'m_newRequest'(Callee, V_links, V_messageId,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('links', get(vars)),maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_4;
            false ->          %% code.abs:201--201
        T_4 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyserLoadBalancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_insertResult'(Callee,<<""/utf8>>,maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_res = <<""/utf8>>,
                V_id = maps:get('messageId', get(vars)),
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
                TempFuture = cog:create_task(Callee,'m_insertResult',[<<""/utf8>>,maps:get('messageId', get(vars)),[]],#task_info{method= <<"insertResult"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_4
        end,
         %% code.abs:202--202
        case ((not cmp:eq(maps:get('messageHeader', get(vars)),<<""/utf8>>))) or ((not cmp:eq(maps:get('messageBody', get(vars)),<<""/utf8>>))) of
            true ->  %% code.abs:202--202
            T_5 = (fun() -> case C:get_val_internal(get(this), 'textAnalyserLoadBalancer') of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_newRequest'(Callee,maps:get('messageHeader', get(vars)),maps:get('messageBody', get(vars)),maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                    put(vars, Vars),
                    Result;
                Callee=#object{oid=ObjRef,cog=Cog} ->
                    %% cog-local call
                    V_messageHeader = maps:get('messageHeader', get(vars)),
                    V_messageBody = maps:get('messageBody', get(vars)),
                    V_messageId = maps:get('messageId', get(vars)),
                    State=get(this),
                    Vars=get(vars),
                    cog:object_state_changed(Cog, O, State),
                    put(this,cog:get_object_state(Callee#object.cog, Callee)),
                    put(task_info,(get(task_info))#task_info{this=Callee}),
                    T=object:get_class_from_state(get(this)), % it's the callee state already
                    Result=T:'m_newRequest'(Callee, V_messageHeader, V_messageBody, V_messageId,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('messageHeader', get(vars)),maps:get('messageBody', get(vars)),maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_5;
            false ->          %% code.abs:203--203
        T_5 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyserLoadBalancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_insertResult'(Callee,<<""/utf8>>,maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_res = <<""/utf8>>,
                V_id = maps:get('messageId', get(vars)),
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
                TempFuture = cog:create_task(Callee,'m_insertResult',[<<""/utf8>>,maps:get('messageId', get(vars)),[]],#task_info{method= <<"insertResult"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_5
        end,
         %% code.abs:204--204
        []=(fun Loop ([])->
            case cmp:gt(m_ABS_StdLib_funs:f_size(Cog,maps:get('attachments', get(vars)),[O,DC| Stack]),0) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:205--205
                put(vars, (get(vars))#{'attach' => m_ABS_StdLib_funs:f_take(Cog,maps:get('attachments', get(vars)),[O,DC| Stack])}),
                 %% code.abs:206--206
                put(vars, (get(vars))#{'attachments' := m_ABS_StdLib_funs:f_remove(Cog,maps:get('attachments', get(vars)),maps:get('attach', get(vars)),[O,DC| Stack])}),
                 %% code.abs:207--207
                T_6 = (fun() -> case C:get_val_internal(get(this), 'virusScannerLoadBalancer') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_newRequest'(Callee,maps:get('attach', get(vars)),maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_attachment = maps:get('attach', get(vars)),
                        V_messageId = maps:get('messageId', get(vars)),
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_newRequest'(Callee, V_attachment, V_messageId,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('attach', get(vars)),maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_6,
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method parseMessage and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
