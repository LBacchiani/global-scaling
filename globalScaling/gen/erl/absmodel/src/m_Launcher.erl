-module(m_Launcher).
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
     %% main.abs:19--19
    put(vars, (get(vars))#{'db' => object:new(cog:start(Cog,DC),class_DB_DB,[[]],Cog,[O,DC| Stack])}),
     %% main.abs:20--20
    put(vars, (get(vars))#{'setupSystem' => object:new(cog:start(Cog,DC),class_Sys_init_SetUpSystem,[[]],Cog,[O,DC| Stack])}),
     %% main.abs:21--21
    T_1 = (fun() -> case maps:get('setupSystem', get(vars)) of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_setupLoadBalancers'(Callee,maps:get('db', get(vars)),[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_db = maps:get('db', get(vars)),
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_setupLoadBalancers'(Callee, V_db,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_setupLoadBalancers',[maps:get('db', get(vars)),[]],#task_info{method= <<"setupLoadBalancers"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_1,
     %% main.abs:22--22
    T_2 = (fun() -> case maps:get('setupSystem', get(vars)) of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_setupServices'(Callee,maps:get('db', get(vars)),[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_db = maps:get('db', get(vars)),
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_setupServices'(Callee, V_db,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_setupServices',[maps:get('db', get(vars)),[]],#task_info{method= <<"setupServices"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_2,
     %% main.abs:23--23
    put(vars, (get(vars))#{'entryPoint' => (fun() -> case maps:get('setupSystem', get(vars)) of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_getEntrypoint'(Callee,[O,DC,Vars| Stack]),
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
            Result=T:'m_getEntrypoint'(Callee,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_getEntrypoint',[[]],#task_info{method= <<"getEntrypoint"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)()}),
     %% main.abs:24--24
    put(vars, (get(vars))#{'scaler' => (fun() -> case maps:get('setupSystem', get(vars)) of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_deployGSAlg'(Callee,maps:get('db', get(vars)),[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_db = maps:get('db', get(vars)),
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_deployGSAlg'(Callee, V_db,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_deployGSAlg',[maps:get('db', get(vars)),[]],#task_info{method= <<"deployGSAlg"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)()}),
     %% main.abs:25--25
    put(vars, (get(vars))#{'fst_conf' => m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack])}),
     %% main.abs:26--26
    case m_Param_funs:f_proactiveness(Cog,[O,DC| Stack]) of
        true ->  %% main.abs:26--26
        put(vars, (get(vars))#{'fst_conf' := (fun() -> case maps:get('setupSystem', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_proactiveDeployment'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_proactiveDeployment'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_proactiveDeployment',[[]],#task_info{method= <<"proactiveDeployment"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()});
        false ->     ok
    end,
     %% main.abs:27--27
    put(vars, (get(vars))#{'mixer' => object:new(cog:start(Cog,DC),class_Mixer_Mixer,[[]],Cog,[O,DC| Stack])}),
     %% main.abs:28--28
    put(vars, (get(vars))#{'monitor' => object:new(cog:start(Cog,DC),class_Monitor_Monitor,[maps:get('scaler', get(vars)),maps:get('mixer', get(vars)),maps:get('db', get(vars)),maps:get('fst_conf', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:29--29
    put(vars, (get(vars))#{'testProcess' => object:new(cog:start(Cog,DC),class_MailGen_MailGenerator,[maps:get('entryPoint', get(vars)),[]],Cog,[O,DC| Stack])}).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    runtime:start_link([m_Launcher]).

stop(_State) ->
    ok.
