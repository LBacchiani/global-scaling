-module(class_EmailProcessingPipelineArchitecture_SetUpSystem).
-include_lib("../include/abs_types.hrl").
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"SetUpSystemInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_SetUpSystem}).
'init_internal'()->
    #state{}.

'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

'set_val_internal'(S,S,S)->
    throw(badarg).
'get_state_for_modelapi'(S)->
    [
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:1131
 %% code.abs:1131
'm_computeInitialCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_dcs_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'dcs' => V_dcs_0 }),
    try
         %% code.abs:1132--1132
        put(vars, (get(vars))#{'cost' => 0}),
         %% code.abs:1133--1136
        put(vars, (get(vars))#{'tmp1562801525' => maps:get('dcs', get(vars))}),
         %% code.abs:1133--1136
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1562801525', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:1133--1136
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1562801525', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1133--1136
                put(vars, (get(vars))#{'tmp1562801525' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1562801525', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1134--1134
                put(vars, (get(vars))#{'singleCost' => (fun() -> case maps:get('dc', get(vars)) of
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
                 %% code.abs:1135--1135
                put(vars, (get(vars))#{'cost' := ( rationals:add(maps:get('cost', get(vars)),maps:get('singleCost', get(vars)))) }),
            Loop([])  end end)
        ([]),
         %% code.abs:1137--1137
        maps:get('cost', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method computeInitialCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1142
 %% code.abs:1142
'm_initializeSystem'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1143--1143
        put(vars, (get(vars))#{'windowDim' => 300}),
         %% code.abs:1144--1144
        put(vars, (get(vars))#{'cp' => object:new(cog:start(Cog,DC),class_ABS_DC_CloudProvider,[<<"CloudProvider"/utf8>>,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1145--1145
        put(vars, (get(vars))#{'dbObj' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_DB,[[]],Cog,[O,DC| Stack])}),
         %% code.abs:1146--1146
        put(vars, (get(vars))#{'c1' => object:new(cog:start(Cog,DC),class_InvariantsDeployer_InvariantsDeployer,[maps:get('cp', get(vars)),maps:get('dbObj', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1147--1147
        T_1 = (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_deploy'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_deploy'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% code.abs:1148--1148
        put(vars, (get(vars))#{'invariants_dcs' => (fun() -> case maps:get('c1', get(vars)) of
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
         %% code.abs:1149--1149
        put(vars, (get(vars))#{'invariants_cost' => (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_computeInitialCost'(Callee,maps:get('invariants_dcs', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_dcs = maps:get('invariants_dcs', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_computeInitialCost'(Callee, V_dcs,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_computeInitialCost',[maps:get('invariants_dcs', get(vars)),[]],#task_info{method= <<"computeInitialCost"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1152--1152
        put(vars, (get(vars))#{'messageReceiver_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getMessageReceiver_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getMessageReceiver_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getMessageReceiver_LoadBalancerInterface',[[]],#task_info{method= <<"getMessageReceiver_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1153--1153
        put(vars, (get(vars))#{'messageParser_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getMessageParser_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getMessageParser_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getMessageParser_LoadBalancerInterface',[[]],#task_info{method= <<"getMessageParser_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1154--1154
        put(vars, (get(vars))#{'headerAnalyser_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getHeaderAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getHeaderAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getHeaderAnalyser_LoadBalancerInterface',[[]],#task_info{method= <<"getHeaderAnalyser_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1155--1155
        put(vars, (get(vars))#{'linkAnalyser_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getLinkAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getLinkAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getLinkAnalyser_LoadBalancerInterface',[[]],#task_info{method= <<"getLinkAnalyser_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1156--1156
        put(vars, (get(vars))#{'textAnalyser_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getTextAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getTextAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getTextAnalyser_LoadBalancerInterface',[[]],#task_info{method= <<"getTextAnalyser_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1157--1157
        put(vars, (get(vars))#{'sentimentAnalyser_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getSentimentAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getSentimentAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getSentimentAnalyser_LoadBalancerInterface',[[]],#task_info{method= <<"getSentimentAnalyser_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1158--1158
        put(vars, (get(vars))#{'virusScanner_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getVirusScanner_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getVirusScanner_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getVirusScanner_LoadBalancerInterface',[[]],#task_info{method= <<"getVirusScanner_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1159--1159
        put(vars, (get(vars))#{'attachmentsManager_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getAttachmentsManager_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getAttachmentsManager_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getAttachmentsManager_LoadBalancerInterface',[[]],#task_info{method= <<"getAttachmentsManager_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1160--1160
        put(vars, (get(vars))#{'imageAnalyser_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getImageAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getImageAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getImageAnalyser_LoadBalancerInterface',[[]],#task_info{method= <<"getImageAnalyser_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1161--1161
        put(vars, (get(vars))#{'nsfwDetector_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getNSFWDetector_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getNSFWDetector_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getNSFWDetector_LoadBalancerInterface',[[]],#task_info{method= <<"getNSFWDetector_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1162--1162
        put(vars, (get(vars))#{'imageRecognizer_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getImageRecognizer_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getImageRecognizer_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getImageRecognizer_LoadBalancerInterface',[[]],#task_info{method= <<"getImageRecognizer_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1163--1163
        put(vars, (get(vars))#{'messageAnalyser_LoadBalancerList' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getMessageAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getMessageAnalyser_LoadBalancerInterface'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getMessageAnalyser_LoadBalancerInterface',[[]],#task_info{method= <<"getMessageAnalyser_LoadBalancerInterface"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1164--1164
        put(vars, (get(vars))#{'c2' => object:new(cog:start(Cog,DC),class_BaseScale_BaseScale,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageReceiver_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageParser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('headerAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('linkAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('textAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('sentimentAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('virusScanner_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('attachmentsManager_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('nsfwDetector_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageRecognizer_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),maps:get('dbObj', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1165--1165
        T_2 = (fun() -> case maps:get('c2', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_deploy'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_deploy'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
         %% code.abs:1166--1166
        put(vars, (get(vars))#{'base_dcs' => (fun() -> case maps:get('c2', get(vars)) of
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
         %% code.abs:1167--1167
        put(vars, (get(vars))#{'base_cost' => (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_computeInitialCost'(Callee,maps:get('base_dcs', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_dcs = maps:get('base_dcs', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_computeInitialCost'(Callee, V_dcs,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_computeInitialCost',[maps:get('base_dcs', get(vars)),[]],#task_info{method= <<"computeInitialCost"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1174--1185
        put(vars, (get(vars))#{'s1config' => m_ABS_StdLib_funs:f_list(Cog,[ 1, 1, 1, 1, 0, 0, 1, 1, 1] ,[O,DC| Stack])}),
         %% code.abs:1188--1189
        put(vars, (get(vars))#{'s1' => object:new(cog:start(Cog,DC),class_Scale1_Scale1,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageReceiver_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageParser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('headerAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('linkAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('textAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('sentimentAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('virusScanner_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('attachmentsManager_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('nsfwDetector_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageRecognizer_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),maps:get('dbObj', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1190--1190
        put(vars, (get(vars))#{'wrapperS1' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_WrapperScale,[maps:get('s1', get(vars)),null,null,null,7,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1192--1203
        put(vars, (get(vars))#{'s2config' => m_ABS_StdLib_funs:f_list(Cog,[ 1, 1, 4, 3, 1, 1, 3, 3, 3] ,[O,DC| Stack])}),
         %% code.abs:1204--1204
        put(vars, (get(vars))#{'s2' => object:new(cog:start(Cog,DC),class_Scale2_Scale2,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('headerAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('linkAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('textAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('sentimentAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('virusScanner_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('attachmentsManager_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('nsfwDetector_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageRecognizer_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),maps:get('dbObj', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1205--1205
        put(vars, (get(vars))#{'wrapperS2' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_WrapperScale,[null,maps:get('s2', get(vars)),null,null,13,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1206--1217
        put(vars, (get(vars))#{'s3config' => m_ABS_StdLib_funs:f_list(Cog,[ 2, 2, 6, 4, 1, 1, 4, 4, 4] ,[O,DC| Stack])}),
         %% code.abs:1219--1219
        put(vars, (get(vars))#{'s3' => object:new(cog:start(Cog,DC),class_Scale3_Scale3,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageReceiver_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageParser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('headerAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('linkAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('textAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('sentimentAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('virusScanner_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('attachmentsManager_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('nsfwDetector_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageRecognizer_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),maps:get('dbObj', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1220--1220
        put(vars, (get(vars))#{'wrapperS3' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_WrapperScale,[null,null,maps:get('s3', get(vars)),null,8,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1222--1233
        put(vars, (get(vars))#{'s4config' => m_ABS_StdLib_funs:f_list(Cog,[ 3, 3, 8, 6, 2, 2, 6, 6, 6] ,[O,DC| Stack])}),
         %% code.abs:1234--1234
        put(vars, (get(vars))#{'s4' => object:new(cog:start(Cog,DC),class_Scale4_Scale4,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageReceiver_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageParser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('headerAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('linkAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('textAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('sentimentAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('virusScanner_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('attachmentsManager_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('nsfwDetector_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageRecognizer_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),maps:get('dbObj', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1235--1235
        put(vars, (get(vars))#{'wrapperS4' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_WrapperScale,[null,null,null,maps:get('s4', get(vars)),14,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1239--1239
        put(vars, (get(vars))#{'kbig' => 20}),
         %% code.abs:1240--1240
        put(vars, (get(vars))#{'k' => 10}),
         %% code.abs:1241--1241
        put(vars, (get(vars))#{'initial_inbound_workload' =>  rationals:rdiv(151,10) }),
         %% code.abs:1242--1242
        put(vars, (get(vars))#{'scaler' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_ScalerService,[maps:get('kbig', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1243--1243
        T_3 = (fun() -> case maps:get('scaler', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_insertScalingElements'(Callee,maps:get('s1config', get(vars)),maps:get('wrapperS1', get(vars)),<<"Scale1"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_components = maps:get('s1config', get(vars)),
                V_scalingObj = maps:get('wrapperS1', get(vars)),
                V_scalingName = <<"Scale1"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_insertScalingElements'(Callee, V_components, V_scalingObj, V_scalingName,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_insertScalingElements',[maps:get('s1config', get(vars)),maps:get('wrapperS1', get(vars)),<<"Scale1"/utf8>>,[]],#task_info{method= <<"insertScalingElements"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_3,
         %% code.abs:1244--1244
        T_4 = (fun() -> case maps:get('scaler', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_insertScalingElements'(Callee,maps:get('s2config', get(vars)),maps:get('wrapperS2', get(vars)),<<"Scale2"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_components = maps:get('s2config', get(vars)),
                V_scalingObj = maps:get('wrapperS2', get(vars)),
                V_scalingName = <<"Scale2"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_insertScalingElements'(Callee, V_components, V_scalingObj, V_scalingName,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_insertScalingElements',[maps:get('s2config', get(vars)),maps:get('wrapperS2', get(vars)),<<"Scale2"/utf8>>,[]],#task_info{method= <<"insertScalingElements"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_4,
         %% code.abs:1245--1245
        T_5 = (fun() -> case maps:get('scaler', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_insertScalingElements'(Callee,maps:get('s3config', get(vars)),maps:get('wrapperS3', get(vars)),<<"Scale3"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_components = maps:get('s3config', get(vars)),
                V_scalingObj = maps:get('wrapperS3', get(vars)),
                V_scalingName = <<"Scale3"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_insertScalingElements'(Callee, V_components, V_scalingObj, V_scalingName,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_insertScalingElements',[maps:get('s3config', get(vars)),maps:get('wrapperS3', get(vars)),<<"Scale3"/utf8>>,[]],#task_info{method= <<"insertScalingElements"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_5,
         %% code.abs:1246--1246
        T_6 = (fun() -> case maps:get('scaler', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_insertScalingElements'(Callee,maps:get('s4config', get(vars)),maps:get('wrapperS4', get(vars)),<<"Scale4"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_components = maps:get('s4config', get(vars)),
                V_scalingObj = maps:get('wrapperS4', get(vars)),
                V_scalingName = <<"Scale4"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_insertScalingElements'(Callee, V_components, V_scalingObj, V_scalingName,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_insertScalingElements',[maps:get('s4config', get(vars)),maps:get('wrapperS4', get(vars)),<<"Scale4"/utf8>>,[]],#task_info{method= <<"insertScalingElements"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_6,
         %% code.abs:1247--1247
        T_7 = (fun() -> case maps:get('scaler', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_scale'(Callee,maps:get('initial_inbound_workload', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_inbound_workload = maps:get('initial_inbound_workload', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_scale'(Callee, V_inbound_workload,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_scale',[maps:get('initial_inbound_workload', get(vars)),[]],#task_info{method= <<"scale"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_7,
         %% code.abs:1249--1249
        put(vars, (get(vars))#{'monitor' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_Monitor,[maps:get('scaler', get(vars)),maps:get('dbObj', get(vars)),maps:get('windowDim', get(vars)),( rationals:add(maps:get('base_cost', get(vars)),maps:get('invariants_cost', get(vars)))) ,13,maps:get('kbig', get(vars)),maps:get('k', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1250--1250
        m_ABS_StdLib_funs:f_head(Cog,maps:get('messageReceiver_LoadBalancerList', get(vars)),[O,DC| Stack])
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method initializeSystem and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
