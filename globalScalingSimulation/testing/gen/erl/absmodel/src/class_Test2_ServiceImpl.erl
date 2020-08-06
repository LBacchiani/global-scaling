-module(class_Test2_ServiceImpl).
-include_lib("../include/abs_types.hrl").
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"Service">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Test2_ServiceImpl}).
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
    O.
%% --- Class has no recovery block

%% --- Methods

 %% Error_abs.abs:11
 %% Error_abs.abs:11
'm_receive'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_input_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'input' => V_input_0 }),
    try
         %% Error_abs.abs:12--12
        cog:block_current_task_for_cpu(Cog,45,[O,DC| Stack]),
        skip,
        dataUnit
        
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method receive and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
