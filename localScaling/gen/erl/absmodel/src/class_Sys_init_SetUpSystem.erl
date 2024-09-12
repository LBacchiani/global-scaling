-module(class_Sys_init_SetUpSystem).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"SetUpSystemInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Sys_init_SetUpSystem,'windowDim'=null,'setup_cost'=null,'cp'=null,'entryPoint'=null,'messageParser_LoadBalancerList'=null,'headerAnalyser_LoadBalancerList'=null,'linkAnalyser_LoadBalancerList'=null,'textAnalyser_LoadBalancerList'=null,'virusScanner_LoadBalancerList'=null,'attachmentsManager_LoadBalancerList'=null,'imageAnalyser_LoadBalancerList'=null,'messageAnalyser_LoadBalancerList'=null,'balancers'=null,'local_monitors'=null}).
'init_internal'()->
    #state{}.

 %% sys_init.abs:32
'get_val_internal'(#state{'windowDim'=G},'windowDim')->
    object:register_read('windowDim'),
    G;
 %% sys_init.abs:33
'get_val_internal'(#state{'setup_cost'=G},'setup_cost')->
    object:register_read('setup_cost'),
    G;
 %% sys_init.abs:34
'get_val_internal'(#state{'cp'=G},'cp')->
    object:register_read('cp'),
    G;
 %% sys_init.abs:35
'get_val_internal'(#state{'entryPoint'=G},'entryPoint')->
    object:register_read('entryPoint'),
    G;
 %% sys_init.abs:36
'get_val_internal'(#state{'messageParser_LoadBalancerList'=G},'messageParser_LoadBalancerList')->
    object:register_read('messageParser_LoadBalancerList'),
    G;
 %% sys_init.abs:37
'get_val_internal'(#state{'headerAnalyser_LoadBalancerList'=G},'headerAnalyser_LoadBalancerList')->
    object:register_read('headerAnalyser_LoadBalancerList'),
    G;
 %% sys_init.abs:38
'get_val_internal'(#state{'linkAnalyser_LoadBalancerList'=G},'linkAnalyser_LoadBalancerList')->
    object:register_read('linkAnalyser_LoadBalancerList'),
    G;
 %% sys_init.abs:39
'get_val_internal'(#state{'textAnalyser_LoadBalancerList'=G},'textAnalyser_LoadBalancerList')->
    object:register_read('textAnalyser_LoadBalancerList'),
    G;
 %% sys_init.abs:40
'get_val_internal'(#state{'virusScanner_LoadBalancerList'=G},'virusScanner_LoadBalancerList')->
    object:register_read('virusScanner_LoadBalancerList'),
    G;
 %% sys_init.abs:41
'get_val_internal'(#state{'attachmentsManager_LoadBalancerList'=G},'attachmentsManager_LoadBalancerList')->
    object:register_read('attachmentsManager_LoadBalancerList'),
    G;
 %% sys_init.abs:42
'get_val_internal'(#state{'imageAnalyser_LoadBalancerList'=G},'imageAnalyser_LoadBalancerList')->
    object:register_read('imageAnalyser_LoadBalancerList'),
    G;
 %% sys_init.abs:43
'get_val_internal'(#state{'messageAnalyser_LoadBalancerList'=G},'messageAnalyser_LoadBalancerList')->
    object:register_read('messageAnalyser_LoadBalancerList'),
    G;
 %% sys_init.abs:44
'get_val_internal'(#state{'balancers'=G},'balancers')->
    object:register_read('balancers'),
    G;
 %% sys_init.abs:45
'get_val_internal'(#state{'local_monitors'=G},'local_monitors')->
    object:register_read('local_monitors'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% sys_init.abs:32
'set_val_internal'(S,'windowDim',V)->
    object:register_write('windowDim'),
    S#state{'windowDim'=V};
 %% sys_init.abs:33
'set_val_internal'(S,'setup_cost',V)->
    object:register_write('setup_cost'),
    S#state{'setup_cost'=V};
 %% sys_init.abs:34
'set_val_internal'(S,'cp',V)->
    object:register_write('cp'),
    S#state{'cp'=V};
 %% sys_init.abs:35
'set_val_internal'(S,'entryPoint',V)->
    object:register_write('entryPoint'),
    S#state{'entryPoint'=V};
 %% sys_init.abs:36
'set_val_internal'(S,'messageParser_LoadBalancerList',V)->
    object:register_write('messageParser_LoadBalancerList'),
    S#state{'messageParser_LoadBalancerList'=V};
 %% sys_init.abs:37
'set_val_internal'(S,'headerAnalyser_LoadBalancerList',V)->
    object:register_write('headerAnalyser_LoadBalancerList'),
    S#state{'headerAnalyser_LoadBalancerList'=V};
 %% sys_init.abs:38
'set_val_internal'(S,'linkAnalyser_LoadBalancerList',V)->
    object:register_write('linkAnalyser_LoadBalancerList'),
    S#state{'linkAnalyser_LoadBalancerList'=V};
 %% sys_init.abs:39
'set_val_internal'(S,'textAnalyser_LoadBalancerList',V)->
    object:register_write('textAnalyser_LoadBalancerList'),
    S#state{'textAnalyser_LoadBalancerList'=V};
 %% sys_init.abs:40
'set_val_internal'(S,'virusScanner_LoadBalancerList',V)->
    object:register_write('virusScanner_LoadBalancerList'),
    S#state{'virusScanner_LoadBalancerList'=V};
 %% sys_init.abs:41
'set_val_internal'(S,'attachmentsManager_LoadBalancerList',V)->
    object:register_write('attachmentsManager_LoadBalancerList'),
    S#state{'attachmentsManager_LoadBalancerList'=V};
 %% sys_init.abs:42
'set_val_internal'(S,'imageAnalyser_LoadBalancerList',V)->
    object:register_write('imageAnalyser_LoadBalancerList'),
    S#state{'imageAnalyser_LoadBalancerList'=V};
 %% sys_init.abs:43
'set_val_internal'(S,'messageAnalyser_LoadBalancerList',V)->
    object:register_write('messageAnalyser_LoadBalancerList'),
    S#state{'messageAnalyser_LoadBalancerList'=V};
 %% sys_init.abs:44
'set_val_internal'(S,'balancers',V)->
    object:register_write('balancers'),
    S#state{'balancers'=V};
 %% sys_init.abs:45
'set_val_internal'(S,'local_monitors',V)->
    object:register_write('local_monitors'),
    S#state{'local_monitors'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'windowDim', S#state.'windowDim' }
        , { 'setup_cost', S#state.'setup_cost' }
        , { 'cp', S#state.'cp' }
        , { 'entryPoint', S#state.'entryPoint' }
        , { 'messageParser_LoadBalancerList', S#state.'messageParser_LoadBalancerList' }
        , { 'headerAnalyser_LoadBalancerList', S#state.'headerAnalyser_LoadBalancerList' }
        , { 'linkAnalyser_LoadBalancerList', S#state.'linkAnalyser_LoadBalancerList' }
        , { 'textAnalyser_LoadBalancerList', S#state.'textAnalyser_LoadBalancerList' }
        , { 'virusScanner_LoadBalancerList', S#state.'virusScanner_LoadBalancerList' }
        , { 'attachmentsManager_LoadBalancerList', S#state.'attachmentsManager_LoadBalancerList' }
        , { 'imageAnalyser_LoadBalancerList', S#state.'imageAnalyser_LoadBalancerList' }
        , { 'messageAnalyser_LoadBalancerList', S#state.'messageAnalyser_LoadBalancerList' }
        , { 'balancers', S#state.'balancers' }
        , { 'local_monitors', S#state.'local_monitors' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
     %% sys_init.abs:32--32
    put(this, C:set_val_internal(get(this),'windowDim',300)),
     %% sys_init.abs:33--33
    put(this, C:set_val_internal(get(this),'setup_cost',0)),
     %% sys_init.abs:34--34
     %% sys_init.abs:35--35
     %% sys_init.abs:36--36
    put(this, C:set_val_internal(get(this),'messageParser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_init.abs:37--37
    put(this, C:set_val_internal(get(this),'headerAnalyser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_init.abs:38--38
    put(this, C:set_val_internal(get(this),'linkAnalyser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_init.abs:39--39
    put(this, C:set_val_internal(get(this),'textAnalyser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_init.abs:40--40
    put(this, C:set_val_internal(get(this),'virusScanner_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_init.abs:41--41
    put(this, C:set_val_internal(get(this),'attachmentsManager_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_init.abs:42--42
    put(this, C:set_val_internal(get(this),'imageAnalyser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_init.abs:43--43
    put(this, C:set_val_internal(get(this),'messageAnalyser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_init.abs:44--44
    put(this, C:set_val_internal(get(this),'balancers',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_init.abs:45--45
    put(this, C:set_val_internal(get(this),'local_monitors',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_init.abs:48--48
    put(this, C:set_val_internal(get(this), 'cp',object:new(cog:start(Cog,DC),class_ABS_DC_CloudProvider,[<<"CloudProvider"/utf8>>,[]],Cog,[O,DC| Stack]))),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% sys_init.abs:51
 %% sys_init.abs:51
'm_computeInitialCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_dcs_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'dcs' => V_dcs_0 }),
    try
         %% sys_init.abs:52--55
        put(vars, (get(vars))#{'tmp943279734' => maps:get('dcs', get(vars))}),
         %% sys_init.abs:52--55
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp943279734', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% sys_init.abs:52--55
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp943279734', get(vars)),[O,DC| Stack])}),
                 %% sys_init.abs:52--55
                put(vars, (get(vars))#{'tmp943279734' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp943279734', get(vars)),[O,DC| Stack])}),
                 %% sys_init.abs:53--53
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
                        TempFuture = cog:create_task(Callee,'m_getCostPerInterval',[[]],#task_info{method= <<"getCostPerInterval"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% sys_init.abs:54--54
                put(this, C:set_val_internal(get(this), 'setup_cost',( rationals:add(C:get_val_internal(get(this), 'setup_cost'),maps:get('singleCost', get(vars)))) )),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method computeInitialCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% sys_init.abs:58
 %% sys_init.abs:58
'm_setupLoadBalancers'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_db_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'db' => V_db_0 }),
    try
         %% sys_init.abs:59--59
        put(vars, (get(vars))#{'c1' => object:new(cog:start(Cog,DC),class_InvariantsDeployer_InvariantsDeployer,[C:get_val_internal(get(this), 'cp'),maps:get('db', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:60--60
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
                TempFuture = cog:create_task(Callee,'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% sys_init.abs:61--61
        put(vars, (get(vars))#{'dcs' => (fun() -> case maps:get('c1', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_getDeploymentComponent',[[]],#task_info{method= <<"getDeploymentComponent"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% sys_init.abs:62--62
        T_2 = (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_computeInitialCost'(Callee,maps:get('dcs', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_dcs = maps:get('dcs', get(vars)),
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
                TempFuture = cog:create_task(Callee,'m_computeInitialCost',[maps:get('dcs', get(vars)),[]],#task_info{method= <<"computeInitialCost"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
         %% sys_init.abs:63--63
        put(this, C:set_val_internal(get(this), 'messageParser_LoadBalancerList',(fun() -> case maps:get('c1', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_getMessageParser_LoadBalancerInterface',[[]],#task_info{method= <<"getMessageParser_LoadBalancerInterface"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% sys_init.abs:64--64
        put(this, C:set_val_internal(get(this), 'headerAnalyser_LoadBalancerList',(fun() -> case maps:get('c1', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_getHeaderAnalyser_LoadBalancerInterface',[[]],#task_info{method= <<"getHeaderAnalyser_LoadBalancerInterface"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% sys_init.abs:65--65
        put(this, C:set_val_internal(get(this), 'linkAnalyser_LoadBalancerList',(fun() -> case maps:get('c1', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_getLinkAnalyser_LoadBalancerInterface',[[]],#task_info{method= <<"getLinkAnalyser_LoadBalancerInterface"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% sys_init.abs:66--66
        put(this, C:set_val_internal(get(this), 'textAnalyser_LoadBalancerList',(fun() -> case maps:get('c1', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_getTextAnalyser_LoadBalancerInterface',[[]],#task_info{method= <<"getTextAnalyser_LoadBalancerInterface"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% sys_init.abs:67--67
        put(this, C:set_val_internal(get(this), 'virusScanner_LoadBalancerList',(fun() -> case maps:get('c1', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_getVirusScanner_LoadBalancerInterface',[[]],#task_info{method= <<"getVirusScanner_LoadBalancerInterface"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% sys_init.abs:68--68
        put(this, C:set_val_internal(get(this), 'attachmentsManager_LoadBalancerList',(fun() -> case maps:get('c1', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_getAttachmentsManager_LoadBalancerInterface',[[]],#task_info{method= <<"getAttachmentsManager_LoadBalancerInterface"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% sys_init.abs:69--69
        put(this, C:set_val_internal(get(this), 'imageAnalyser_LoadBalancerList',(fun() -> case maps:get('c1', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_getImageAnalyser_LoadBalancerInterface',[[]],#task_info{method= <<"getImageAnalyser_LoadBalancerInterface"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% sys_init.abs:70--70
        put(this, C:set_val_internal(get(this), 'messageAnalyser_LoadBalancerList',(fun() -> case maps:get('c1', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_getMessageAnalyser_LoadBalancerInterface',[[]],#task_info{method= <<"getMessageAnalyser_LoadBalancerInterface"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% sys_init.abs:71--71
        put(this, C:set_val_internal(get(this), 'balancers',(fun() -> case maps:get('c1', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_getLoadBalancer',[[]],#task_info{method= <<"getLoadBalancer"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)())),
         %% sys_init.abs:72--72
        put(this, C:set_val_internal(get(this), 'entryPoint',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageParser_LoadBalancerList'),[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method setupLoadBalancers and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% sys_init.abs:75
 %% sys_init.abs:75
'm_connectPlan'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_db_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'db' => V_db_0 }),
    try
         %% sys_init.abs:76--76
        put(vars, (get(vars))#{'parserPlan' => object:new(cog:start(Cog,DC),class_MessageParserPlan_MessageParserPlan,[C:get_val_internal(get(this), 'cp'),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageParser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'headerAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'linkAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'textAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'virusScanner_LoadBalancerList'),[O,DC| Stack]),maps:get('db', get(vars)),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:77--77
        put(vars, (get(vars))#{'virusPlan' => object:new(cog:start(Cog,DC),class_VirusScannerPlan_VirusScannerPlan,[C:get_val_internal(get(this), 'cp'),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'virusScanner_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerList'),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:78--78
        put(vars, (get(vars))#{'attachmentsManagerPlan' => object:new(cog:start(Cog,DC),class_AttachmentsManagerPlan_AttachmentsManagerPlan,[C:get_val_internal(get(this), 'cp'),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerList'),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:79--79
        put(vars, (get(vars))#{'imageAnalyserPlan' => object:new(cog:start(Cog,DC),class_ImageAnalyserPlan_ImageAnalyserPlan,[C:get_val_internal(get(this), 'cp'),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:80--80
        put(vars, (get(vars))#{'messageAnalyserPlan' => object:new(cog:start(Cog,DC),class_MessageAnalyserPlan_MessageAnalyserPlan,[C:get_val_internal(get(this), 'cp'),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]),maps:get('db', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:81--81
        T_1 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageParser_LoadBalancerList'),[O,DC| Stack]) of
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
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('parserPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% sys_init.abs:82--82
        T_2 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'virusScanner_LoadBalancerList'),[O,DC| Stack]) of
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
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('virusPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
         %% sys_init.abs:83--83
        T_3 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerList'),[O,DC| Stack]) of
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
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('attachmentsManagerPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_3,
         %% sys_init.abs:84--84
        T_4 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerList'),[O,DC| Stack]) of
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
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('imageAnalyserPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_4,
         %% sys_init.abs:85--85
        T_5 = (fun() -> case m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]) of
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
                TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('messageAnalyserPlan', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_5,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method connectPlan and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% sys_init.abs:88
 %% sys_init.abs:88
'm_createLocalMonitors'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% sys_init.abs:89--89
        put(vars, (get(vars))#{'parserMonitor' => object:new(cog:start(Cog,DC),class_LocalMonitor_LocalMonitor,[m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageParser_LoadBalancerList'),[O,DC| Stack]),<<"MP"/utf8>>,110,1,1,m_Param_funs:f_mp_prediction(Cog,[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:90--90
        put(this, C:set_val_internal(get(this), 'local_monitors',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'local_monitors'),maps:get('parserMonitor', get(vars)),[O,DC| Stack]))),
         %% sys_init.abs:91--91
        put(vars, (get(vars))#{'virusMonitor' => object:new(cog:start(Cog,DC),class_LocalMonitor_LocalMonitor,[m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'virusScanner_LoadBalancerList'),[O,DC| Stack]),<<"VS"/utf8>>,120,1,2,m_Param_funs:f_vs_prediction(Cog,[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:92--92
        put(this, C:set_val_internal(get(this), 'local_monitors',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'local_monitors'),maps:get('virusMonitor', get(vars)),[O,DC| Stack]))),
         %% sys_init.abs:93--93
        put(vars, (get(vars))#{'attachMonitor' => object:new(cog:start(Cog,DC),class_LocalMonitor_LocalMonitor,[m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerList'),[O,DC| Stack]),<<"AM"/utf8>>,231,1, rationals:rdiv(3,2) ,m_Param_funs:f_am_prediction(Cog,[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:94--94
        put(this, C:set_val_internal(get(this), 'local_monitors',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'local_monitors'),maps:get('attachMonitor', get(vars)),[O,DC| Stack]))),
         %% sys_init.abs:95--95
        put(vars, (get(vars))#{'imageAnalyserMonitor' => object:new(cog:start(Cog,DC),class_LocalMonitor_LocalMonitor,[m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerList'),[O,DC| Stack]),<<"IA"/utf8>>,231,1, rationals:rdiv(3,2) ,m_Param_funs:f_ia_prediction(Cog,[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:96--96
        put(this, C:set_val_internal(get(this), 'local_monitors',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'local_monitors'),maps:get('imageAnalyserMonitor', get(vars)),[O,DC| Stack]))),
         %% sys_init.abs:97--97
        put(vars, (get(vars))#{'messageAnalyserMonitor' => object:new(cog:start(Cog,DC),class_LocalMonitor_LocalMonitor,[m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]),<<"MA"/utf8>>,300,1,5,m_Param_funs:f_ma_prediction(Cog,[O,DC| Stack]),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:98--98
        put(this, C:set_val_internal(get(this), 'local_monitors',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'local_monitors'),maps:get('messageAnalyserMonitor', get(vars)),[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method createLocalMonitors and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% sys_init.abs:101
 %% sys_init.abs:101
'm_setupServices'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_db_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'db' => V_db_0 }),
    try
         %% sys_init.abs:102--102
        put(vars, (get(vars))#{'c2' => object:new(cog:start(Cog,DC),class_BaseScale_BaseScale,[C:get_val_internal(get(this), 'cp'),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageParser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'headerAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'linkAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'textAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'virusScanner_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]),maps:get('db', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% sys_init.abs:103--103
        T_1 = (fun() -> case maps:get('c2', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_deploy',[[]],#task_info{method= <<"deploy"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% sys_init.abs:104--104
        put(vars, (get(vars))#{'dcs' => (fun() -> case maps:get('c2', get(vars)) of
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
                TempFuture = cog:create_task(Callee,'m_getDeploymentComponent',[[]],#task_info{method= <<"getDeploymentComponent"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% sys_init.abs:105--105
        T_2 = (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_computeInitialCost'(Callee,maps:get('dcs', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_dcs = maps:get('dcs', get(vars)),
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
                TempFuture = cog:create_task(Callee,'m_computeInitialCost',[maps:get('dcs', get(vars)),[]],#task_info{method= <<"computeInitialCost"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method setupServices and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% sys_init.abs:108
 %% sys_init.abs:108
'm_getEntrypoint'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% sys_init.abs:108--108
        C:get_val_internal(get(this), 'entryPoint')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getEntrypoint and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% sys_init.abs:110
 %% sys_init.abs:110
'm_getLocalMonitors'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% sys_init.abs:110--110
        C:get_val_internal(get(this), 'local_monitors')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getLocalMonitors and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% sys_init.abs:112
 %% sys_init.abs:112
'm_getLB'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% sys_init.abs:112--112
        C:get_val_internal(get(this), 'balancers')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getLB and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% sys_init.abs:114
 %% sys_init.abs:114
'm_getSetupCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% sys_init.abs:114--114
        C:get_val_internal(get(this), 'setup_cost')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getSetupCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
