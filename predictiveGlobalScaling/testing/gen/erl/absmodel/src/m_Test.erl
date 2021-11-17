-module(m_Test).
-behaviour(application).
-include_lib("../include/abs_types.hrl").
-export([main/1]).
%% Application callbacks
-export([start/2, stop/1]).

'main'(Cog=#cog{ref=CogRef,dcobj=DC})->
    put(vars, #{}),
    C = none,
    Oid = null, % avoid self-call branch in synccall code
    O = #object{oid=Oid,cog=Cog},
    put(this, {state, none}),
    Stack = [DC],
     %% ABS_deadlock.abs:54--54
    put(vars, (get(vars))#{'cloudProvider' => object:new(cog:start(Cog,DC),class_ABS_DC_CloudProvider,[<<"CloudProvider"/utf8>>,[]],Cog,[O,DC| Stack])}),
     %% ABS_deadlock.abs:55--55
    T_1 = (fun() -> case maps:get('cloudProvider', get(vars)) of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},
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
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog, true),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_1,
     %% ABS_deadlock.abs:56--56
    put(vars, (get(vars))#{'c1' => (fun() -> case maps:get('cloudProvider', get(vars)) of
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
     %% ABS_deadlock.abs:57--57
    put(vars, (get(vars))#{'c2' => (fun() -> case maps:get('cloudProvider', get(vars)) of
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
     %% ABS_deadlock.abs:58--58
    put(vars, (get(vars))#{'c3' => (fun() -> case maps:get('cloudProvider', get(vars)) of
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
     %% ABS_deadlock.abs:59--59
    put(vars, (get(vars))#{'s' => object:new(cog:start(Cog,maps:get('c1', get(vars))),class_Test_ServiceImpl,[null,[]],Cog,[O,DC| Stack])}),
     %% ABS_deadlock.abs:60--60
    put(vars, (get(vars))#{'s1' => object:new(cog:start(Cog,maps:get('c1', get(vars))),class_Test_ServiceImpl,[maps:get('s', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% ABS_deadlock.abs:61--61
    put(vars, (get(vars))#{'s2' => object:new(cog:start(Cog,maps:get('c2', get(vars))),class_Test_ServiceImpl,[maps:get('s1', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% ABS_deadlock.abs:62--62
    put(vars, (get(vars))#{'s3' => object:new(cog:start(Cog,maps:get('c2', get(vars))),class_Test_ServiceImpl,[maps:get('s2', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% ABS_deadlock.abs:63--63
    put(vars, (get(vars))#{'s4' => object:new(cog:start(Cog,maps:get('c3', get(vars))),class_Test_ServiceImpl,[maps:get('s3', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% ABS_deadlock.abs:64--64
    put(vars, (get(vars))#{'s5' => object:new(cog:start(Cog,maps:get('c3', get(vars))),class_Test_ServiceImpl,[maps:get('s4', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% ABS_deadlock.abs:65--65
    put(vars, (get(vars))#{'gen' => object:new(cog:start(Cog,DC),class_Test_MailGenerator,[maps:get('s5', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% ABS_deadlock.abs:66--66
    put(vars, (get(vars))#{'mon' => object:new(cog:start(Cog,DC),class_Test_MonitorImpl,[maps:get('s', get(vars)),[]],Cog,[O,DC| Stack])}).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    runtime:start_link([m_Test]).

stop(_State) ->
    ok.
