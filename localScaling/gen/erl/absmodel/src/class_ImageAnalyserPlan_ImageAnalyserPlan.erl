-module(class_ImageAnalyserPlan_ImageAnalyserPlan).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"ImageAnalyserPlan">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_ImageAnalyserPlan_ImageAnalyserPlan,'cloudProvider'=null,'imageAnalyser_LoadBalancerObj'=null,'messageAnalyser_LoadBalancerObj'=null,'ls_ls_ImageAnalyserInterface'=null,'ls_ImageAnalyserInterface'=null,'ls_ls_DeploymentComponent'=null,'ls_DeploymentComponent'=null,'waiting_time'=null}).
'init_internal'()->
    #state{}.

 %% timesmartdel-orchs/ImageAnalyserPlan.abs:15
'get_val_internal'(#state{'cloudProvider'=G},'cloudProvider')->
    object:register_read('cloudProvider'),
    G;
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:15
'get_val_internal'(#state{'imageAnalyser_LoadBalancerObj'=G},'imageAnalyser_LoadBalancerObj')->
    object:register_read('imageAnalyser_LoadBalancerObj'),
    G;
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:15
'get_val_internal'(#state{'messageAnalyser_LoadBalancerObj'=G},'messageAnalyser_LoadBalancerObj')->
    object:register_read('messageAnalyser_LoadBalancerObj'),
    G;
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:17
'get_val_internal'(#state{'ls_ls_ImageAnalyserInterface'=G},'ls_ls_ImageAnalyserInterface')->
    object:register_read('ls_ls_ImageAnalyserInterface'),
    G;
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:18
'get_val_internal'(#state{'ls_ImageAnalyserInterface'=G},'ls_ImageAnalyserInterface')->
    object:register_read('ls_ImageAnalyserInterface'),
    G;
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:19
'get_val_internal'(#state{'ls_ls_DeploymentComponent'=G},'ls_ls_DeploymentComponent')->
    object:register_read('ls_ls_DeploymentComponent'),
    G;
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:20
'get_val_internal'(#state{'ls_DeploymentComponent'=G},'ls_DeploymentComponent')->
    object:register_read('ls_DeploymentComponent'),
    G;
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:21
'get_val_internal'(#state{'waiting_time'=G},'waiting_time')->
    object:register_read('waiting_time'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% timesmartdel-orchs/ImageAnalyserPlan.abs:15
'set_val_internal'(S,'cloudProvider',V)->
    object:register_write('cloudProvider'),
    S#state{'cloudProvider'=V};
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:15
'set_val_internal'(S,'imageAnalyser_LoadBalancerObj',V)->
    object:register_write('imageAnalyser_LoadBalancerObj'),
    S#state{'imageAnalyser_LoadBalancerObj'=V};
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:15
'set_val_internal'(S,'messageAnalyser_LoadBalancerObj',V)->
    object:register_write('messageAnalyser_LoadBalancerObj'),
    S#state{'messageAnalyser_LoadBalancerObj'=V};
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:17
'set_val_internal'(S,'ls_ls_ImageAnalyserInterface',V)->
    object:register_write('ls_ls_ImageAnalyserInterface'),
    S#state{'ls_ls_ImageAnalyserInterface'=V};
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:18
'set_val_internal'(S,'ls_ImageAnalyserInterface',V)->
    object:register_write('ls_ImageAnalyserInterface'),
    S#state{'ls_ImageAnalyserInterface'=V};
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:19
'set_val_internal'(S,'ls_ls_DeploymentComponent',V)->
    object:register_write('ls_ls_DeploymentComponent'),
    S#state{'ls_ls_DeploymentComponent'=V};
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:20
'set_val_internal'(S,'ls_DeploymentComponent',V)->
    object:register_write('ls_DeploymentComponent'),
    S#state{'ls_DeploymentComponent'=V};
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:21
'set_val_internal'(S,'waiting_time',V)->
    object:register_write('waiting_time'),
    S#state{'waiting_time'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'cloudProvider', S#state.'cloudProvider' }
        , { 'imageAnalyser_LoadBalancerObj', S#state.'imageAnalyser_LoadBalancerObj' }
        , { 'messageAnalyser_LoadBalancerObj', S#state.'messageAnalyser_LoadBalancerObj' }
        , { 'ls_ls_ImageAnalyserInterface', S#state.'ls_ls_ImageAnalyserInterface' }
        , { 'ls_ImageAnalyserInterface', S#state.'ls_ImageAnalyserInterface' }
        , { 'ls_ls_DeploymentComponent', S#state.'ls_ls_DeploymentComponent' }
        , { 'ls_DeploymentComponent', S#state.'ls_DeploymentComponent' }
        , { 'waiting_time', S#state.'waiting_time' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_cloudProvider,P_imageAnalyser_LoadBalancerObj,P_messageAnalyser_LoadBalancerObj,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'cloudProvider',P_cloudProvider)),
    put(this, C:set_val_internal(get(this),'imageAnalyser_LoadBalancerObj',P_imageAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'messageAnalyser_LoadBalancerObj',P_messageAnalyser_LoadBalancerObj)),
     %% timesmartdel-orchs/ImageAnalyserPlan.abs:17--17
    put(this, C:set_val_internal(get(this),'ls_ls_ImageAnalyserInterface',[])),
     %% timesmartdel-orchs/ImageAnalyserPlan.abs:18--18
    put(this, C:set_val_internal(get(this),'ls_ImageAnalyserInterface',[])),
     %% timesmartdel-orchs/ImageAnalyserPlan.abs:19--19
    put(this, C:set_val_internal(get(this),'ls_ls_DeploymentComponent',[])),
     %% timesmartdel-orchs/ImageAnalyserPlan.abs:20--20
    put(this, C:set_val_internal(get(this),'ls_DeploymentComponent',[])),
     %% timesmartdel-orchs/ImageAnalyserPlan.abs:21--21
    put(this, C:set_val_internal(get(this),'waiting_time',100)),
     %% timesmartdel-orchs/ImageAnalyserPlan.abs:23--30
    T_1 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
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
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,237}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,750}, { dataPair,dataMemory,750}, { dataPair,dataCores,4}, { dataPair,dataSpeed,20}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_1,
     %% timesmartdel-orchs/ImageAnalyserPlan.abs:31--38
    T_2 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
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
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,119}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,500}, { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_2,
     %% timesmartdel-orchs/ImageAnalyserPlan.abs:39--46
    T_3 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
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
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,476}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,1000}, { dataPair,dataMemory,1500}, { dataPair,dataCores,8}, { dataPair,dataSpeed,40}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_3,
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% timesmartdel-orchs/ImageAnalyserPlan.abs:49
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:49
'm_getImageAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:49--49
        C:get_val_internal(get(this), 'ls_ImageAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getImageAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:50
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:50
'm_getDeploymentComponent'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:50--50
        C:get_val_internal(get(this), 'ls_DeploymentComponent')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getDeploymentComponent and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:52
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:52
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:53--53
        put(this, C:set_val_internal(get(this), 'ls_ls_ImageAnalyserInterface',[C:get_val_internal(get(this), 'ls_ImageAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_ImageAnalyserInterface')])),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:54--54
        put(this, C:set_val_internal(get(this), 'ls_ImageAnalyserInterface',[])),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:55--55
        put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',[C:get_val_internal(get(this), 'ls_DeploymentComponent') | C:get_val_internal(get(this), 'ls_ls_DeploymentComponent')])),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:56--56
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[])),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:57--57
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
                TempFuture = cog:create_task(Callee,'m_deploy_aux',[[]],#task_info{method= <<"deploy_aux"/utf8>>},Cog),
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
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:60
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:60
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:61--61
        case (not cmp:eq(C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[])) of
            true ->  %% timesmartdel-orchs/ImageAnalyserPlan.abs:62--62
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
                    TempFuture = cog:create_task(Callee,'m_undeploy_aux',[[]],#task_info{method= <<"undeploy_aux"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_1,
             %% timesmartdel-orchs/ImageAnalyserPlan.abs:63--63
            put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% timesmartdel-orchs/ImageAnalyserPlan.abs:64--64
            put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% timesmartdel-orchs/ImageAnalyserPlan.abs:65--65
            put(this, C:set_val_internal(get(this), 'ls_ImageAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_ImageAnalyserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/ImageAnalyserPlan.abs:66--66
            put(this, C:set_val_internal(get(this), 'ls_ls_ImageAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_ImageAnalyserInterface'),[O,DC| Stack])));
            false ->         ok
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:71
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:71
'm_deploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:72--72
        put(vars, (get(vars))#{'speedPatchMap' => m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack])}),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:73--73
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
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:74--74
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_0', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:75--75
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),0,[O,DC| Stack])}),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:76--76
        put(vars, (get(vars))#{'odefault___ImageAnalyser_0_c4_large_0' => object:new(cog:start(Cog,maps:get('c4_large_0', get(vars))),class_Architecture_ImageAnalyser,[C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj'),[]],Cog,[O,DC| Stack])}),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:77--77
        put(vars, (get(vars))#{'coreRequired_odefault___ImageAnalyser_0_c4_large_0' => 1}),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:78--78
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___ImageAnalyser_0_c4_large_0', get(vars)))) ,[O,DC| Stack])}),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:79--79
        put(this, C:set_val_internal(get(this), 'ls_ImageAnalyserInterface',[maps:get('odefault___ImageAnalyser_0_c4_large_0', get(vars)) | C:get_val_internal(get(this), 'ls_ImageAnalyserInterface')])),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:80--80
        T_1 = cog:create_task(O,'m_patchSpeed',[maps:get('speedPatchMap', get(vars)),[]],#task_info{method= <<"patchSpeed"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:81--81
        cog:suspend_current_task_for_duration(Cog,C:get_val_internal(get(this), 'waiting_time'),C:get_val_internal(get(this), 'waiting_time'),[O,DC| Stack]),
        ok,
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:82--82
        T_2 = (fun() -> case C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___ImageAnalyser_0_c4_large_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___ImageAnalyser_0_c4_large_0', get(vars)),
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
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___ImageAnalyser_0_c4_large_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog),
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
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:85
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:85
'm_undeploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:86--86
        put(vars, (get(vars))#{'odefault___ImageAnalyser_0_c4_large_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_ImageAnalyserInterface'),0,[O,DC| Stack])}),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:87--87
        T_1 = (fun() -> case C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerObj') of
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
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:88--88
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
                 %% timesmartdel-orchs/ImageAnalyserPlan.abs:89--89
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
                        TempFuture = cog:create_task(Callee,'m_shutdownInstance',[m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]),[]],#task_info{method= <<"shutdownInstance"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_2,
                 %% timesmartdel-orchs/ImageAnalyserPlan.abs:90--90
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
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:94
 %% timesmartdel-orchs/ImageAnalyserPlan.abs:94
'm_patchSpeed'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_dcs_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'dcs' => V_dcs_0 }),
    try
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:95--108
        put(vars, (get(vars))#{'tmp1714312592' => m_ABS_StdLib_funs:f_entries(Cog,maps:get('dcs', get(vars)),[O,DC| Stack])}),
         %% timesmartdel-orchs/ImageAnalyserPlan.abs:95--108
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1714312592', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% timesmartdel-orchs/ImageAnalyserPlan.abs:95--108
                put(vars, (get(vars))#{'entry' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1714312592', get(vars)),[O,DC| Stack])}),
                 %% timesmartdel-orchs/ImageAnalyserPlan.abs:95--108
                put(vars, (get(vars))#{'tmp1714312592' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1714312592', get(vars)),[O,DC| Stack])}),
                 %% timesmartdel-orchs/ImageAnalyserPlan.abs:96--96
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_fst(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% timesmartdel-orchs/ImageAnalyserPlan.abs:97--97
                put(vars, (get(vars))#{'coreUsed' => m_ABS_StdLib_funs:f_snd(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% timesmartdel-orchs/ImageAnalyserPlan.abs:98--98
                put(vars, (get(vars))#{'tmp1245094749' => cog:create_task(maps:get('dc', get(vars)),'m_total',[dataSpeed,[]],#task_info{method= <<"total"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% timesmartdel-orchs/ImageAnalyserPlan.abs:98--98
                future:await(maps:get('tmp1245094749', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% timesmartdel-orchs/ImageAnalyserPlan.abs:98--98
                put(vars, (get(vars))#{'speed_aux' => future:get_blocking(maps:get('tmp1245094749', get(vars)), Cog, [O,DC| Stack])}),
                 %% timesmartdel-orchs/ImageAnalyserPlan.abs:99--102
                put(vars, (get(vars))#{'total_speed' => begin
                    case maps:get('speed_aux', get(vars)) of
                        
                        {dataFin,V_x_0}->V_x_0;
                        _->-1
                    end
                end}),
                 %% timesmartdel-orchs/ImageAnalyserPlan.abs:103--103
                case (not cmp:eq(maps:get('total_speed', get(vars)),-1)) of
                    true ->  %% timesmartdel-orchs/ImageAnalyserPlan.abs:104--104
                    put(vars, (get(vars))#{'tmp1387930084' => cog:create_task(maps:get('dc', get(vars)),'m_getNumberOfCores',[[]],#task_info{method= <<"getNumberOfCores"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                     %% timesmartdel-orchs/ImageAnalyserPlan.abs:104--104
                    future:await(maps:get('tmp1387930084', get(vars)), Cog, [O,DC| Stack]),
                    ok,
                     %% timesmartdel-orchs/ImageAnalyserPlan.abs:104--104
                    put(vars, (get(vars))#{'totalCore' => future:get_blocking(maps:get('tmp1387930084', get(vars)), Cog, [O,DC| Stack])}),
                     %% timesmartdel-orchs/ImageAnalyserPlan.abs:105--105
                    put(vars, (get(vars))#{'speedPerCore' =>  rationals:rdiv(maps:get('total_speed', get(vars)),maps:get('totalCore', get(vars))) }),
                     %% timesmartdel-orchs/ImageAnalyserPlan.abs:106--106
                    T_1 = cog:create_task(maps:get('dc', get(vars)),'m_decrementResources',[( rationals:sub(maps:get('total_speed', get(vars)),( rationals:mul(maps:get('speedPerCore', get(vars)),maps:get('coreUsed', get(vars)))) )) ,dataSpeed,[]],#task_info{method= <<"decrementResources"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
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
