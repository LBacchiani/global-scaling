-module(class_Test2_MonitorImpl).
-include_lib("../include/abs_types.hrl").
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"Monitor">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Test2_MonitorImpl}).
'init_internal'()->
    #state{}.

'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

'set_val_internal'(S,S,S)->
    throw(badarg).
'get_state_for_modelapi'(S)->
    [
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% Error_abs.abs:21
 %% Error_abs.abs:21
'm_execute'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_service_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'service' => V_service_0 }),
    try
         %% Error_abs.abs:22--22
        T_1 = builtin:println(Cog,iolist_to_binary([<<"GLOBAL TIME: "/utf8>>, builtin:toString(Cog,m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack]))])),
        T_1,
         %% Error_abs.abs:23--23
        T_2 = cog:create_task(maps:get('service', get(vars)),'m_receive',[<<"hello world"/utf8>>,[]],#task_info{method= <<"receive"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_2,
         %% Error_abs.abs:24--24
        cog:block_current_task_for_duration(Cog, rationals:rdiv(3,2) , rationals:rdiv(3,2) ,[O,DC| Stack]),
         %% Error_abs.abs:25--25
        T_3 = builtin:println(Cog,iolist_to_binary([<<"GLOBAL TIME: "/utf8>>, builtin:toString(Cog,m_ABS_StdLib_funs:f_timeValue(Cog,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack]))])),
        T_3,
        dataUnit
        
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method execute and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
