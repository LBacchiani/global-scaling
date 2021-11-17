-module(class_EmailProcessingPipelineArchitecture_SetUpSystem).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"SetUpSystemInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_SetUpSystem,'windowDim'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:1265
'get_val_internal'(#state{'windowDim'=G},'windowDim')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:1265
'set_val_internal'(S,'windowDim',V)->
    S#state{'windowDim'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'windowDim', S#state.'windowDim' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
     %% code.abs:1265--1265
    put(this, C:set_val_internal(get(this),'windowDim',300)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:1267
 %% code.abs:1267
'm_computeInitialCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_dcs_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'dcs' => V_dcs_0 }),
    try
         %% code.abs:1268--1268
        put(vars, (get(vars))#{'cost' => 0}),
         %% code.abs:1269--1272
        put(vars, (get(vars))#{'tmp665370529' => maps:get('dcs', get(vars))}),
         %% code.abs:1269--1272
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp665370529', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% code.abs:1269--1272
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp665370529', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1269--1272
                put(vars, (get(vars))#{'tmp665370529' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp665370529', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1270--1270
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
                 %% code.abs:1271--1271
                put(vars, (get(vars))#{'cost' := ( rationals:add(maps:get('cost', get(vars)),maps:get('singleCost', get(vars)))) }),
            Loop([])  end end)
        ([]),
         %% code.abs:1273--1273
        maps:get('cost', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method computeInitialCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:1276
 %% code.abs:1276
'm_initializeSystem'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1278--1278
        put(vars, (get(vars))#{'cp' => object:new(cog:start(Cog,DC),class_ABS_DC_CloudProvider,[<<"CloudProvider"/utf8>>,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1279--1279
        put(vars, (get(vars))#{'dbObj' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_DB,[[]],Cog,[O,DC| Stack])}),
         %% code.abs:1280--1280
        put(vars, (get(vars))#{'c1' => object:new(cog:start(Cog,DC),class_InvariantsDeployer_InvariantsDeployer,[maps:get('cp', get(vars)),maps:get('dbObj', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1281--1281
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
         %% code.abs:1282--1282
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
         %% code.abs:1283--1283
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
         %% code.abs:1286--1286
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
         %% code.abs:1287--1287
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
         %% code.abs:1288--1288
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
         %% code.abs:1289--1289
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
         %% code.abs:1290--1290
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
         %% code.abs:1291--1291
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
         %% code.abs:1292--1292
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
         %% code.abs:1293--1293
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
         %% code.abs:1294--1294
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
         %% code.abs:1295--1295
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
         %% code.abs:1296--1296
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
         %% code.abs:1297--1297
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
         %% code.abs:1299--1299
        put(vars, (get(vars))#{'c2' => object:new(cog:start(Cog,DC),class_BaseScale_BaseScale,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageReceiver_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageParser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('headerAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('linkAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('textAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('sentimentAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('virusScanner_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('attachmentsManager_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('nsfwDetector_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageRecognizer_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),maps:get('dbObj', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1300--1300
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
         %% code.abs:1301--1301
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
         %% code.abs:1302--1302
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
         %% code.abs:1304--1304
        put(vars, (get(vars))#{'balancers' => (fun() -> case maps:get('c1', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getLoadBalancer'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getLoadBalancer'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getLoadBalancer',[[]],#task_info{method= <<"getLoadBalancer"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:1306--1306
        put(vars, (get(vars))#{'receiverPlan' => object:new(cog:start(Cog,DC),class_MessageReceiverPlan_MessageReceiverPlan,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageReceiver_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageParser_LoadBalancerList', get(vars)),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1307--1307
        put(vars, (get(vars))#{'parserPlan' => object:new(cog:start(Cog,DC),class_MessageParserPlan_MessageParserPlan,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageParser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('headerAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('linkAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('textAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('virusScanner_LoadBalancerList', get(vars)),[O,DC| Stack]),maps:get('dbObj', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1308--1308
        put(vars, (get(vars))#{'sentimentPlan' => object:new(cog:start(Cog,DC),class_SentimentAnalyserPlan_SentimentAnalyserPlan,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('sentimentAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1309--1309
        put(vars, (get(vars))#{'virusPlan' => object:new(cog:start(Cog,DC),class_VirusScannerPlan_VirusScannerPlan,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('virusScanner_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('attachmentsManager_LoadBalancerList', get(vars)),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1310--1310
        put(vars, (get(vars))#{'attachmentsManagerPlan' => object:new(cog:start(Cog,DC),class_AttachmentsManagerPlan_AttachmentsManagerPlan,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('attachmentsManager_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1311--1311
        put(vars, (get(vars))#{'imageAnalyserPlan' => object:new(cog:start(Cog,DC),class_ImageAnalyserPlan_ImageAnalyserPlan,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('nsfwDetector_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageRecognizer_LoadBalancerList', get(vars)),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1312--1312
        put(vars, (get(vars))#{'nsfwDetectorPlan' => object:new(cog:start(Cog,DC),class_NSFWDetectorPlan_NSFWDetectorPlan,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('nsfwDetector_LoadBalancerList', get(vars)),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1313--1313
        put(vars, (get(vars))#{'imageRecognizerPlan' => object:new(cog:start(Cog,DC),class_ImageRecognizerPlan_ImageRecognizerPlan,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('imageRecognizer_LoadBalancerList', get(vars)),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1314--1314
        put(vars, (get(vars))#{'messageAnalyserPlan' => object:new(cog:start(Cog,DC),class_MessageAnalyserPlan_MessageAnalyserPlan,[maps:get('cp', get(vars)),m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),maps:get('dbObj', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% code.abs:1315--1315
        T_3 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,maps:get('messageReceiver_LoadBalancerList', get(vars)),[O,DC| Stack]) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectPlan'(Callee,maps:get('receiverPlan', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_p = maps:get('receiverPlan', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectPlan'(Callee, V_p,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('receiverPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_3,
         %% code.abs:1316--1316
        T_4 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,maps:get('messageParser_LoadBalancerList', get(vars)),[O,DC| Stack]) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectPlan'(Callee,maps:get('parserPlan', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_p = maps:get('parserPlan', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectPlan'(Callee, V_p,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('parserPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_4,
         %% code.abs:1317--1317
        T_5 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,maps:get('sentimentAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectPlan'(Callee,maps:get('sentimentPlan', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_p = maps:get('sentimentPlan', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectPlan'(Callee, V_p,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('sentimentPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_5,
         %% code.abs:1318--1318
        T_6 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,maps:get('virusScanner_LoadBalancerList', get(vars)),[O,DC| Stack]) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectPlan'(Callee,maps:get('virusPlan', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_p = maps:get('virusPlan', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectPlan'(Callee, V_p,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('virusPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_6,
         %% code.abs:1319--1319
        T_7 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,maps:get('attachmentsManager_LoadBalancerList', get(vars)),[O,DC| Stack]) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectPlan'(Callee,maps:get('attachmentsManagerPlan', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_p = maps:get('attachmentsManagerPlan', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectPlan'(Callee, V_p,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('attachmentsManagerPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_7,
         %% code.abs:1320--1320
        T_8 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,maps:get('imageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectPlan'(Callee,maps:get('imageAnalyserPlan', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_p = maps:get('imageAnalyserPlan', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectPlan'(Callee, V_p,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('imageAnalyserPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_8,
         %% code.abs:1321--1321
        T_9 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,maps:get('nsfwDetector_LoadBalancerList', get(vars)),[O,DC| Stack]) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectPlan'(Callee,maps:get('nsfwDetectorPlan', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_p = maps:get('nsfwDetectorPlan', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectPlan'(Callee, V_p,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('nsfwDetectorPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_9,
         %% code.abs:1322--1322
        T_10 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,maps:get('imageRecognizer_LoadBalancerList', get(vars)),[O,DC| Stack]) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectPlan'(Callee,maps:get('imageRecognizerPlan', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_p = maps:get('imageRecognizerPlan', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectPlan'(Callee, V_p,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('imageRecognizerPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_10,
         %% code.abs:1323--1323
        T_11 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectPlan'(Callee,maps:get('messageAnalyserPlan', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_p = maps:get('messageAnalyserPlan', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectPlan'(Callee, V_p,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('messageAnalyserPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_11,
         %% code.abs:1324--1324
        put(vars, (get(vars))#{'monitors' => m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack])}),
         %% code.abs:1325--1325
        put(vars, (get(vars))#{'receiverMonitor' => object:new(cog:start(Cog,DC),class_BalancerMonitor_LoadBalancerMonitor,[m_ABS_StdLib_funs:f_head(Cog,maps:get('messageReceiver_LoadBalancerList', get(vars)),[O,DC| Stack]),<<"MR"/utf8>>,116,1,1,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1326--1326
        put(vars, (get(vars))#{'monitors' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('monitors', get(vars)),maps:get('receiverMonitor', get(vars)),[O,DC| Stack])}),
         %% code.abs:1327--1327
        put(vars, (get(vars))#{'parserMonitor' => object:new(cog:start(Cog,DC),class_BalancerMonitor_LoadBalancerMonitor,[m_ABS_StdLib_funs:f_head(Cog,maps:get('messageParser_LoadBalancerList', get(vars)),[O,DC| Stack]),<<"MP"/utf8>>,110,1,1,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1328--1328
        put(vars, (get(vars))#{'monitors' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('monitors', get(vars)),maps:get('parserMonitor', get(vars)),[O,DC| Stack])}),
         %% code.abs:1329--1329
        put(vars, (get(vars))#{'sentimentMonitor' => object:new(cog:start(Cog,DC),class_BalancerMonitor_LoadBalancerMonitor,[m_ABS_StdLib_funs:f_head(Cog,maps:get('sentimentAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),<<"SA"/utf8>>,100,2, rationals:rdiv(5,2) ,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1330--1330
        put(vars, (get(vars))#{'monitors' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('monitors', get(vars)),maps:get('sentimentMonitor', get(vars)),[O,DC| Stack])}),
         %% code.abs:1331--1331
        put(vars, (get(vars))#{'virusMonitor' => object:new(cog:start(Cog,DC),class_BalancerMonitor_LoadBalancerMonitor,[m_ABS_StdLib_funs:f_head(Cog,maps:get('virusScanner_LoadBalancerList', get(vars)),[O,DC| Stack]),<<"VS"/utf8>>,120,1,2,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1332--1332
        put(vars, (get(vars))#{'monitors' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('monitors', get(vars)),maps:get('virusMonitor', get(vars)),[O,DC| Stack])}),
         %% code.abs:1333--1333
        put(vars, (get(vars))#{'attachMonitor' => object:new(cog:start(Cog,DC),class_BalancerMonitor_LoadBalancerMonitor,[m_ABS_StdLib_funs:f_head(Cog,maps:get('attachmentsManager_LoadBalancerList', get(vars)),[O,DC| Stack]),<<"AM"/utf8>>,231,1, rationals:rdiv(3,2) ,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1334--1334
        put(vars, (get(vars))#{'monitors' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('monitors', get(vars)),maps:get('attachMonitor', get(vars)),[O,DC| Stack])}),
         %% code.abs:1335--1335
        put(vars, (get(vars))#{'imageAnalyserMonitor' => object:new(cog:start(Cog,DC),class_BalancerMonitor_LoadBalancerMonitor,[m_ABS_StdLib_funs:f_head(Cog,maps:get('imageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),<<"IA"/utf8>>,231,1, rationals:rdiv(3,2) ,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1336--1336
        put(vars, (get(vars))#{'monitors' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('monitors', get(vars)),maps:get('imageAnalyserMonitor', get(vars)),[O,DC| Stack])}),
         %% code.abs:1337--1337
        put(vars, (get(vars))#{'nsfwMonitor' => object:new(cog:start(Cog,DC),class_BalancerMonitor_LoadBalancerMonitor,[m_ABS_StdLib_funs:f_head(Cog,maps:get('nsfwDetector_LoadBalancerList', get(vars)),[O,DC| Stack]),<<"NSFW"/utf8>>,90,1, rationals:rdiv(3,2) ,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1338--1338
        put(vars, (get(vars))#{'monitors' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('monitors', get(vars)),maps:get('nsfwMonitor', get(vars)),[O,DC| Stack])}),
         %% code.abs:1339--1339
        put(vars, (get(vars))#{'imageRecMonitor' => object:new(cog:start(Cog,DC),class_BalancerMonitor_LoadBalancerMonitor,[m_ABS_StdLib_funs:f_head(Cog,maps:get('imageRecognizer_LoadBalancerList', get(vars)),[O,DC| Stack]),<<"IR"/utf8>>,90,1, rationals:rdiv(3,2) ,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1340--1340
        put(vars, (get(vars))#{'monitors' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('monitors', get(vars)),maps:get('imageRecMonitor', get(vars)),[O,DC| Stack])}),
         %% code.abs:1341--1341
        put(vars, (get(vars))#{'messageAnalyserMonitor' => object:new(cog:start(Cog,DC),class_BalancerMonitor_LoadBalancerMonitor,[m_ABS_StdLib_funs:f_head(Cog,maps:get('messageAnalyser_LoadBalancerList', get(vars)),[O,DC| Stack]),<<"MA"/utf8>>,300,1,5,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1342--1342
        put(vars, (get(vars))#{'monitors' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('monitors', get(vars)),maps:get('messageAnalyserMonitor', get(vars)),[O,DC| Stack])}),
         %% code.abs:1358--1358
        put(vars, (get(vars))#{'monitor' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_Monitor,[maps:get('dbObj', get(vars)),maps:get('balancers', get(vars)),maps:get('monitors', get(vars)),C:get_val_internal(get(this), 'windowDim'),( rationals:add(maps:get('base_cost', get(vars)),maps:get('invariants_cost', get(vars)))) ,[]],Cog,[O,DC| Stack])}),
         %% code.abs:1360--1360
        m_ABS_StdLib_funs:f_head(Cog,maps:get('messageReceiver_LoadBalancerList', get(vars)),[O,DC| Stack])
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method initializeSystem and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
