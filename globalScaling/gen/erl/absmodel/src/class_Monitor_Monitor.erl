-module(class_Monitor_Monitor).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"MonitorInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Monitor_Monitor,'scaler'=null,'mixer'=null,'db'=null,'init_conf'=null,'time'=null,'last_pred_config'=null}).
'init_internal'()->
    #state{}.

 %% monitor.abs:16
'get_val_internal'(#state{'scaler'=G},'scaler')->
    object:register_read('scaler'),
    G;
 %% monitor.abs:16
'get_val_internal'(#state{'mixer'=G},'mixer')->
    object:register_read('mixer'),
    G;
 %% monitor.abs:16
'get_val_internal'(#state{'db'=G},'db')->
    object:register_read('db'),
    G;
 %% monitor.abs:16
'get_val_internal'(#state{'init_conf'=G},'init_conf')->
    object:register_read('init_conf'),
    G;
 %% monitor.abs:17
'get_val_internal'(#state{'time'=G},'time')->
    object:register_read('time'),
    G;
 %% monitor.abs:18
'get_val_internal'(#state{'last_pred_config'=G},'last_pred_config')->
    object:register_read('last_pred_config'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% monitor.abs:16
'set_val_internal'(S,'scaler',V)->
    object:register_write('scaler'),
    S#state{'scaler'=V};
 %% monitor.abs:16
'set_val_internal'(S,'mixer',V)->
    object:register_write('mixer'),
    S#state{'mixer'=V};
 %% monitor.abs:16
'set_val_internal'(S,'db',V)->
    object:register_write('db'),
    S#state{'db'=V};
 %% monitor.abs:16
'set_val_internal'(S,'init_conf',V)->
    object:register_write('init_conf'),
    S#state{'init_conf'=V};
 %% monitor.abs:17
'set_val_internal'(S,'time',V)->
    object:register_write('time'),
    S#state{'time'=V};
 %% monitor.abs:18
'set_val_internal'(S,'last_pred_config',V)->
    object:register_write('last_pred_config'),
    S#state{'last_pred_config'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'scaler', S#state.'scaler' }
        , { 'mixer', S#state.'mixer' }
        , { 'db', S#state.'db' }
        , { 'init_conf', S#state.'init_conf' }
        , { 'time', S#state.'time' }
        , { 'last_pred_config', S#state.'last_pred_config' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_scaler,P_mixer,P_db,P_init_conf,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'scaler',P_scaler)),
    put(this, C:set_val_internal(get(this),'mixer',P_mixer)),
    put(this, C:set_val_internal(get(this),'db',P_db)),
    put(this, C:set_val_internal(get(this),'init_conf',P_init_conf)),
     %% monitor.abs:17--17
    put(this, C:set_val_internal(get(this),'time',0)),
     %% monitor.abs:18--18
    put(this, C:set_val_internal(get(this),'last_pred_config',C:get_val_internal(get(this), 'init_conf'))),
    gc:register_object(O),
    cog:create_task(O,'m_run',[[]],#task_info{method= <<"run"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% monitor.abs:21
 %% monitor.abs:21
'm_compute_predicted_avg'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_start_0,V_stop_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'start' => V_start_0,
 'stop' => V_stop_0 }),
    try
         %% monitor.abs:22--22
        put(vars, (get(vars))#{'i' => maps:get('start', get(vars))}),
         %% monitor.abs:23--23
        put(vars, (get(vars))#{'avg' => 0}),
         %% monitor.abs:24--24
        []=(fun Loop ([])->
            case cmp:lt(maps:get('i', get(vars)),maps:get('stop', get(vars))) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% monitor.abs:25--25
                put(vars, (get(vars))#{'avg' := ( rationals:add(maps:get('avg', get(vars)),m_ABS_StdLib_funs:f_nth(Cog,m_Param_funs:f_predicted_workload(Cog,[O,DC| Stack]),maps:get('i', get(vars)),[O,DC| Stack]))) }),
                 %% monitor.abs:26--26
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% monitor.abs:28--28
         rationals:rdiv(maps:get('avg', get(vars)),10) 
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method compute_predicted_avg and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% monitor.abs:31
 %% monitor.abs:31
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% monitor.abs:32--32
        put(vars, (get(vars))#{'mcl' => (fun() -> case C:get_val_internal(get(this), 'scaler') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_getSystemMCL'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_getSystemMCL'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_getSystemMCL',[[]],#task_info{method= <<"getSystemMCL"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% monitor.abs:33--33
        put(vars, (get(vars))#{'nInst' => (fun() -> case C:get_val_internal(get(this), 'scaler') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_computeInstanceNumber'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_computeInstanceNumber'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_computeInstanceNumber',[[]],#task_info{method= <<"computeInstanceNumber"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% monitor.abs:34--34
        T_1 = (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_log'(Callee,0,m_Param_funs:f_fst_pred(Cog,[O,DC| Stack]),maps:get('mcl', get(vars)),0,maps:get('nInst', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_max_true = 0,
                V_max_pred = m_Param_funs:f_fst_pred(Cog,[O,DC| Stack]),
                V_mcl = maps:get('mcl', get(vars)),
                V_target = 0,
                V_nInst = maps:get('nInst', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_log'(Callee, V_max_true, V_max_pred, V_mcl, V_target, V_nInst,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_log',[0,m_Param_funs:f_fst_pred(Cog,[O,DC| Stack]),maps:get('mcl', get(vars)),0,maps:get('nInst', get(vars)),[]],#task_info{method= <<"log"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% monitor.abs:35--35
        []=(fun Loop ([])->
            case cmp:lt(C:get_val_internal(get(this), 'time'),200) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% monitor.abs:36--36
                cog:suspend_current_task_for_duration(Cog,m_Param_funs:f_monitoringWin(Cog,[O,DC| Stack]),m_Param_funs:f_monitoringWin(Cog,[O,DC| Stack]),[O,DC| Stack]),
                ok,
                 %% monitor.abs:37--37
                put(this, C:set_val_internal(get(this), 'time',(C:get_val_internal(get(this), 'time') + 10) )),
                 %% monitor.abs:38--38
                put(vars, (get(vars))#{'measured_avg' => (fun() -> case C:get_val_internal(get(this), 'db') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_get_inbound_workload'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_get_inbound_workload'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_get_inbound_workload',[[]],#task_info{method= <<"get_inbound_workload"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:39--39
                put(vars, (get(vars))#{'measured_avg' :=  rationals:rdiv(maps:get('measured_avg', get(vars)),10) }),
                 %% monitor.abs:40--40
                put(vars, (get(vars))#{'predicted_avg' => (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_compute_predicted_avg'(Callee,(C:get_val_internal(get(this), 'time') - 10) ,C:get_val_internal(get(this), 'time'),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_start = (C:get_val_internal(get(this), 'time') - 10) ,
                        V_stop = C:get_val_internal(get(this), 'time'),
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_compute_predicted_avg'(Callee, V_start, V_stop,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_compute_predicted_avg',[(C:get_val_internal(get(this), 'time') - 10) ,C:get_val_internal(get(this), 'time'),[]],#task_info{method= <<"compute_predicted_avg"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:41--41
                put(vars, (get(vars))#{'target_workload' => maps:get('measured_avg', get(vars))}),
                 %% monitor.abs:42--42
                put(vars, (get(vars))#{'mcl' := (fun() -> case C:get_val_internal(get(this), 'scaler') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_getSystemMCL'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_getSystemMCL'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_getSystemMCL',[[]],#task_info{method= <<"getSystemMCL"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:43--43
                put(vars, (get(vars))#{'nInst' := (fun() -> case C:get_val_internal(get(this), 'scaler') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_computeInstanceNumber'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_computeInstanceNumber'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_computeInstanceNumber',[[]],#task_info{method= <<"computeInstanceNumber"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)()}),
                 %% monitor.abs:44--44
                case m_Param_funs:f_proactiveness(Cog,[O,DC| Stack]) of
                    true ->  %% monitor.abs:44--44
                    put(vars, (get(vars))#{'target_workload' := maps:get('predicted_avg', get(vars))});
                    false ->                 ok
                end,
                 %% monitor.abs:45--45
                case m_Param_funs:f_mixing(Cog,[O,DC| Stack]) of
                    true ->  %% monitor.abs:46--46
                    put(vars, (get(vars))#{'actual_conf' => (fun() -> case C:get_val_internal(get(this), 'scaler') of
                        null -> throw(dataNullPointerException);
                        Callee=#object{oid=Oid,cog=Cog} ->
                            %% self-call
                            Vars=get(vars),
                            Result=C:'m_computeConfiguration'(Callee,maps:get('measured_avg', get(vars)),[O,DC,Vars| Stack]),
                            put(vars, Vars),
                            Result;
                        Callee=#object{oid=ObjRef,cog=Cog} ->
                            %% cog-local call
                            V_target_workload = maps:get('measured_avg', get(vars)),
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
                            TempFuture = cog:create_task(Callee,'m_computeConfiguration',[maps:get('measured_avg', get(vars)),[]],#task_info{method= <<"computeConfiguration"/utf8>>},Cog),
                            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                    end end)()}),
                     %% monitor.abs:48--48
                    put(vars, (get(vars))#{'target_workload' := (fun() -> case C:get_val_internal(get(this), 'mixer') of
                        null -> throw(dataNullPointerException);
                        Callee=#object{oid=Oid,cog=Cog} ->
                            %% self-call
                            Vars=get(vars),
                            Result=C:'m_mix'(Callee,maps:get('measured_avg', get(vars)),maps:get('predicted_avg', get(vars)),C:get_val_internal(get(this), 'last_pred_config'),maps:get('actual_conf', get(vars)),[O,DC,Vars| Stack]),
                            put(vars, Vars),
                            Result;
                        Callee=#object{oid=ObjRef,cog=Cog} ->
                            %% cog-local call
                            V_max_true = maps:get('measured_avg', get(vars)),
                            V_max_pred = maps:get('predicted_avg', get(vars)),
                            V_last_pred_config = C:get_val_internal(get(this), 'last_pred_config'),
                            V_actual_conf = maps:get('actual_conf', get(vars)),
                            State=get(this),
                            Vars=get(vars),
                            cog:object_state_changed(Cog, O, State),
                            put(this,cog:get_object_state(Callee#object.cog, Callee)),
                            put(task_info,(get(task_info))#task_info{this=Callee}),
                            T=object:get_class_from_state(get(this)), % it's the callee state already
                            Result=T:'m_mix'(Callee, V_max_true, V_max_pred, V_last_pred_config, V_actual_conf,[O,DC,Vars,State| Stack]),
                            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                            put(task_info,(get(task_info))#task_info{this=O}),
                            put(this, cog:get_object_state(Cog, O)),
                            put(vars, Vars),
                            Result;
                        Callee ->
                            %% remote call
                            TempFuture = cog:create_task(Callee,'m_mix',[maps:get('measured_avg', get(vars)),maps:get('predicted_avg', get(vars)),C:get_val_internal(get(this), 'last_pred_config'),maps:get('actual_conf', get(vars)),[]],#task_info{method= <<"mix"/utf8>>},Cog),
                            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                    end end)()}),
                     %% monitor.abs:49--49
                    put(this, C:set_val_internal(get(this), 'last_pred_config',(fun() -> case C:get_val_internal(get(this), 'scaler') of
                        null -> throw(dataNullPointerException);
                        Callee=#object{oid=Oid,cog=Cog} ->
                            %% self-call
                            Vars=get(vars),
                            Result=C:'m_computeConfiguration'(Callee,maps:get('predicted_avg', get(vars)),[O,DC,Vars| Stack]),
                            put(vars, Vars),
                            Result;
                        Callee=#object{oid=ObjRef,cog=Cog} ->
                            %% cog-local call
                            V_target_workload = maps:get('predicted_avg', get(vars)),
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
                            TempFuture = cog:create_task(Callee,'m_computeConfiguration',[maps:get('predicted_avg', get(vars)),[]],#task_info{method= <<"computeConfiguration"/utf8>>},Cog),
                            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                    end end)()));
                    false ->                 ok
                end,
                 %% monitor.abs:57--57
                T_2 = (fun() -> case O of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_log'(Callee,maps:get('measured_avg', get(vars)),maps:get('predicted_avg', get(vars)),maps:get('mcl', get(vars)),maps:get('target_workload', get(vars)),maps:get('nInst', get(vars)),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_max_true = maps:get('measured_avg', get(vars)),
                        V_max_pred = maps:get('predicted_avg', get(vars)),
                        V_mcl = maps:get('mcl', get(vars)),
                        V_target = maps:get('target_workload', get(vars)),
                        V_nInst = maps:get('nInst', get(vars)),
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_log'(Callee, V_max_true, V_max_pred, V_mcl, V_target, V_nInst,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_log',[maps:get('measured_avg', get(vars)),maps:get('predicted_avg', get(vars)),maps:get('mcl', get(vars)),maps:get('target_workload', get(vars)),maps:get('nInst', get(vars)),[]],#task_info{method= <<"log"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_2,
                 %% monitor.abs:58--58
                case (cmp:gt(( rationals:sub(maps:get('target_workload', get(vars)),( rationals:sub(maps:get('mcl', get(vars)),m_Param_funs:f_kbig(Cog,[O,DC| Stack]))) )) ,m_Param_funs:f_k(Cog,[O,DC| Stack]))) or (cmp:gt(( rationals:sub(( rationals:sub(maps:get('mcl', get(vars)),m_Param_funs:f_kbig(Cog,[O,DC| Stack]))) ,maps:get('target_workload', get(vars)))) ,m_Param_funs:f_k(Cog,[O,DC| Stack]))) of
                    true ->  %% monitor.abs:59--59
                    put(vars, (get(vars))#{'target_config' => (fun() -> case C:get_val_internal(get(this), 'scaler') of
                        null -> throw(dataNullPointerException);
                        Callee=#object{oid=Oid,cog=Cog} ->
                            %% self-call
                            Vars=get(vars),
                            Result=C:'m_computeConfiguration'(Callee,maps:get('target_workload', get(vars)),[O,DC,Vars| Stack]),
                            put(vars, Vars),
                            Result;
                        Callee=#object{oid=ObjRef,cog=Cog} ->
                            %% cog-local call
                            V_target_workload = maps:get('target_workload', get(vars)),
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
                            TempFuture = cog:create_task(Callee,'m_computeConfiguration',[maps:get('target_workload', get(vars)),[]],#task_info{method= <<"computeConfiguration"/utf8>>},Cog),
                            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                    end end)()}),
                     %% monitor.abs:60--60
                    T_3 = (fun() -> case C:get_val_internal(get(this), 'scaler') of
                        null -> throw(dataNullPointerException);
                        Callee=#object{oid=Oid,cog=Cog} ->
                            %% self-call
                            Vars=get(vars),
                            Result=C:'m_scale'(Callee,maps:get('target_config', get(vars)),[O,DC,Vars| Stack]),
                            put(vars, Vars),
                            Result;
                        Callee=#object{oid=ObjRef,cog=Cog} ->
                            %% cog-local call
                            V_configDeltas = maps:get('target_config', get(vars)),
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
                            TempFuture = cog:create_task(Callee,'m_scale',[maps:get('target_config', get(vars)),[]],#task_info{method= <<"scale"/utf8>>},Cog),
                            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                    end end)(),
                    T_3;
                    false ->                 ok
                end,
                 %% monitor.abs:62--62
                T_4 = (fun() -> case C:get_val_internal(get(this), 'db') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_resetMetrics'(Callee,[O,DC,Vars| Stack]),
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
                        Result=T:'m_resetMetrics'(Callee,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_resetMetrics',[[]],#task_info{method= <<"resetMetrics"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_4,
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method run and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% monitor.abs:66
 %% monitor.abs:66
'm_log'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_max_true_0,V_max_pred_0,V_mcl_0,V_target_0,V_nInst_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'max_true' => V_max_true_0,
 'max_pred' => V_max_pred_0,
 'mcl' => V_mcl_0,
 'target' => V_target_0,
 'nInst' => V_nInst_0 }),
    try
         %% monitor.abs:67--67
        put(vars, (get(vars))#{'averageAnalysisTime' => (fun() -> case C:get_val_internal(get(this), 'db') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_returnAverageAnalysisTime'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_returnAverageAnalysisTime'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_returnAverageAnalysisTime',[[]],#task_info{method= <<"returnAverageAnalysisTime"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% monitor.abs:68--68
        put(vars, (get(vars))#{'completed' => (fun() -> case C:get_val_internal(get(this), 'db') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_messageCompleted'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_messageCompleted'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_messageCompleted',[[]],#task_info{method= <<"messageCompleted"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% monitor.abs:69--69
        put(vars, (get(vars))#{'rejected' => (fun() -> case C:get_val_internal(get(this), 'db') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_rejectedMessages'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_rejectedMessages'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_rejectedMessages',[[]],#task_info{method= <<"rejectedMessages"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% monitor.abs:70--70
        put(vars, (get(vars))#{'totalMsg' => (fun() -> case C:get_val_internal(get(this), 'db') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_get_inbound_workload'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_get_inbound_workload'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_get_inbound_workload',[[]],#task_info{method= <<"get_inbound_workload"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% monitor.abs:71--71
        put(vars, (get(vars))#{'totalCost' => (fun() -> case C:get_val_internal(get(this), 'scaler') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_computeTotalCost'(Callee,10,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_ratio = 10,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_computeTotalCost'(Callee, V_ratio,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_computeTotalCost',[10,[]],#task_info{method= <<"computeTotalCost"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% monitor.abs:72--72
        put(vars, (get(vars))#{'toPrint' => iolist_to_binary([iolist_to_binary([builtin:toString(Cog,C:get_val_internal(get(this), 'time')), <<" "/utf8>>]), builtin:toString(Cog,case cmp:gt(maps:get('completed', get(vars)),0) of
            true -> (builtin:float(Cog, rationals:rdiv(100,3) ) * maps:get('averageAnalysisTime', get(vars))) ;
            false -> 0.0
        end)])}),
         %% monitor.abs:73--73
        case m_Param_funs:f_proactiveness(Cog,[O,DC| Stack]) of
            true ->  %% monitor.abs:73--73
            put(vars, (get(vars))#{'toPrint' := iolist_to_binary([iolist_to_binary([maps:get('toPrint', get(vars)), <<" next: "/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('max_pred', get(vars))))])});
            false ->         ok
        end,
         %% monitor.abs:74--74
        put(vars, (get(vars))#{'toPrint' := iolist_to_binary([iolist_to_binary([maps:get('toPrint', get(vars)), <<" measured: "/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('max_true', get(vars))))])}),
         %% monitor.abs:75--75
        case m_Param_funs:f_mixing(Cog,[O,DC| Stack]) of
            true ->  %% monitor.abs:75--75
            put(vars, (get(vars))#{'toPrint' := iolist_to_binary([iolist_to_binary([maps:get('toPrint', get(vars)), <<" target: "/utf8>>]), builtin:toString(Cog,builtin:float(Cog,maps:get('target', get(vars))))])});
            false ->         ok
        end,
         %% monitor.abs:76--76
        put(vars, (get(vars))#{'toPrint' := iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([maps:get('toPrint', get(vars)), <<" TOT: "/utf8>>]), builtin:toString(Cog,maps:get('totalMsg', get(vars)))]), <<" comp: "/utf8>>]), builtin:toString(Cog,maps:get('completed', get(vars)))]), <<" rej: "/utf8>>]), builtin:toString(Cog,maps:get('rejected', get(vars)))]), <<" supp: "/utf8>>]), builtin:toString(Cog,maps:get('mcl', get(vars)))]), <<" INST: "/utf8>>]), builtin:toString(Cog,maps:get('nInst', get(vars)))])}),
         %% monitor.abs:77--77
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
         %% monitor.abs:78--78
        put(vars, (get(vars))#{'toPrint' := iolist_to_binary([maps:get('toPrint', get(vars)), maps:get('scalingAct', get(vars))])}),
         %% monitor.abs:79--79
        T_1 = builtin:println(Cog,maps:get('toPrint', get(vars))),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method log and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
