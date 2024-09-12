-module(class_MsgRes_MessageResult).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"MessageResultInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_MsgRes_MessageResult,'n'=null,'nWaiting'=null,'messId'=null,'res'=null}).
'init_internal'()->
    #state{}.

 %% msg_res.abs:11
'get_val_internal'(#state{'n'=G},'n')->
    object:register_read('n'),
    G;
 %% msg_res.abs:12
'get_val_internal'(#state{'nWaiting'=G},'nWaiting')->
    object:register_read('nWaiting'),
    G;
 %% msg_res.abs:13
'get_val_internal'(#state{'messId'=G},'messId')->
    object:register_read('messId'),
    G;
 %% msg_res.abs:14
'get_val_internal'(#state{'res'=G},'res')->
    object:register_read('res'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% msg_res.abs:11
'set_val_internal'(S,'n',V)->
    object:register_write('n'),
    S#state{'n'=V};
 %% msg_res.abs:12
'set_val_internal'(S,'nWaiting',V)->
    object:register_write('nWaiting'),
    S#state{'nWaiting'=V};
 %% msg_res.abs:13
'set_val_internal'(S,'messId',V)->
    object:register_write('messId'),
    S#state{'messId'=V};
 %% msg_res.abs:14
'set_val_internal'(S,'res',V)->
    object:register_write('res'),
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
     %% msg_res.abs:12--12
    put(this, C:set_val_internal(get(this),'nWaiting',C:get_val_internal(get(this), 'n'))),
     %% msg_res.abs:13--13
    put(this, C:set_val_internal(get(this),'messId',<<""/utf8>>)),
     %% msg_res.abs:14--14
    put(this, C:set_val_internal(get(this),'res',<<""/utf8>>)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% msg_res.abs:16
 %% msg_res.abs:16
'm_insertRes'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_r_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'r' => V_r_0 }),
    try
         %% msg_res.abs:17--17
        put(this, C:set_val_internal(get(this), 'res',iolist_to_binary([iolist_to_binary([C:get_val_internal(get(this), 'res'), maps:get('r', get(vars))]), <<"
"/utf8>>]))),
         %% msg_res.abs:18--18
        put(this, C:set_val_internal(get(this), 'nWaiting',(C:get_val_internal(get(this), 'nWaiting') - 1) )),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method insertRes and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% msg_res.abs:21
 %% msg_res.abs:21
'm_getActivityWaiting'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% msg_res.abs:21--21
        C:get_val_internal(get(this), 'nWaiting')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getActivityWaiting and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% msg_res.abs:23
 %% msg_res.abs:23
'm_getRes'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% msg_res.abs:23--23
        C:get_val_internal(get(this), 'res')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getRes and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
