-module(class_Sys_init_SetUpSystem).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"SetUpSystemInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Sys_init_SetUpSystem,'entryPoint'=null,'cp'=null,'setup_cost'=null,'scaler'=null,'messageParser_LoadBalancerList'=null,'headerAnalyser_LoadBalancerList'=null,'linkAnalyser_LoadBalancerList'=null,'textAnalyser_LoadBalancerList'=null,'virusScanner_LoadBalancerList'=null,'attachmentsManager_LoadBalancerList'=null,'imageAnalyser_LoadBalancerList'=null,'messageAnalyser_LoadBalancerList'=null}).
'init_internal'()->
    #state{}.

 %% sys_initialser.abs:30
'get_val_internal'(#state{'entryPoint'=G},'entryPoint')->
    object:register_read('entryPoint'),
    G;
 %% sys_initialser.abs:31
'get_val_internal'(#state{'cp'=G},'cp')->
    object:register_read('cp'),
    G;
 %% sys_initialser.abs:32
'get_val_internal'(#state{'setup_cost'=G},'setup_cost')->
    object:register_read('setup_cost'),
    G;
 %% sys_initialser.abs:33
'get_val_internal'(#state{'scaler'=G},'scaler')->
    object:register_read('scaler'),
    G;
 %% sys_initialser.abs:34
'get_val_internal'(#state{'messageParser_LoadBalancerList'=G},'messageParser_LoadBalancerList')->
    object:register_read('messageParser_LoadBalancerList'),
    G;
 %% sys_initialser.abs:35
'get_val_internal'(#state{'headerAnalyser_LoadBalancerList'=G},'headerAnalyser_LoadBalancerList')->
    object:register_read('headerAnalyser_LoadBalancerList'),
    G;
 %% sys_initialser.abs:36
'get_val_internal'(#state{'linkAnalyser_LoadBalancerList'=G},'linkAnalyser_LoadBalancerList')->
    object:register_read('linkAnalyser_LoadBalancerList'),
    G;
 %% sys_initialser.abs:37
'get_val_internal'(#state{'textAnalyser_LoadBalancerList'=G},'textAnalyser_LoadBalancerList')->
    object:register_read('textAnalyser_LoadBalancerList'),
    G;
 %% sys_initialser.abs:38
'get_val_internal'(#state{'virusScanner_LoadBalancerList'=G},'virusScanner_LoadBalancerList')->
    object:register_read('virusScanner_LoadBalancerList'),
    G;
 %% sys_initialser.abs:39
'get_val_internal'(#state{'attachmentsManager_LoadBalancerList'=G},'attachmentsManager_LoadBalancerList')->
    object:register_read('attachmentsManager_LoadBalancerList'),
    G;
 %% sys_initialser.abs:40
'get_val_internal'(#state{'imageAnalyser_LoadBalancerList'=G},'imageAnalyser_LoadBalancerList')->
    object:register_read('imageAnalyser_LoadBalancerList'),
    G;
 %% sys_initialser.abs:41
'get_val_internal'(#state{'messageAnalyser_LoadBalancerList'=G},'messageAnalyser_LoadBalancerList')->
    object:register_read('messageAnalyser_LoadBalancerList'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% sys_initialser.abs:30
'set_val_internal'(S,'entryPoint',V)->
    object:register_write('entryPoint'),
    S#state{'entryPoint'=V};
 %% sys_initialser.abs:31
'set_val_internal'(S,'cp',V)->
    object:register_write('cp'),
    S#state{'cp'=V};
 %% sys_initialser.abs:32
'set_val_internal'(S,'setup_cost',V)->
    object:register_write('setup_cost'),
    S#state{'setup_cost'=V};
 %% sys_initialser.abs:33
'set_val_internal'(S,'scaler',V)->
    object:register_write('scaler'),
    S#state{'scaler'=V};
 %% sys_initialser.abs:34
'set_val_internal'(S,'messageParser_LoadBalancerList',V)->
    object:register_write('messageParser_LoadBalancerList'),
    S#state{'messageParser_LoadBalancerList'=V};
 %% sys_initialser.abs:35
'set_val_internal'(S,'headerAnalyser_LoadBalancerList',V)->
    object:register_write('headerAnalyser_LoadBalancerList'),
    S#state{'headerAnalyser_LoadBalancerList'=V};
 %% sys_initialser.abs:36
'set_val_internal'(S,'linkAnalyser_LoadBalancerList',V)->
    object:register_write('linkAnalyser_LoadBalancerList'),
    S#state{'linkAnalyser_LoadBalancerList'=V};
 %% sys_initialser.abs:37
'set_val_internal'(S,'textAnalyser_LoadBalancerList',V)->
    object:register_write('textAnalyser_LoadBalancerList'),
    S#state{'textAnalyser_LoadBalancerList'=V};
 %% sys_initialser.abs:38
'set_val_internal'(S,'virusScanner_LoadBalancerList',V)->
    object:register_write('virusScanner_LoadBalancerList'),
    S#state{'virusScanner_LoadBalancerList'=V};
 %% sys_initialser.abs:39
'set_val_internal'(S,'attachmentsManager_LoadBalancerList',V)->
    object:register_write('attachmentsManager_LoadBalancerList'),
    S#state{'attachmentsManager_LoadBalancerList'=V};
 %% sys_initialser.abs:40
'set_val_internal'(S,'imageAnalyser_LoadBalancerList',V)->
    object:register_write('imageAnalyser_LoadBalancerList'),
    S#state{'imageAnalyser_LoadBalancerList'=V};
 %% sys_initialser.abs:41
'set_val_internal'(S,'messageAnalyser_LoadBalancerList',V)->
    object:register_write('messageAnalyser_LoadBalancerList'),
    S#state{'messageAnalyser_LoadBalancerList'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'entryPoint', S#state.'entryPoint' }
        , { 'cp', S#state.'cp' }
        , { 'setup_cost', S#state.'setup_cost' }
        , { 'scaler', S#state.'scaler' }
        , { 'messageParser_LoadBalancerList', S#state.'messageParser_LoadBalancerList' }
        , { 'headerAnalyser_LoadBalancerList', S#state.'headerAnalyser_LoadBalancerList' }
        , { 'linkAnalyser_LoadBalancerList', S#state.'linkAnalyser_LoadBalancerList' }
        , { 'textAnalyser_LoadBalancerList', S#state.'textAnalyser_LoadBalancerList' }
        , { 'virusScanner_LoadBalancerList', S#state.'virusScanner_LoadBalancerList' }
        , { 'attachmentsManager_LoadBalancerList', S#state.'attachmentsManager_LoadBalancerList' }
        , { 'imageAnalyser_LoadBalancerList', S#state.'imageAnalyser_LoadBalancerList' }
        , { 'messageAnalyser_LoadBalancerList', S#state.'messageAnalyser_LoadBalancerList' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
     %% sys_initialser.abs:30--30
     %% sys_initialser.abs:31--31
     %% sys_initialser.abs:32--32
    put(this, C:set_val_internal(get(this),'setup_cost',0)),
     %% sys_initialser.abs:33--33
     %% sys_initialser.abs:34--34
    put(this, C:set_val_internal(get(this),'messageParser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_initialser.abs:35--35
    put(this, C:set_val_internal(get(this),'headerAnalyser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_initialser.abs:36--36
    put(this, C:set_val_internal(get(this),'linkAnalyser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_initialser.abs:37--37
    put(this, C:set_val_internal(get(this),'textAnalyser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_initialser.abs:38--38
    put(this, C:set_val_internal(get(this),'virusScanner_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_initialser.abs:39--39
    put(this, C:set_val_internal(get(this),'attachmentsManager_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_initialser.abs:40--40
    put(this, C:set_val_internal(get(this),'imageAnalyser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_initialser.abs:41--41
    put(this, C:set_val_internal(get(this),'messageAnalyser_LoadBalancerList',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% sys_initialser.abs:44--44
    put(this, C:set_val_internal(get(this), 'cp',object:new(cog:start(Cog,DC),class_ABS_DC_CloudProvider,[<<"CloudProvider"/utf8>>,[]],Cog,[O,DC| Stack]))),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% sys_initialser.abs:47
 %% sys_initialser.abs:47
'm_computeInitialCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_dcs_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'dcs' => V_dcs_0 }),
    try
         %% sys_initialser.abs:48--51
        put(vars, (get(vars))#{'tmp1588318071' => maps:get('dcs', get(vars))}),
         %% sys_initialser.abs:48--51
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1588318071', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% sys_initialser.abs:48--51
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1588318071', get(vars)),[O,DC| Stack])}),
                 %% sys_initialser.abs:48--51
                put(vars, (get(vars))#{'tmp1588318071' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1588318071', get(vars)),[O,DC| Stack])}),
                 %% sys_initialser.abs:49--49
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
                 %% sys_initialser.abs:50--50
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
 %% sys_initialser.abs:54
 %% sys_initialser.abs:54
'm_getEntrypoint'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% sys_initialser.abs:54--54
        C:get_val_internal(get(this), 'entryPoint')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getEntrypoint and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% sys_initialser.abs:56
 %% sys_initialser.abs:56
'm_setupLoadBalancers'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_db_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'db' => V_db_0 }),
    try
         %% sys_initialser.abs:57--57
        put(vars, (get(vars))#{'c1' => object:new(cog:start(Cog,DC),class_InvariantsDeployer_InvariantsDeployer,[C:get_val_internal(get(this), 'cp'),maps:get('db', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% sys_initialser.abs:58--58
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
         %% sys_initialser.abs:59--59
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
         %% sys_initialser.abs:60--60
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
         %% sys_initialser.abs:61--61
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
         %% sys_initialser.abs:62--62
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
         %% sys_initialser.abs:63--63
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
         %% sys_initialser.abs:64--64
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
         %% sys_initialser.abs:65--65
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
         %% sys_initialser.abs:66--66
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
         %% sys_initialser.abs:67--67
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
         %% sys_initialser.abs:68--68
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
         %% sys_initialser.abs:69--69
        put(this, C:set_val_internal(get(this), 'entryPoint',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageParser_LoadBalancerList'),[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method setupLoadBalancers and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% sys_initialser.abs:72
 %% sys_initialser.abs:72
'm_setupServices'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_db_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'db' => V_db_0 }),
    try
         %% sys_initialser.abs:73--73
        put(vars, (get(vars))#{'c2' => object:new(cog:start(Cog,DC),class_BaseScale_BaseScale,[C:get_val_internal(get(this), 'cp'),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageParser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'headerAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'linkAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'textAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'virusScanner_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]),maps:get('db', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% sys_initialser.abs:74--74
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
         %% sys_initialser.abs:75--75
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
         %% sys_initialser.abs:76--76
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
 %% sys_initialser.abs:79
 %% sys_initialser.abs:79
'm_deployGSAlg'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_db_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'db' => V_db_0 }),
    try
         %% sys_initialser.abs:83--90
        put(vars, (get(vars))#{'s1config' => m_ABS_StdLib_funs:f_list(Cog,[ 1, 1, 0, 0, 1] ,[O,DC| Stack])}),
         %% sys_initialser.abs:93--94
        put(vars, (get(vars))#{'s1' => object:new(cog:start(Cog,DC),class_Scale1_Scale1,[C:get_val_internal(get(this), 'cp'),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageParser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'headerAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'linkAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'textAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'virusScanner_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]),maps:get('db', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% sys_initialser.abs:95--95
        put(vars, (get(vars))#{'wrapperS1' => object:new(cog:start(Cog,DC),class_Wrapper_WrapperScale,[maps:get('s1', get(vars)),null,null,null,3,[]],Cog,[O,DC| Stack])}),
         %% sys_initialser.abs:97--104
        put(vars, (get(vars))#{'s2config' => m_ABS_StdLib_funs:f_list(Cog,[ 1, 3, 1, 1, 3] ,[O,DC| Stack])}),
         %% sys_initialser.abs:105--105
        put(vars, (get(vars))#{'s2' => object:new(cog:start(Cog,DC),class_Scale2_Scale2,[C:get_val_internal(get(this), 'cp'),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageParser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'headerAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'linkAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'textAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'virusScanner_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]),maps:get('db', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% sys_initialser.abs:106--106
        put(vars, (get(vars))#{'wrapperS2' => object:new(cog:start(Cog,DC),class_Wrapper_WrapperScale,[null,maps:get('s2', get(vars)),null,null,6,[]],Cog,[O,DC| Stack])}),
         %% sys_initialser.abs:107--114
        put(vars, (get(vars))#{'s3config' => m_ABS_StdLib_funs:f_list(Cog,[ 2, 4, 1, 1, 4] ,[O,DC| Stack])}),
         %% sys_initialser.abs:116--116
        put(vars, (get(vars))#{'s3' => object:new(cog:start(Cog,DC),class_Scale3_Scale3,[C:get_val_internal(get(this), 'cp'),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageParser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'headerAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'linkAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'textAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'virusScanner_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]),maps:get('db', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% sys_initialser.abs:117--117
        put(vars, (get(vars))#{'wrapperS3' => object:new(cog:start(Cog,DC),class_Wrapper_WrapperScale,[null,null,maps:get('s3', get(vars)),null,3,[]],Cog,[O,DC| Stack])}),
         %% sys_initialser.abs:119--126
        put(vars, (get(vars))#{'s4config' => m_ABS_StdLib_funs:f_list(Cog,[ 3, 6, 2, 2, 6] ,[O,DC| Stack])}),
         %% sys_initialser.abs:127--127
        put(vars, (get(vars))#{'s4' => object:new(cog:start(Cog,DC),class_Scale4_Scale4,[C:get_val_internal(get(this), 'cp'),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageParser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'headerAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'linkAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'textAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'virusScanner_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerList'),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerList'),[O,DC| Stack]),maps:get('db', get(vars)),[]],Cog,[O,DC| Stack])}),
         %% sys_initialser.abs:128--128
        put(vars, (get(vars))#{'wrapperS4' => object:new(cog:start(Cog,DC),class_Wrapper_WrapperScale,[null,null,null,maps:get('s4', get(vars)),7,[]],Cog,[O,DC| Stack])}),
         %% sys_initialser.abs:133--133
        put(this, C:set_val_internal(get(this), 'scaler',object:new(cog:start(Cog,DC),class_Scaler_ScalerService,[C:get_val_internal(get(this), 'setup_cost'),[]],Cog,[O,DC| Stack]))),
         %% sys_initialser.abs:134--134
        T_1 = (fun() -> case C:get_val_internal(get(this), 'scaler') of
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
                TempFuture = cog:create_task(Callee,'m_insertScalingElements',[maps:get('s1config', get(vars)),maps:get('wrapperS1', get(vars)),<<"Scale1"/utf8>>,[]],#task_info{method= <<"insertScalingElements"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% sys_initialser.abs:135--135
        T_2 = (fun() -> case C:get_val_internal(get(this), 'scaler') of
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
                TempFuture = cog:create_task(Callee,'m_insertScalingElements',[maps:get('s2config', get(vars)),maps:get('wrapperS2', get(vars)),<<"Scale2"/utf8>>,[]],#task_info{method= <<"insertScalingElements"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
         %% sys_initialser.abs:136--136
        T_3 = (fun() -> case C:get_val_internal(get(this), 'scaler') of
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
                TempFuture = cog:create_task(Callee,'m_insertScalingElements',[maps:get('s3config', get(vars)),maps:get('wrapperS3', get(vars)),<<"Scale3"/utf8>>,[]],#task_info{method= <<"insertScalingElements"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_3,
         %% sys_initialser.abs:137--137
        T_4 = (fun() -> case C:get_val_internal(get(this), 'scaler') of
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
                TempFuture = cog:create_task(Callee,'m_insertScalingElements',[maps:get('s4config', get(vars)),maps:get('wrapperS4', get(vars)),<<"Scale4"/utf8>>,[]],#task_info{method= <<"insertScalingElements"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_4,
         %% sys_initialser.abs:138--138
        C:get_val_internal(get(this), 'scaler')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deployGSAlg and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% sys_initialser.abs:142
 %% sys_initialser.abs:142
'm_proactiveDeployment'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% sys_initialser.abs:143--143
        put(vars, (get(vars))#{'config' => (fun() -> case C:get_val_internal(get(this), 'scaler') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_computeConfiguration'(Callee,m_Param_funs:f_fst_pred(Cog,[O,DC| Stack]),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_target_workload = m_Param_funs:f_fst_pred(Cog,[O,DC| Stack]),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_computeConfiguration'(Callee, V_target_workload,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_computeConfiguration',[m_Param_funs:f_fst_pred(Cog,[O,DC| Stack]),[]],#task_info{method= <<"computeConfiguration"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% sys_initialser.abs:144--144
        T_1 = (fun() -> case C:get_val_internal(get(this), 'scaler') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_scale'(Callee,maps:get('config', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_configDeltas = maps:get('config', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_scale'(Callee, V_configDeltas,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_scale',[maps:get('config', get(vars)),[]],#task_info{method= <<"scale"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% sys_initialser.abs:145--145
        put(vars, (get(vars))#{'scalingAct' => (fun() -> case C:get_val_internal(get(this), 'scaler') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getScalingActions'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getScalingActions'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getScalingActions',[[]],#task_info{method= <<"getScalingActions"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% sys_initialser.abs:146--146
        T_2 = builtin:println(Cog,iolist_to_binary([<<"Initial Configuration: Basex1 "/utf8>>, maps:get('scalingAct', get(vars))])),
        T_2,
         %% sys_initialser.abs:147--147
        cog:suspend_current_task_for_duration(Cog,200,200,[O,DC| Stack]),
        ok,
         %% sys_initialser.abs:148--148
        maps:get('config', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method proactiveDeployment and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
