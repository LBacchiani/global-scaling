-module(class_Mixer_Mixer).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"MixerInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Mixer_Mixer,'errors'=null}).
'init_internal'()->
    #state{}.

 %% workload_mixer.abs:15
'get_val_internal'(#state{'errors'=G},'errors')->
    object:register_read('errors'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% workload_mixer.abs:15
'set_val_internal'(S,'errors',V)->
    object:register_write('errors'),
    S#state{'errors'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'errors', S#state.'errors' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
     %% workload_mixer.abs:15--15
    put(this, C:set_val_internal(get(this),'errors',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% workload_mixer.abs:18
 %% workload_mixer.abs:18
'm_compute_diff'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_pred_conf_0,V_actual_conf_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'pred_conf' => V_pred_conf_0,
 'actual_conf' => V_actual_conf_0 }),
    try
         %% workload_mixer.abs:19--19
        put(vars, (get(vars))#{'diff' => m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack])}),
         %% workload_mixer.abs:20--20
        put(vars, (get(vars))#{'i' => 0}),
         %% workload_mixer.abs:21--21
        []=(fun Loop ([])->
            case cmp:lt(maps:get('i', get(vars)),m_ABS_StdLib_funs:f_length(Cog,maps:get('pred_conf', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% workload_mixer.abs:22--22
                put(vars, (get(vars))#{'diff' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('diff', get(vars)),(m_ABS_StdLib_funs:f_nth(Cog,maps:get('pred_conf', get(vars)),maps:get('i', get(vars)),[O,DC| Stack]) - m_ABS_StdLib_funs:f_nth(Cog,maps:get('actual_conf', get(vars)),maps:get('i', get(vars)),[O,DC| Stack])) ,[O,DC| Stack])}),
                 %% workload_mixer.abs:23--23
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% workload_mixer.abs:25--25
        maps:get('diff', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method compute_diff and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% workload_mixer.abs:28
 %% workload_mixer.abs:28
'm_compute_weight'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_pred_conf_0,V_actual_conf_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'pred_conf' => V_pred_conf_0,
 'actual_conf' => V_actual_conf_0 }),
    try
         %% workload_mixer.abs:29--29
        put(vars, (get(vars))#{'dev_factors' => m_Param_funs:f_scores(Cog,[O,DC| Stack])}),
         %% workload_mixer.abs:30--30
        put(vars, (get(vars))#{'curr_weight' => 0}),
         %% workload_mixer.abs:31--31
        put(vars, (get(vars))#{'diffs' => (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_compute_diff'(Callee,maps:get('pred_conf', get(vars)),maps:get('actual_conf', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_pred_conf = maps:get('pred_conf', get(vars)),
                V_actual_conf = maps:get('actual_conf', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_compute_diff'(Callee, V_pred_conf, V_actual_conf,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_compute_diff',[maps:get('pred_conf', get(vars)),maps:get('actual_conf', get(vars)),[]],#task_info{method= <<"compute_diff"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% workload_mixer.abs:32--32
        []=(fun Loop ([])->
            case (not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('pred_conf', get(vars)),[O,DC| Stack]))) and (not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('actual_conf', get(vars)),[O,DC| Stack]))) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% workload_mixer.abs:33--33
                put(vars, (get(vars))#{'curr_weight' := ( rationals:add(maps:get('curr_weight', get(vars)),builtin:abs(Cog,( rationals:mul(m_ABS_StdLib_funs:f_head(Cog,maps:get('diffs', get(vars)),[O,DC| Stack]),m_ABS_StdLib_funs:f_head(Cog,maps:get('dev_factors', get(vars)),[O,DC| Stack]))) ))) }),
                 %% workload_mixer.abs:34--34
                put(vars, (get(vars))#{'pred_conf' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('pred_conf', get(vars)),[O,DC| Stack])}),
                 %% workload_mixer.abs:35--35
                put(vars, (get(vars))#{'actual_conf' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('pred_conf', get(vars)),[O,DC| Stack])}),
                 %% workload_mixer.abs:36--36
                put(vars, (get(vars))#{'diffs' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('diffs', get(vars)),[O,DC| Stack])}),
                 %% workload_mixer.abs:37--37
                put(vars, (get(vars))#{'dev_factors' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('dev_factors', get(vars)),[O,DC| Stack])}),
            Loop([])  end end)
        ([]),
         %% workload_mixer.abs:39--39
        builtin:min(Cog,maps:get('curr_weight', get(vars)),1)
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method compute_weight and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% workload_mixer.abs:42
 %% workload_mixer.abs:42
'm_store_weights'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_curr_weight_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'curr_weight' => V_curr_weight_0 }),
    try
         %% workload_mixer.abs:43--43
        put(this, C:set_val_internal(get(this), 'errors',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'errors'),builtin:abs(Cog,maps:get('curr_weight', get(vars))),[O,DC| Stack]))),
         %% workload_mixer.abs:44--44
        case cmp:eq(m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'errors'),[O,DC| Stack]),m_Param_funs:f_memory(Cog,[O,DC| Stack])) of
            true ->  %% workload_mixer.abs:44--44
            put(this, C:set_val_internal(get(this), 'errors',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'errors'),[O,DC| Stack])));
            false ->         ok
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method store_weights and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% workload_mixer.abs:47
 %% workload_mixer.abs:47
'm_compute_distance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% workload_mixer.abs:48--48
        put(vars, (get(vars))#{'weight' => 0}),
         %% workload_mixer.abs:49--49
        put(vars, (get(vars))#{'toDivide' => 0}),
         %% workload_mixer.abs:50--53
        put(vars, (get(vars))#{'tmp1685350567' => C:get_val_internal(get(this), 'errors')}),
         %% workload_mixer.abs:50--53
        put(vars, (get(vars))#{'i' => 0}),
         %% workload_mixer.abs:50--53
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1685350567', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% workload_mixer.abs:50--53
                put(vars, (get(vars))#{'e' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1685350567', get(vars)),[O,DC| Stack])}),
                 %% workload_mixer.abs:50--53
                put(vars, (get(vars))#{'tmp1685350567' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1685350567', get(vars)),[O,DC| Stack])}),
                 %% workload_mixer.abs:51--51
                put(vars, (get(vars))#{'weight' := ( rationals:add(maps:get('weight', get(vars)),( rationals:mul(maps:get('e', get(vars)),(maps:get('i', get(vars)) + 1) )) )) }),
                 %% workload_mixer.abs:52--52
                put(vars, (get(vars))#{'toDivide' := (maps:get('toDivide', get(vars)) + (maps:get('i', get(vars)) + 1) ) }),
                 %% workload_mixer.abs:50--53
                put(vars, (get(vars))#{'i' := (maps:get('i', get(vars)) + 1) }),
            Loop([])  end end)
        ([]),
         %% workload_mixer.abs:54--54
         rationals:rdiv(maps:get('weight', get(vars)),maps:get('toDivide', get(vars))) 
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method compute_distance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% workload_mixer.abs:58
 %% workload_mixer.abs:58
'm_mix'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_max_true_0,V_max_pred_0,V_last_pred_config_0,V_actual_conf_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'max_true' => V_max_true_0,
 'max_pred' => V_max_pred_0,
 'last_pred_config' => V_last_pred_config_0,
 'actual_conf' => V_actual_conf_0 }),
    try
         %% workload_mixer.abs:59--59
        put(vars, (get(vars))#{'curr_weight' => (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_compute_weight'(Callee,maps:get('last_pred_config', get(vars)),maps:get('actual_conf', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_pred_conf = maps:get('last_pred_config', get(vars)),
                V_actual_conf = maps:get('actual_conf', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_compute_weight'(Callee, V_pred_conf, V_actual_conf,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_compute_weight',[maps:get('last_pred_config', get(vars)),maps:get('actual_conf', get(vars)),[]],#task_info{method= <<"compute_weight"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% workload_mixer.abs:60--60
        T_1 = (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_store_weights'(Callee,maps:get('curr_weight', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_curr_weight = maps:get('curr_weight', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_store_weights'(Callee, V_curr_weight,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_store_weights',[maps:get('curr_weight', get(vars)),[]],#task_info{method= <<"store_weights"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% workload_mixer.abs:61--61
        put(vars, (get(vars))#{'react_score' => (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_compute_distance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_compute_distance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_compute_distance',[[]],#task_info{method= <<"compute_distance"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% workload_mixer.abs:62--62
        put(vars, (get(vars))#{'pred_score' => ( rationals:sub(1,maps:get('react_score', get(vars)))) }),
         %% workload_mixer.abs:63--63
        put(vars, (get(vars))#{'target_scale' => ( rationals:add(( rationals:mul(maps:get('react_score', get(vars)),maps:get('max_true', get(vars)))) ,( rationals:mul(maps:get('pred_score', get(vars)),maps:get('max_pred', get(vars)))) )) }),
         %% workload_mixer.abs:64--64
        maps:get('target_scale', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method mix and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
