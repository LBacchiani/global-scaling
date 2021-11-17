-module(class_Test_ServiceImpl).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"Service">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Test_ServiceImpl,'s'=null,'i'=null}).
'init_internal'()->
    #state{}.

 %% ABS_deadlock.abs:39
'get_val_internal'(#state{'s'=G},'s')->
    object:register_read('s'),
    G;
 %% ABS_deadlock.abs:40
'get_val_internal'(#state{'i'=G},'i')->
    object:register_read('i'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% ABS_deadlock.abs:39
'set_val_internal'(S,'s',V)->
    object:register_write('s'),
    S#state{'s'=V};
 %% ABS_deadlock.abs:40
'set_val_internal'(S,'i',V)->
    object:register_write('i'),
    S#state{'i'=V}.

'get_state_for_modelapi'(S)->
    [
        { 's', S#state.'s' }
        , { 'i', S#state.'i' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_s,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'s',P_s)),
     %% ABS_deadlock.abs:40--40
    put(this, C:set_val_internal(get(this),'i',0)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% ABS_deadlock.abs:41
 %% ABS_deadlock.abs:41
'm_newMessage'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_mailData_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'mailData' => V_mailData_0 }),
    try
         %% ABS_deadlock.abs:42--42
        cog:block_current_task_for_cpu(Cog,30,[O,DC| Stack]),
        skip,
         %% ABS_deadlock.abs:43--43
        case (not cmp:eq(C:get_val_internal(get(this), 's'),null)) of
            true ->  %% ABS_deadlock.abs:43--43
            T_1 = cog:create_task(C:get_val_internal(get(this), 's'),'m_newMessage',[<<"Message"/utf8>>,[]],#task_info{method= <<"newMessage"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
            T_1;
            false ->          %% ABS_deadlock.abs:44--44
        put(this, C:set_val_internal(get(this), 'i',(C:get_val_internal(get(this), 'i') + 1) ))
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method newMessage and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% ABS_deadlock.abs:46
 %% ABS_deadlock.abs:46
'm_getCounter'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% ABS_deadlock.abs:47--47
        C:get_val_internal(get(this), 'i')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getCounter and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
