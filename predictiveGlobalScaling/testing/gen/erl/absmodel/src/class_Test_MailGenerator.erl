-module(class_Test_MailGenerator).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"MailGeneratorInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Test_MailGenerator,'entryPoint'=null}).
'init_internal'()->
    #state{}.

 %% ABS_deadlock.abs:9
'get_val_internal'(#state{'entryPoint'=G},'entryPoint')->
    object:register_read('entryPoint'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% ABS_deadlock.abs:9
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
    cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
    cog:add_task(Cog,active_object_task,null,O,[],#task_info{event=#event{type=schedule, local_id=run}, method= <<"run"/utf8>>,this=O,destiny=null},[O,DC| Stack]),
    cog:task_is_runnable(Cog,self()),
    task:wait_for_token(Cog,[O,DC| Stack]),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% ABS_deadlock.abs:10
 %% ABS_deadlock.abs:10
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% ABS_deadlock.abs:11--11
        []=(fun Loop ([])->
            case true of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% ABS_deadlock.abs:12--12
                put(vars, (get(vars))#{'j' => 0}),
                 %% ABS_deadlock.abs:13--13
                []=(fun Loop ([])->
                    case cmp:lt(maps:get('j', get(vars)),400) of
                    false -> [];
                    true -> receive
                            {stop_world, CogRef} ->
                                cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                                cog:task_is_runnable(Cog,self()),
                                task:wait_for_token(Cog,[O,DC| Stack])
                            after 0 -> ok
                        end,
                         %% ABS_deadlock.abs:14--14
                        T_1 = cog:create_task(C:get_val_internal(get(this), 'entryPoint'),'m_newMessage',[<<"Message"/utf8>>,[]],#task_info{method= <<"newMessage"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
                        T_1,
                         %% ABS_deadlock.abs:15--15
                        cog:suspend_current_task_for_duration(Cog, rationals:rdiv(30,400) , rationals:rdiv(30,400) ,[O,DC| Stack]),
                        ok,
                         %% ABS_deadlock.abs:16--16
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
