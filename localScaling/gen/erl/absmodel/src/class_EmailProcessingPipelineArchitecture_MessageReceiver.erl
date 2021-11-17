-module(class_EmailProcessingPipelineArchitecture_MessageReceiver).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"MessageReceiverInterface">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_MessageReceiver,'parserLoadBalancer'=null,'speed_res'=null,'mcl'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:206
'get_val_internal'(#state{'parserLoadBalancer'=G},'parserLoadBalancer')->
    G;
 %% code.abs:207
'get_val_internal'(#state{'speed_res'=G},'speed_res')->
    G;
 %% code.abs:208
'get_val_internal'(#state{'mcl'=G},'mcl')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:206
'set_val_internal'(S,'parserLoadBalancer',V)->
    S#state{'parserLoadBalancer'=V};
 %% code.abs:207
'set_val_internal'(S,'speed_res',V)->
    S#state{'speed_res'=V};
 %% code.abs:208
'set_val_internal'(S,'mcl',V)->
    S#state{'mcl'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'parserLoadBalancer', S#state.'parserLoadBalancer' }
        , { 'speed_res', S#state.'speed_res' }
        , { 'mcl', S#state.'mcl' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_parserLoadBalancer,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'parserLoadBalancer',P_parserLoadBalancer)),
     %% code.abs:207--207
    put(this, C:set_val_internal(get(this),'speed_res',5)),
     %% code.abs:208--208
    put(this, C:set_val_internal(get(this),'mcl',116)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:209
 %% code.abs:209
'm_newMessage'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_mailData_0,V_balancer_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'mailData' => V_mailData_0,
 'balancer' => V_balancer_0 }),
    try
         %% code.abs:210--210
        cog:block_current_task_for_cpu(Cog, rationals:rdiv((C:get_val_internal(get(this), 'speed_res') * 30) ,C:get_val_internal(get(this), 'mcl')) ,[O,DC| Stack]),
        skip,
         %% code.abs:211--211
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
         %% code.abs:212--212
        T_2 = (fun() -> case C:get_val_internal(get(this), 'parserLoadBalancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_newRequest'(Callee,maps:get('mailData', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_mailData = maps:get('mailData', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_newRequest'(Callee, V_mailData,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('mailData', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method newMessage and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
