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

 %% code.abs:619
'get_val_internal'(#state{'yesOrNot'=G},'yesOrNot')->
    object:register_read('yesOrNot'),
    G;
 %% code.abs:620
'get_val_internal'(#state{'speed_res'=G},'speed_res')->
    object:register_read('speed_res'),
    G;
 %% code.abs:621
'get_val_internal'(#state{'mcl'=G},'mcl')->
    object:register_read('mcl'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:619
'set_val_internal'(S,'yesOrNot',V)->
    object:register_write('yesOrNot'),
    S#state{'yesOrNot'=V};
 %% code.abs:620
'set_val_internal'(S,'speed_res',V)->
    object:register_write('speed_res'),
    S#state{'speed_res'=V};
 %% code.abs:621
'set_val_internal'(S,'mcl',V)->
    object:register_write('mcl'),
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
     %% code.abs:619--619
    put(this, C:set_val_internal(get(this),'yesOrNot',-1)),
     %% code.abs:620--620
    put(this, C:set_val_internal(get(this),'speed_res',30)),
     %% code.abs:621--621
    put(this, C:set_val_internal(get(this),'mcl',90)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:622
 %% code.abs:622
'm_nsfwDetection'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_image_0,V_balancer_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'image' => V_image_0,
 'balancer' => V_balancer_0 }),
    try
         %% code.abs:623--623
        cog:block_current_task_for_cpu(Cog, rationals:rdiv((C:get_val_internal(get(this), 'speed_res') * 30) ,C:get_val_internal(get(this), 'mcl')) ,[O,DC| Stack]),
        skip,
         %% code.abs:624--624
        T_1 = (fun() -> case maps:get('balancer', get(vars)) of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_removeMessage'(Callee,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_removeMessage'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_removeMessage',[[]],#task_info{method= <<"removeMessage"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% code.abs:625--625
        put(this, C:set_val_internal(get(this), 'yesOrNot',(C:get_val_internal(get(this), 'yesOrNot') + 1) )),
         %% code.abs:626--626
        cmp:eq((C:get_val_internal(get(this), 'yesOrNot') rem 3) ,0)
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method nsfwDetection and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
