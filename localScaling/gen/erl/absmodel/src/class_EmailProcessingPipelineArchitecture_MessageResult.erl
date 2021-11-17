-module(class_EmailProcessingPipelineArchitecture_MessageResult).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"MessageResultInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_MessageResult,'n'=null,'nWaiting'=null,'messId'=null,'res'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:103
'get_val_internal'(#state{'n'=G},'n')->
    G;
 %% code.abs:104
'get_val_internal'(#state{'nWaiting'=G},'nWaiting')->
    G;
 %% code.abs:105
'get_val_internal'(#state{'messId'=G},'messId')->
    G;
 %% code.abs:106
'get_val_internal'(#state{'res'=G},'res')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:103
'set_val_internal'(S,'n',V)->
    S#state{'n'=V};
 %% code.abs:104
'set_val_internal'(S,'nWaiting',V)->
    S#state{'nWaiting'=V};
 %% code.abs:105
'set_val_internal'(S,'messId',V)->
    S#state{'messId'=V};
 %% code.abs:106
'set_val_internal'(S,'res',V)->
    S#state{'res'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'n', S#state.'n' }
        , { 'nWaiting', S#state.'nWaiting' }
        , { 'messId', S#state.'messId' }
        , { 'res', S#state.'res' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_n,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'n',P_n)),
     %% code.abs:104--104
    put(this, C:set_val_internal(get(this),'nWaiting',C:get_val_internal(get(this), 'n'))),
     %% code.abs:105--105
    put(this, C:set_val_internal(get(this),'messId',<<""/utf8>>)),
     %% code.abs:106--106
    put(this, C:set_val_internal(get(this),'res',<<""/utf8>>)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:108
 %% code.abs:108
'm_insertRes'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_r_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'r' => V_r_0 }),
    try
         %% code.abs:109--109
        put(this, C:set_val_internal(get(this), 'res',iolist_to_binary([iolist_to_binary([C:get_val_internal(get(this), 'res'), maps:get('r', get(vars))]), <<"
"/utf8>>]))),
         %% code.abs:110--110
        put(this, C:set_val_internal(get(this), 'nWaiting',(C:get_val_internal(get(this), 'nWaiting') - 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertRes and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:113
 %% code.abs:113
'm_getActivityWaiting'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:113--113
        C:get_val_internal(get(this), 'nWaiting')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getActivityWaiting and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:115
 %% code.abs:115
'm_getRes'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:115--115
        C:get_val_internal(get(this), 'res')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getRes and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
