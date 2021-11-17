-module(class_EmailProcessingPipelineArchitecture_TextAnalyser_LoadBalancer).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"TextAnalyser_LoadBalancerInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_TextAnalyser_LoadBalancer,'db'=null,'instancesConnected'=null,'nextInstance'=null,'buffer_size'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:297
'get_val_internal'(#state{'db'=G},'db')->
    object:register_read('db'),
    G;
 %% code.abs:298
'get_val_internal'(#state{'instancesConnected'=G},'instancesConnected')->
    object:register_read('instancesConnected'),
    G;
 %% code.abs:299
'get_val_internal'(#state{'nextInstance'=G},'nextInstance')->
    object:register_read('nextInstance'),
    G;
 %% code.abs:300
'get_val_internal'(#state{'buffer_size'=G},'buffer_size')->
    object:register_read('buffer_size'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:297
'set_val_internal'(S,'db',V)->
    object:register_write('db'),
    S#state{'db'=V};
 %% code.abs:298
'set_val_internal'(S,'instancesConnected',V)->
    object:register_write('instancesConnected'),
    S#state{'instancesConnected'=V};
 %% code.abs:299
'set_val_internal'(S,'nextInstance',V)->
    object:register_write('nextInstance'),
    S#state{'nextInstance'=V};
 %% code.abs:300
'set_val_internal'(S,'buffer_size',V)->
    object:register_write('buffer_size'),
    S#state{'buffer_size'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'db', S#state.'db' }
        , { 'instancesConnected', S#state.'instancesConnected' }
        , { 'nextInstance', S#state.'nextInstance' }
        , { 'buffer_size', S#state.'buffer_size' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_db,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'db',P_db)),
     %% code.abs:298--298
    put(this, C:set_val_internal(get(this),'instancesConnected',m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack]))),
     %% code.abs:299--299
    put(this, C:set_val_internal(get(this),'nextInstance',-1)),
     %% code.abs:300--300
    put(this, C:set_val_internal(get(this),'buffer_size',50)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:302
 %% code.abs:302
'm_connectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_newInstance_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'newInstance' => V_newInstance_0 }),
    try
         %% code.abs:302--302
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_appendright(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('newInstance', get(vars)),[O,DC| Stack]))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method connectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:304
 %% code.abs:304
'm_disconnectInstance'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:305--305
        put(vars, (get(vars))#{'removedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),(m_ABS_StdLib_funs:f_length(Cog,C:get_val_internal(get(this), 'instancesConnected'),[O,DC| Stack]) - 1) ,[O,DC| Stack])}),
         %% code.abs:306--306
        put(this, C:set_val_internal(get(this), 'instancesConnected',m_ABS_StdLib_funs:f_without(Cog,C:get_val_internal(get(this), 'instancesConnected'),maps:get('removedInstance', get(vars)),[O,DC| Stack]))),
         %% code.abs:307--307
        maps:get('removedInstance', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method disconnectInstance and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% code.abs:310
 %% code.abs:310
'm_newRequest'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageHeader_0,V_messageBody_0,V_messageId_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageHeader' => V_messageHeader_0,
 'messageBody' => V_messageBody_0,
 'messageId' => V_messageId_0 }),
    try
         %% code.abs:311--311
        put(vars, (get(vars))#{'selectedInstance' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'instancesConnected'),0,[O,DC| Stack])}),
         %% code.abs:312--312
        T_1 = cog:create_task(maps:get('selectedInstance', get(vars)),'m_analyzeText',[maps:get('messageHeader', get(vars)),maps:get('messageBody', get(vars)),maps:get('messageId', get(vars)),[]],#task_info{method= <<"analyzeText"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method newRequest and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
