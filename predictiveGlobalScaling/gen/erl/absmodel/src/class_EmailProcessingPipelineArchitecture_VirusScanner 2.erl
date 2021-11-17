-module(class_EmailProcessingPipelineArchitecture_VirusScanner).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"VirusScannerInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_VirusScanner,'attachmentsManagerLoadBalancer'=null,'messageAnalyserLoadBalancer'=null,'speed_res'=null,'mcl'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:447
'get_val_internal'(#state{'attachmentsManagerLoadBalancer'=G},'attachmentsManagerLoadBalancer')->
    object:register_read('attachmentsManagerLoadBalancer'),
    G;
 %% code.abs:447
'get_val_internal'(#state{'messageAnalyserLoadBalancer'=G},'messageAnalyserLoadBalancer')->
    object:register_read('messageAnalyserLoadBalancer'),
    G;
 %% code.abs:448
'get_val_internal'(#state{'speed_res'=G},'speed_res')->
    object:register_read('speed_res'),
    G;
 %% code.abs:449
'get_val_internal'(#state{'mcl'=G},'mcl')->
    object:register_read('mcl'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:447
'set_val_internal'(S,'attachmentsManagerLoadBalancer',V)->
    object:register_write('attachmentsManagerLoadBalancer'),
    S#state{'attachmentsManagerLoadBalancer'=V};
 %% code.abs:447
'set_val_internal'(S,'messageAnalyserLoadBalancer',V)->
    object:register_write('messageAnalyserLoadBalancer'),
    S#state{'messageAnalyserLoadBalancer'=V};
 %% code.abs:448
'set_val_internal'(S,'speed_res',V)->
    object:register_write('speed_res'),
    S#state{'speed_res'=V};
 %% code.abs:449
'set_val_internal'(S,'mcl',V)->
    object:register_write('mcl'),
    S#state{'mcl'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'attachmentsManagerLoadBalancer', S#state.'attachmentsManagerLoadBalancer' }
        , { 'messageAnalyserLoadBalancer', S#state.'messageAnalyserLoadBalancer' }
        , { 'speed_res', S#state.'speed_res' }
        , { 'mcl', S#state.'mcl' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_attachmentsManagerLoadBalancer,P_messageAnalyserLoadBalancer,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'attachmentsManagerLoadBalancer',P_attachmentsManagerLoadBalancer)),
    put(this, C:set_val_internal(get(this),'messageAnalyserLoadBalancer',P_messageAnalyserLoadBalancer)),
     %% code.abs:448--448
    put(this, C:set_val_internal(get(this),'speed_res',20)),
     %% code.abs:449--449
    put(this, C:set_val_internal(get(this),'mcl',120)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:452
 %% code.abs:452
'm_scanAttachment'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_attachment_0,V_messageId_0,V_balancer_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'attachment' => V_attachment_0,
 'messageId' => V_messageId_0,
 'balancer' => V_balancer_0 }),
    try
         %% code.abs:454--454
        cog:block_current_task_for_cpu(Cog, rationals:rdiv((C:get_val_internal(get(this), 'speed_res') * 30) ,C:get_val_internal(get(this), 'mcl')) ,[O,DC| Stack]),
        skip,
         %% code.abs:455--455
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
         %% code.abs:456--456
        put(vars, (get(vars))#{'virusFound' => cmp:eq(builtin:random(Cog,4),0)}),
         %% code.abs:457--457
        case maps:get('virusFound', get(vars)) of
            true ->  %% code.abs:457--457
            T_2 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyserLoadBalancer') of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_insertResult'(Callee,iolist_to_binary([iolist_to_binary([iolist_to_binary([<<"VirusFound from VirusScanner in attachment: "/utf8>>, maps:get('attachment', get(vars))]), <<" by VirusScanner in "/utf8>>]), builtin:toString(Cog,builtin:thisDC(Cog))]),maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                    put(vars, Vars),
                    Result;
                Callee=#object{oid=ObjRef,cog=Cog} ->
                    %% cog-local call
                    V_res = iolist_to_binary([iolist_to_binary([iolist_to_binary([<<"VirusFound from VirusScanner in attachment: "/utf8>>, maps:get('attachment', get(vars))]), <<" by VirusScanner in "/utf8>>]), builtin:toString(Cog,builtin:thisDC(Cog))]),
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
                    TempFuture = cog:create_task(Callee,'m_insertResult',[iolist_to_binary([iolist_to_binary([iolist_to_binary([<<"VirusFound from VirusScanner in attachment: "/utf8>>, maps:get('attachment', get(vars))]), <<" by VirusScanner in "/utf8>>]), builtin:toString(Cog,builtin:thisDC(Cog))]),maps:get('messageId', get(vars)),[]],#task_info{method= <<"insertResult"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_2;
            false ->          %% code.abs:458--458
        T_2 = (fun() -> case C:get_val_internal(get(this), 'attachmentsManagerLoadBalancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_newRequest'(Callee,maps:get('attachment', get(vars)),maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_attachment = maps:get('attachment', get(vars)),
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
                TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('attachment', get(vars)),maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method scanAttachment and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
