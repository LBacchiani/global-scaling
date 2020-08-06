-module(class_ABS_Meta_Runtime).
-include_lib("../include/abs_types.hrl").
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Runtime">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_ABS_Meta_Runtime}).
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

 %% abs\lang\abslang.abs:1246
 %% abs\lang\abslang.abs:1246
'm_getProductLine'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1246--1246
        builtin:getProductLine(Cog)
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method getProductLine and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
