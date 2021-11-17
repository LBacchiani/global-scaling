-module(class_EmailProcessingPipelineArchitecture_NSFWDetector).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"NSFWDetectorInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_NSFWDetector,'yesOrNot'=null,'speed_res'=null,'mcl'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:919
'get_val_internal'(#state{'yesOrNot'=G},'yesOrNot')->
    G;
 %% code.abs:920
'get_val_internal'(#state{'speed_res'=G},'speed_res')->
    G;
 %% code.abs:921
'get_val_internal'(#state{'mcl'=G},'mcl')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:919
'set_val_internal'(S,'yesOrNot',V)->
    S#state{'yesOrNot'=V};
 %% code.abs:920
'set_val_internal'(S,'speed_res',V)->
    S#state{'speed_res'=V};
 %% code.abs:921
'set_val_internal'(S,'mcl',V)->
    S#state{'mcl'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'yesOrNot', S#state.'yesOrNot' }
        , { 'speed_res', S#state.'speed_res' }
        , { 'mcl', S#state.'mcl' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
     %% code.abs:919--919
    put(this, C:set_val_internal(get(this),'yesOrNot',-1)),
     %% code.abs:920--920
    put(this, C:set_val_internal(get(this),'speed_res',30)),
     %% code.abs:921--921
    put(this, C:set_val_internal(get(this),'mcl',90)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:923
 %% code.abs:923
'm_nsfwDetection'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_image_0,V_balancer_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'image' => V_image_0,
 'balancer' => V_balancer_0 }),
    try
         %% code.abs:924--924
        cog:block_current_task_for_cpu(Cog, rationals:rdiv((C:get_val_internal(get(this), 'speed_res') * 30) ,C:get_val_internal(get(this), 'mcl')) ,[O,DC| Stack]),
        skip,
         %% code.abs:925--925
        T_1 = cog:create_task(maps:get('balancer', get(vars)),'m_removeMessage',[[]],#task_info{method= <<"removeMessage"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
         %% code.abs:926--926
        put(this, C:set_val_internal(get(this), 'yesOrNot',(C:get_val_internal(get(this), 'yesOrNot') + 1) )),
         %% code.abs:927--927
        cmp:eq((C:get_val_internal(get(this), 'yesOrNot') rem 3) ,0)
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method nsfwDetection and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
