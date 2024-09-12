-module(class_Gen_MailGenerator).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"MailGeneratorInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Gen_MailGenerator,'entryPoint'=null}).
'init_internal'()->
    #state{}.

 %% mail_gen.abs:10
'get_val_internal'(#state{'entryPoint'=G},'entryPoint')->
    object:register_read('entryPoint'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% mail_gen.abs:10
'set_val_internal'(S,'entryPoint',V)->
    object:register_write('entryPoint'),
    S#state{'entryPoint'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'entryPoint', S#state.'entryPoint' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_entryPoint,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'entryPoint',P_entryPoint)),
    gc:register_object(O),
    cog:create_task(O,'m_run',[[]],#task_info{method= <<"run"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% mail_gen.abs:11
 %% mail_gen.abs:11
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% mail_gen.abs:12--12
        put(vars, (get(vars))#{'i' => 0}),
         %% mail_gen.abs:13--13
        put(vars, (get(vars))#{'round' => 0}),
         %% mail_gen.abs:14--14
        []=(fun Loop ([])->
            case cmp:lt(maps:get('round', get(vars)),200) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% mail_gen.abs:15--15
                put(vars, (get(vars))#{'currentMessageNumber' => m_ABS_StdLib_funs:f_nth(Cog,m_Param_funs:f_actual_workload(Cog,[O,DC| Stack]),maps:get('i', get(vars)),[O,DC| Stack])}),
                 %% mail_gen.abs:16--16
                put(vars, (get(vars))#{'i' := ((maps:get('i', get(vars)) + 1)  rem m_ABS_StdLib_funs:f_length(Cog,m_Param_funs:f_actual_workload(Cog,[O,DC| Stack]),[O,DC| Stack])) }),
                 %% mail_gen.abs:17--17
                put(vars, (get(vars))#{'round' := (maps:get('round', get(vars)) + 1) }),
                 %% mail_gen.abs:18--18
                put(vars, (get(vars))#{'j' => 0}),
                 %% mail_gen.abs:19--19
                []=(fun Loop ([])->
                    case cmp:lt(maps:get('j', get(vars)),maps:get('currentMessageNumber', get(vars))) of
                    false -> [];
                    true -> receive
                            {stop_world, CogRef} ->
                                cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                                cog:task_is_runnable(Cog,self()),
                                task:wait_for_token(Cog,[O,DC| Stack])
                            after 0 -> ok
                        end,
                         %% mail_gen.abs:20--20
                        T_1 = cog:create_task(C:get_val_internal(get(this), 'entryPoint'),'m_newRequest',[[]],#task_info{method= <<"newRequest"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                        T_1,
                         %% mail_gen.abs:21--21
                        cog:suspend_current_task_for_duration(Cog, rationals:rdiv(m_Param_funs:f_sendingWin(Cog,[O,DC| Stack]),maps:get('currentMessageNumber', get(vars))) , rationals:rdiv(m_Param_funs:f_sendingWin(Cog,[O,DC| Stack]),maps:get('currentMessageNumber', get(vars))) ,[O,DC| Stack]),
                        ok,
                         %% mail_gen.abs:22--22
                        put(vars, (get(vars))#{'j' := (maps:get('j', get(vars)) + 1) }),
                    Loop([])  end end)
                ([]),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method run and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
