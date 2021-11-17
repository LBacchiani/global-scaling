-module(class_Test_MonitorImpl).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Monitor">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Test_MonitorImpl,'end'=null}).
'init_internal'()->
    #state{}.

 %% ABS_deadlock.abs:24
'get_val_internal'(#state{'end'=G},'end')->
    object:register_read('end'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% ABS_deadlock.abs:24
'set_val_internal'(S,'end',V)->
    object:register_write('end'),
    S#state{'end'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'end', S#state.'end' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_end,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'end',P_end)),
    cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
    cog:add_task(Cog,active_object_task,null,O,[],#task_info{event=#event{type=schedule, local_id=run}, method= <<"run"/utf8>>,this=O,destiny=null},[O,DC| Stack]),
    cog:task_is_runnable(Cog,self()),
    task:wait_for_token(Cog,[O,DC| Stack]),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% ABS_deadlock.abs:25
 %% ABS_deadlock.abs:25
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% ABS_deadlock.abs:26--26
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
                 %% ABS_deadlock.abs:27--27
                cog:suspend_current_task_for_duration(Cog,300,300,[O,DC| Stack]),
                ok,
                 %% ABS_deadlock.abs:28--28
                put(vars, (get(vars))#{'tmp314309716' => cog:create_task(C:get_val_internal(get(this), 'end'),'m_getCounter',[[]],#task_info{method= <<"getCounter"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
                 %% ABS_deadlock.abs:28--28
                future:await(maps:get('tmp314309716', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% ABS_deadlock.abs:28--28
                put(vars, (get(vars))#{'counter' => future:get_blocking(maps:get('tmp314309716', get(vars)), Cog, [O,DC| Stack])}),
                 %% ABS_deadlock.abs:29--29
                T_1 = builtin:println(Cog,iolist_to_binary([<<"Counter: "/utf8>>, builtin:toString(Cog,maps:get('counter', get(vars)))])),
                T_1,
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method run and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
