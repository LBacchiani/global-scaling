-module(class_EmailProcessingPipelineArchitecture_MailGenerator).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"MailGeneratorInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_MailGenerator,'entryPoint'=null,'windowDim'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:1368
'get_val_internal'(#state{'entryPoint'=G},'entryPoint')->
    G;
 %% code.abs:1369
'get_val_internal'(#state{'windowDim'=G},'windowDim')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:1368
'set_val_internal'(S,'entryPoint',V)->
    S#state{'entryPoint'=V};
 %% code.abs:1369
'set_val_internal'(S,'windowDim',V)->
    S#state{'windowDim'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'entryPoint', S#state.'entryPoint' }
        , { 'windowDim', S#state.'windowDim' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_entryPoint,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'entryPoint',P_entryPoint)),
     %% code.abs:1369--1369
    put(this, C:set_val_internal(get(this),'windowDim',30)),
    cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
    cog:add_task(Cog,active_object_task,null,O,[],#task_info{event=#event{type=schedule, local_id=run}, method= <<"run"/utf8>>,this=O,destiny=null},[O,DC| Stack]),
    cog:task_is_runnable(Cog,self()),
    task:wait_for_token(Cog,[O,DC| Stack]),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:1370
 %% code.abs:1370
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1372--1390
        put(vars, (get(vars))#{'realWorkload' => m_ABS_StdLib_funs:f_list(Cog,[ 82, 84, 85, 90, 93, 96, 100, 104, 108, 114, 118, 122, 128, 133, 138, 142, 147, 150, 150, 151, 151, 152, 152, 153, 153, 153, 153, 153, 154, 154, 154, 154, 154, 155, 155, 155, 155, 155, 155, 155, 155, 155, 155, 155, 155, 155, 155, 156, 156, 156, 156, 157, 157, 157, 157, 163, 173, 180, 196, 210, 220, 234, 242, 246, 254, 261, 271, 280, 295, 287, 279, 268, 258, 250, 242, 234, 225, 220, 215, 205, 200, 196, 190, 187, 184, 187, 190, 193, 197, 200, 203, 206, 209, 212, 216, 220, 224, 219, 214, 210, 204, 192, 188, 184, 180, 175, 170, 165, 160, 157, 154, 150, 152, 154, 156, 158, 162, 168, 174, 182, 191, 200, 209, 219, 228, 237, 247, 256, 266, 275, 284, 294, 303, 313, 322, 331, 341, 355, 369, 374, 386, 398, 416, 427, 445, 455, 496, 515, 496, 480, 470, 455, 440, 420, 399, 388, 378, 368, 358, 348, 337, 327, 317, 307, 297, 286, 276, 266, 256, 246, 235, 225, 215, 205, 195, 185, 175, 164, 155, 145, 134, 124, 114, 104, 97, 96, 93, 88, 85, 84] ,[O,DC| Stack])}),
         %% code.abs:1409--1409
        put(vars, (get(vars))#{'i' => 0}),
         %% code.abs:1410--1410
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
                 %% code.abs:1411--1411
                put(vars, (get(vars))#{'currentMessageNumber' => m_ABS_StdLib_funs:f_nth(Cog,maps:get('realWorkload', get(vars)),maps:get('i', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1412--1412
                put(vars, (get(vars))#{'i' := ((maps:get('i', get(vars)) + 1)  rem m_ABS_StdLib_funs:f_length(Cog,maps:get('realWorkload', get(vars)),[O,DC| Stack])) }),
                 %% code.abs:1413--1413
                put(vars, (get(vars))#{'j' => 0}),
                 %% code.abs:1414--1414
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
                         %% code.abs:1415--1415
                        T_1 = cog:create_task(C:get_val_internal(get(this), 'entryPoint'),'m_newMessage',[<<"Message"/utf8>>,[]],#task_info{method= <<"newMessage"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
                        T_1,
                         %% code.abs:1416--1416
                        cog:suspend_current_task_for_duration(Cog, rationals:rdiv(C:get_val_internal(get(this), 'windowDim'),maps:get('currentMessageNumber', get(vars))) , rationals:rdiv(C:get_val_internal(get(this), 'windowDim'),maps:get('currentMessageNumber', get(vars))) ,[O,DC| Stack]),
                        ok,
                         %% code.abs:1417--1417
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
