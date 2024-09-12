-module(m_Main).
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
     %% main.abs:13--13
    put(vars, (get(vars))#{'db' => object:new(cog:start(Cog,DC),class_DB_DB,[[]],Cog,[O,DC| Stack])}),
     %% main.abs:14--14
    put(vars, (get(vars))#{'setupSystem' => object:new(cog:start(Cog,DC),class_Sys_init_SetUpSystem,[[]],Cog,[O,DC| Stack])}),
     %% main.abs:15--15
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
     %% main.abs:16--16
    T_2 = (fun() -> case maps:get('setupSystem', get(vars)) of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_connectPlan'(Callee,maps:get('db', get(vars)),[O,DC,Vars| Stack]),
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
            Result=T:'m_connectPlan'(Callee, V_db,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_connectPlan',[maps:get('db', get(vars)),[]],#task_info{method= <<"connectPlan"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_2,
     %% main.abs:17--17
    T_3 = (fun() -> case maps:get('setupSystem', get(vars)) of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_createLocalMonitors'(Callee,[O,DC,Vars| Stack]),
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
            Result=T:'m_createLocalMonitors'(Callee,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_createLocalMonitors',[[]],#task_info{method= <<"createLocalMonitors"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_3,
     %% main.abs:18--18
    T_4 = (fun() -> case maps:get('setupSystem', get(vars)) of
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
    T_4,
     %% main.abs:19--19
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
     %% main.abs:20--20
    put(vars, (get(vars))#{'local_monitors' => (fun() -> case maps:get('setupSystem', get(vars)) of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_getLocalMonitors'(Callee,[O,DC,Vars| Stack]),
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
            Result=T:'m_getLocalMonitors'(Callee,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_getLocalMonitors',[[]],#task_info{method= <<"getLocalMonitors"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)()}),
     %% main.abs:21--21
    case m_Param_funs:f_oracleScaling(Cog,[O,DC| Stack]) of
        true ->  %% main.abs:21--21
        put(vars, (get(vars))#{'tmp152217156' => maps:get('local_monitors', get(vars))}),
         %% main.abs:21--21
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp152217156', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% main.abs:21--21
                put(vars, (get(vars))#{'monitor' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp152217156', get(vars)),[O,DC| Stack])}),
                 %% main.abs:21--21
                put(vars, (get(vars))#{'tmp152217156' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp152217156', get(vars)),[O,DC| Stack])}),
                 %% main.abs:21--21
                T_5 = (fun() -> case maps:get('monitor', get(vars)) of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_check'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_check'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_check',[[]],#task_info{method= <<"check"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_5,
            Loop([])  end end)
        ([]);
        false ->     ok
    end,
     %% main.abs:22--22
    put(vars, (get(vars))#{'balancers' => (fun() -> case maps:get('setupSystem', get(vars)) of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_getLB'(Callee,[O,DC,Vars| Stack]),
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
            Result=T:'m_getLB'(Callee,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_getLB',[[]],#task_info{method= <<"getLB"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)()}),
     %% main.abs:23--23
    put(vars, (get(vars))#{'setup_cost' => (fun() -> case maps:get('setupSystem', get(vars)) of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_getSetupCost'(Callee,[O,DC,Vars| Stack]),
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
            Result=T:'m_getSetupCost'(Callee,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_getSetupCost',[[]],#task_info{method= <<"getSetupCost"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)()}),
     %% main.abs:24--24
    put(vars, (get(vars))#{'monitor' => object:new(cog:start(Cog,DC),class_Monitor_Monitor,[maps:get('db', get(vars)),maps:get('balancers', get(vars)),maps:get('local_monitors', get(vars)),maps:get('setup_cost', get(vars)),[]],Cog,[O,DC| Stack])}),
     %% main.abs:25--25
    put(vars, (get(vars))#{'testProcess' => object:new(cog:start(Cog,DC),class_Gen_MailGenerator,[maps:get('entryPoint', get(vars)),[]],Cog,[O,DC| Stack])}).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    runtime:start_link([m_Main]).

stop(_State) ->
    ok.
