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

 %% code.abs:1261
'get_val_internal'(#state{'entryPoint'=G},'entryPoint')->
    object:register_read('entryPoint'),
    G;
 %% code.abs:1262
'get_val_internal'(#state{'windowDim'=G},'windowDim')->
    object:register_read('windowDim'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:1261
'set_val_internal'(S,'entryPoint',V)->
    object:register_write('entryPoint'),
    S#state{'entryPoint'=V};
 %% code.abs:1262
'set_val_internal'(S,'windowDim',V)->
    object:register_write('windowDim'),
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
     %% code.abs:1262--1262
    put(this, C:set_val_internal(get(this),'windowDim',30)),
    cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
    cog:add_task(Cog,active_object_task,null,O,[],#task_info{event=#event{type=schedule, local_id=run}, method= <<"run"/utf8>>,this=O,destiny=null},[O,DC| Stack]),
    cog:task_is_runnable(Cog,self()),
    task:wait_for_token(Cog,[O,DC| Stack]),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:1263
 %% code.abs:1263
'm_run'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% code.abs:1304--1323
        put(vars, (get(vars))#{'realWorkload' => m_ABS_StdLib_funs:f_list(Cog,[ 10, 5, 2, 2, 25, 22, 17, 20, 22, 27, 7, 17, 12, 50, 52, 30, 22, 17, 90, 120, 40, 37, 35, 80, 75, 15, 165, 535, 497, 507, 522, 507, 510, 557, 610, 617, 610, 675, 665, 640, 635, 612, 602, 597, 575, 585, 560, 555, 597, 590, 590, 590, 582, 542, 557, 565, 587, 672, 710, 715, 750, 760, 750, 755, 747, 725, 747, 737, 730, 722, 732, 725, 727, 720, 725, 722, 745, 740, 735, 682, 650, 635, 625, 590, 550, 510, 515, 532, 552, 545, 520, 507, 505, 502, 515, 510, 512, 510, 500, 505, 505, 432, 425, 425, 422, 395, 392, 395, 405, 392, 397, 377, 367, 327, 322, 312, 310, 340, 320, 315, 320, 312, 305, 300, 297, 275, 280, 287, 290, 287, 297, 310, 307, 302, 312, 300, 297, 297, 305, 312, 310, 322, 315, 312, 312, 275, 267, 260, 260, 257, 250, 245, 230, 210, 227, 250, 247, 232, 230, 217, 210, 200, 192, 187, 167, 152, 167, 150, 137, 127, 65, 62, 55, 52, 50, 50, 50, 45, 132, 130, 47, 92, 95, 150, 157, 255, 400, 430, 440, 440, 445, 455, 475, 457, 447, 447, 420] ,[O,DC| Stack])}),
         %% code.abs:1324--1324
        put(vars, (get(vars))#{'i' => 0}),
         %% code.abs:1325--1325
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
                 %% code.abs:1326--1326
                put(vars, (get(vars))#{'currentMessageNumber' => m_ABS_StdLib_funs:f_nth(Cog,maps:get('realWorkload', get(vars)),maps:get('i', get(vars)),[O,DC| Stack])}),
                 %% code.abs:1327--1327
                put(vars, (get(vars))#{'i' := ((maps:get('i', get(vars)) + 1)  rem m_ABS_StdLib_funs:f_length(Cog,maps:get('realWorkload', get(vars)),[O,DC| Stack])) }),
                 %% code.abs:1328--1328
                put(vars, (get(vars))#{'j' => 0}),
                 %% code.abs:1329--1329
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
                         %% code.abs:1330--1330
                        T_1 = cog:create_task(C:get_val_internal(get(this), 'entryPoint'),'m_newMessage',[<<"Message"/utf8>>,[]],#task_info{method= <<"newMessage"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
                        T_1,
                         %% code.abs:1331--1331
                        cog:suspend_current_task_for_duration(Cog, rationals:rdiv(C:get_val_internal(get(this), 'windowDim'),maps:get('currentMessageNumber', get(vars))) , rationals:rdiv(C:get_val_internal(get(this), 'windowDim'),maps:get('currentMessageNumber', get(vars))) ,[O,DC| Stack]),
                        ok,
                         %% code.abs:1332--1332
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
