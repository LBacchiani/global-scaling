-module(class_MessageParserPlan_MessageParserPlan).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"MessageParserPlan">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_MessageParserPlan_MessageParserPlan,'cloudProvider'=null,'messageParser_LoadBalancerObj'=null,'headerAnalyser_LoadBalancerObj'=null,'linkAnalyser_LoadBalancerObj'=null,'textAnalyser_LoadBalancerObj'=null,'virusScanner_LoadBalancerObj'=null,'dbObj'=null,'messageAnalyser_LoadBalancerObj'=null,'ls_ls_MessageParserInterface'=null,'ls_MessageParserInterface'=null,'ls_ls_DeploymentComponent'=null,'ls_DeploymentComponent'=null,'waiting_time'=null}).
'init_internal'()->
    #state{}.

 %% MessageParserPlan.abs:13
'get_val_internal'(#state{'cloudProvider'=G},'cloudProvider')->
    G;
 %% MessageParserPlan.abs:13
'get_val_internal'(#state{'messageParser_LoadBalancerObj'=G},'messageParser_LoadBalancerObj')->
    G;
 %% MessageParserPlan.abs:13
'get_val_internal'(#state{'headerAnalyser_LoadBalancerObj'=G},'headerAnalyser_LoadBalancerObj')->
    G;
 %% MessageParserPlan.abs:13
'get_val_internal'(#state{'linkAnalyser_LoadBalancerObj'=G},'linkAnalyser_LoadBalancerObj')->
    G;
 %% MessageParserPlan.abs:13
'get_val_internal'(#state{'textAnalyser_LoadBalancerObj'=G},'textAnalyser_LoadBalancerObj')->
    G;
 %% MessageParserPlan.abs:13
'get_val_internal'(#state{'virusScanner_LoadBalancerObj'=G},'virusScanner_LoadBalancerObj')->
    G;
 %% MessageParserPlan.abs:13
'get_val_internal'(#state{'dbObj'=G},'dbObj')->
    G;
 %% MessageParserPlan.abs:13
'get_val_internal'(#state{'messageAnalyser_LoadBalancerObj'=G},'messageAnalyser_LoadBalancerObj')->
    G;
 %% MessageParserPlan.abs:15
'get_val_internal'(#state{'ls_ls_MessageParserInterface'=G},'ls_ls_MessageParserInterface')->
    G;
 %% MessageParserPlan.abs:16
'get_val_internal'(#state{'ls_MessageParserInterface'=G},'ls_MessageParserInterface')->
    G;
 %% MessageParserPlan.abs:17
'get_val_internal'(#state{'ls_ls_DeploymentComponent'=G},'ls_ls_DeploymentComponent')->
    G;
 %% MessageParserPlan.abs:18
'get_val_internal'(#state{'ls_DeploymentComponent'=G},'ls_DeploymentComponent')->
    G;
 %% MessageParserPlan.abs:19
'get_val_internal'(#state{'waiting_time'=G},'waiting_time')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% MessageParserPlan.abs:13
'set_val_internal'(S,'cloudProvider',V)->
    S#state{'cloudProvider'=V};
 %% MessageParserPlan.abs:13
'set_val_internal'(S,'messageParser_LoadBalancerObj',V)->
    S#state{'messageParser_LoadBalancerObj'=V};
 %% MessageParserPlan.abs:13
'set_val_internal'(S,'headerAnalyser_LoadBalancerObj',V)->
    S#state{'headerAnalyser_LoadBalancerObj'=V};
 %% MessageParserPlan.abs:13
'set_val_internal'(S,'linkAnalyser_LoadBalancerObj',V)->
    S#state{'linkAnalyser_LoadBalancerObj'=V};
 %% MessageParserPlan.abs:13
'set_val_internal'(S,'textAnalyser_LoadBalancerObj',V)->
    S#state{'textAnalyser_LoadBalancerObj'=V};
 %% MessageParserPlan.abs:13
'set_val_internal'(S,'virusScanner_LoadBalancerObj',V)->
    S#state{'virusScanner_LoadBalancerObj'=V};
 %% MessageParserPlan.abs:13
'set_val_internal'(S,'dbObj',V)->
    S#state{'dbObj'=V};
 %% MessageParserPlan.abs:13
'set_val_internal'(S,'messageAnalyser_LoadBalancerObj',V)->
    S#state{'messageAnalyser_LoadBalancerObj'=V};
 %% MessageParserPlan.abs:15
'set_val_internal'(S,'ls_ls_MessageParserInterface',V)->
    S#state{'ls_ls_MessageParserInterface'=V};
 %% MessageParserPlan.abs:16
'set_val_internal'(S,'ls_MessageParserInterface',V)->
    S#state{'ls_MessageParserInterface'=V};
 %% MessageParserPlan.abs:17
'set_val_internal'(S,'ls_ls_DeploymentComponent',V)->
    S#state{'ls_ls_DeploymentComponent'=V};
 %% MessageParserPlan.abs:18
'set_val_internal'(S,'ls_DeploymentComponent',V)->
    S#state{'ls_DeploymentComponent'=V};
 %% MessageParserPlan.abs:19
'set_val_internal'(S,'waiting_time',V)->
    S#state{'waiting_time'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'cloudProvider', S#state.'cloudProvider' }
        , { 'messageParser_LoadBalancerObj', S#state.'messageParser_LoadBalancerObj' }
        , { 'headerAnalyser_LoadBalancerObj', S#state.'headerAnalyser_LoadBalancerObj' }
        , { 'linkAnalyser_LoadBalancerObj', S#state.'linkAnalyser_LoadBalancerObj' }
        , { 'textAnalyser_LoadBalancerObj', S#state.'textAnalyser_LoadBalancerObj' }
        , { 'virusScanner_LoadBalancerObj', S#state.'virusScanner_LoadBalancerObj' }
        , { 'dbObj', S#state.'dbObj' }
        , { 'messageAnalyser_LoadBalancerObj', S#state.'messageAnalyser_LoadBalancerObj' }
        , { 'ls_ls_MessageParserInterface', S#state.'ls_ls_MessageParserInterface' }
        , { 'ls_MessageParserInterface', S#state.'ls_MessageParserInterface' }
        , { 'ls_ls_DeploymentComponent', S#state.'ls_ls_DeploymentComponent' }
        , { 'ls_DeploymentComponent', S#state.'ls_DeploymentComponent' }
        , { 'waiting_time', S#state.'waiting_time' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_cloudProvider,P_messageParser_LoadBalancerObj,P_headerAnalyser_LoadBalancerObj,P_linkAnalyser_LoadBalancerObj,P_textAnalyser_LoadBalancerObj,P_virusScanner_LoadBalancerObj,P_dbObj,P_messageAnalyser_LoadBalancerObj,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'cloudProvider',P_cloudProvider)),
    put(this, C:set_val_internal(get(this),'messageParser_LoadBalancerObj',P_messageParser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'headerAnalyser_LoadBalancerObj',P_headerAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'linkAnalyser_LoadBalancerObj',P_linkAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'textAnalyser_LoadBalancerObj',P_textAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'virusScanner_LoadBalancerObj',P_virusScanner_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'dbObj',P_dbObj)),
    put(this, C:set_val_internal(get(this),'messageAnalyser_LoadBalancerObj',P_messageAnalyser_LoadBalancerObj)),
     %% MessageParserPlan.abs:15--15
    put(this, C:set_val_internal(get(this),'ls_ls_MessageParserInterface',[])),
     %% MessageParserPlan.abs:16--16
    put(this, C:set_val_internal(get(this),'ls_MessageParserInterface',[])),
     %% MessageParserPlan.abs:17--17
    put(this, C:set_val_internal(get(this),'ls_ls_DeploymentComponent',[])),
     %% MessageParserPlan.abs:18--18
    put(this, C:set_val_internal(get(this),'ls_DeploymentComponent',[])),
     %% MessageParserPlan.abs:19--19
    put(this, C:set_val_internal(get(this),'waiting_time',100)),
     %% MessageParserPlan.abs:21--28
    T_1 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,950}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,2000}, { dataPair,dataMemory,3000}, { dataPair,dataCores,16}, { dataPair,dataSpeed,80}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,950}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,2000}, { dataPair,dataMemory,3000}, { dataPair,dataCores,16}, { dataPair,dataSpeed,80}] ,[O,DC| Stack])},
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_addInstanceDescription'(Callee, V_instanceDescription,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,950}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,2000}, { dataPair,dataMemory,3000}, { dataPair,dataCores,16}, { dataPair,dataSpeed,80}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog, true),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_1,
     %% MessageParserPlan.abs:29--36
    T_2 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,237}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,750}, { dataPair,dataMemory,750}, { dataPair,dataCores,4}, { dataPair,dataSpeed,20}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,237}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,750}, { dataPair,dataMemory,750}, { dataPair,dataCores,4}, { dataPair,dataSpeed,20}] ,[O,DC| Stack])},
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_addInstanceDescription'(Callee, V_instanceDescription,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,237}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,750}, { dataPair,dataMemory,750}, { dataPair,dataCores,4}, { dataPair,dataSpeed,20}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog, true),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_2,
     %% MessageParserPlan.abs:37--44
    T_3 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,119}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,500}, { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,119}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,500}, { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_addInstanceDescription'(Callee, V_instanceDescription,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,119}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,500}, { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog, true),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_3,
     %% MessageParserPlan.abs:45--52
    T_4 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,476}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,1000}, { dataPair,dataMemory,1500}, { dataPair,dataCores,8}, { dataPair,dataSpeed,40}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,476}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,1000}, { dataPair,dataMemory,1500}, { dataPair,dataCores,8}, { dataPair,dataSpeed,40}] ,[O,DC| Stack])},
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_addInstanceDescription'(Callee, V_instanceDescription,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,476}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,1000}, { dataPair,dataMemory,1500}, { dataPair,dataCores,8}, { dataPair,dataSpeed,40}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog, true),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_4,
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% MessageParserPlan.abs:55
 %% MessageParserPlan.abs:55
'm_getMessageParserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% MessageParserPlan.abs:55--55
        C:get_val_internal(get(this), 'ls_MessageParserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getMessageParserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% MessageParserPlan.abs:56
 %% MessageParserPlan.abs:56
'm_getDeploymentComponent'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% MessageParserPlan.abs:56--56
        C:get_val_internal(get(this), 'ls_DeploymentComponent')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getDeploymentComponent and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% MessageParserPlan.abs:58
 %% MessageParserPlan.abs:58
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% MessageParserPlan.abs:59--59
        put(this, C:set_val_internal(get(this), 'ls_ls_MessageParserInterface',[C:get_val_internal(get(this), 'ls_MessageParserInterface') | C:get_val_internal(get(this), 'ls_ls_MessageParserInterface')])),
         %% MessageParserPlan.abs:60--60
        put(this, C:set_val_internal(get(this), 'ls_MessageParserInterface',[])),
         %% MessageParserPlan.abs:61--61
        put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',[C:get_val_internal(get(this), 'ls_DeploymentComponent') | C:get_val_internal(get(this), 'ls_ls_DeploymentComponent')])),
         %% MessageParserPlan.abs:62--62
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[])),
         %% MessageParserPlan.abs:63--63
        T_1 = (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_deploy_aux'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_deploy_aux'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_deploy_aux',[[]],#task_info{method= <<"deploy_aux"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% MessageParserPlan.abs:66
 %% MessageParserPlan.abs:66
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% MessageParserPlan.abs:67--67
        case (not cmp:eq(C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[])) of
            true ->  %% MessageParserPlan.abs:68--68
            T_1 = (fun() -> case O of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_undeploy_aux'(Callee,[O,DC,Vars| Stack]),
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
                    Result=T:'m_undeploy_aux'(Callee,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_undeploy_aux',[[]],#task_info{method= <<"undeploy_aux"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_1,
             %% MessageParserPlan.abs:69--69
            put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% MessageParserPlan.abs:70--70
            put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% MessageParserPlan.abs:71--71
            put(this, C:set_val_internal(get(this), 'ls_MessageParserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_MessageParserInterface'),[O,DC| Stack]))),
             %% MessageParserPlan.abs:72--72
            put(this, C:set_val_internal(get(this), 'ls_ls_MessageParserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_MessageParserInterface'),[O,DC| Stack])));
            false ->         ok
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% MessageParserPlan.abs:77
 %% MessageParserPlan.abs:77
'm_deploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% MessageParserPlan.abs:78--78
        put(vars, (get(vars))#{'speedPatchMap' => m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack])}),
         %% MessageParserPlan.abs:79--79
        put(vars, (get(vars))#{'c4_large_0' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% MessageParserPlan.abs:80--80
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_0', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% MessageParserPlan.abs:81--81
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),0,[O,DC| Stack])}),
         %% MessageParserPlan.abs:82--82
        put(vars, (get(vars))#{'odefault___MessageParser_0_c4_large_0' => object:new(cog:start(Cog,maps:get('c4_large_0', get(vars))),class_EmailProcessingPipelineArchitecture_MessageParser,[C:get_val_internal(get(this), 'headerAnalyser_LoadBalancerObj'),C:get_val_internal(get(this), 'linkAnalyser_LoadBalancerObj'),C:get_val_internal(get(this), 'textAnalyser_LoadBalancerObj'),C:get_val_internal(get(this), 'virusScanner_LoadBalancerObj'),C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj'),C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% MessageParserPlan.abs:83--83
        put(vars, (get(vars))#{'coreRequired_odefault___MessageParser_0_c4_large_0' => 1}),
         %% MessageParserPlan.abs:84--84
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___MessageParser_0_c4_large_0', get(vars)))) ,[O,DC| Stack])}),
         %% MessageParserPlan.abs:85--85
        put(this, C:set_val_internal(get(this), 'ls_MessageParserInterface',[maps:get('odefault___MessageParser_0_c4_large_0', get(vars)) | C:get_val_internal(get(this), 'ls_MessageParserInterface')])),
         %% MessageParserPlan.abs:86--86
        T_1 = cog:create_task(O,'m_patchSpeed',[maps:get('speedPatchMap', get(vars)),[]],#task_info{method= <<"patchSpeed"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
         %% MessageParserPlan.abs:87--87
        cog:suspend_current_task_for_duration(Cog,C:get_val_internal(get(this), 'waiting_time'),C:get_val_internal(get(this), 'waiting_time'),[O,DC| Stack]),
        ok,
         %% MessageParserPlan.abs:88--88
        T_2 = (fun() -> case C:get_val_internal(get(this), 'messageParser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___MessageParser_0_c4_large_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___MessageParser_0_c4_large_0', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___MessageParser_0_c4_large_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy_aux and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% MessageParserPlan.abs:91
 %% MessageParserPlan.abs:91
'm_undeploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% MessageParserPlan.abs:92--92
        put(vars, (get(vars))#{'odefault___MessageParser_0_c4_large_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_MessageParserInterface'),0,[O,DC| Stack])}),
         %% MessageParserPlan.abs:93--93
        T_1 = (fun() -> case C:get_val_internal(get(this), 'messageParser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% MessageParserPlan.abs:94--94
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% MessageParserPlan.abs:95--95
                T_2 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_shutdownInstance'(Callee,m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_instance = m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]),
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_shutdownInstance'(Callee, V_instance,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_shutdownInstance',[m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]),[]],#task_info{method= <<"shutdownInstance"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_2,
                 %% MessageParserPlan.abs:96--96
                put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]))),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy_aux and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% MessageParserPlan.abs:100
 %% MessageParserPlan.abs:100
'm_patchSpeed'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_dcs_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'dcs' => V_dcs_0 }),
    try
         %% MessageParserPlan.abs:101--114
        put(vars, (get(vars))#{'tmp1451747629' => m_ABS_StdLib_funs:f_entries(Cog,maps:get('dcs', get(vars)),[O,DC| Stack])}),
         %% MessageParserPlan.abs:101--114
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1451747629', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% MessageParserPlan.abs:101--114
                put(vars, (get(vars))#{'entry' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1451747629', get(vars)),[O,DC| Stack])}),
                 %% MessageParserPlan.abs:101--114
                put(vars, (get(vars))#{'tmp1451747629' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1451747629', get(vars)),[O,DC| Stack])}),
                 %% MessageParserPlan.abs:102--102
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_fst(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% MessageParserPlan.abs:103--103
                put(vars, (get(vars))#{'coreUsed' => m_ABS_StdLib_funs:f_snd(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% MessageParserPlan.abs:104--104
                put(vars, (get(vars))#{'tmp1187497363' => cog:create_task(maps:get('dc', get(vars)),'m_total',[dataSpeed,[]],#task_info{method= <<"total"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
                 %% MessageParserPlan.abs:104--104
                future:await(maps:get('tmp1187497363', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% MessageParserPlan.abs:104--104
                put(vars, (get(vars))#{'speed_aux' => future:get_blocking(maps:get('tmp1187497363', get(vars)), Cog, [O,DC| Stack])}),
                 %% MessageParserPlan.abs:105--108
                put(vars, (get(vars))#{'total_speed' => begin
                    case maps:get('speed_aux', get(vars)) of
                        
                        {dataFin,V_x_0}->V_x_0;
                        _->-1
                    end
                end}),
                 %% MessageParserPlan.abs:109--109
                case (not cmp:eq(maps:get('total_speed', get(vars)),-1)) of
                    true ->  %% MessageParserPlan.abs:110--110
                    put(vars, (get(vars))#{'tmp1783382625' => cog:create_task(maps:get('dc', get(vars)),'m_getNumberOfCores',[[]],#task_info{method= <<"getNumberOfCores"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
                     %% MessageParserPlan.abs:110--110
                    future:await(maps:get('tmp1783382625', get(vars)), Cog, [O,DC| Stack]),
                    ok,
                     %% MessageParserPlan.abs:110--110
                    put(vars, (get(vars))#{'totalCore' => future:get_blocking(maps:get('tmp1783382625', get(vars)), Cog, [O,DC| Stack])}),
                     %% MessageParserPlan.abs:111--111
                    put(vars, (get(vars))#{'speedPerCore' =>  rationals:rdiv(maps:get('total_speed', get(vars)),maps:get('totalCore', get(vars))) }),
                     %% MessageParserPlan.abs:112--112
                    T_1 = cog:create_task(maps:get('dc', get(vars)),'m_decrementResources',[( rationals:sub(maps:get('total_speed', get(vars)),( rationals:mul(maps:get('speedPerCore', get(vars)),maps:get('coreUsed', get(vars)))) )) ,dataSpeed,[]],#task_info{method= <<"decrementResources"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
                    T_1;
                    false ->                 ok
                end,
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method patchSpeed and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
