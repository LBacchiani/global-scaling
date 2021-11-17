-module(class_EmailProcessingPipelineArchitecture_ImageAnalyser).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"ImageAnalyserInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_ImageAnalyser,'nsfwDetectorLoadBalancer'=null,'imageRecognizerLoadBalancer'=null,'messageAnalyserLoadBalancer'=null,'speed_res'=null,'mcl'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:816
'get_val_internal'(#state{'nsfwDetectorLoadBalancer'=G},'nsfwDetectorLoadBalancer')->
    G;
 %% code.abs:816
'get_val_internal'(#state{'imageRecognizerLoadBalancer'=G},'imageRecognizerLoadBalancer')->
    G;
 %% code.abs:816
'get_val_internal'(#state{'messageAnalyserLoadBalancer'=G},'messageAnalyserLoadBalancer')->
    G;
 %% code.abs:817
'get_val_internal'(#state{'speed_res'=G},'speed_res')->
    G;
 %% code.abs:818
'get_val_internal'(#state{'mcl'=G},'mcl')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:816
'set_val_internal'(S,'nsfwDetectorLoadBalancer',V)->
    S#state{'nsfwDetectorLoadBalancer'=V};
 %% code.abs:816
'set_val_internal'(S,'imageRecognizerLoadBalancer',V)->
    S#state{'imageRecognizerLoadBalancer'=V};
 %% code.abs:816
'set_val_internal'(S,'messageAnalyserLoadBalancer',V)->
    S#state{'messageAnalyserLoadBalancer'=V};
 %% code.abs:817
'set_val_internal'(S,'speed_res',V)->
    S#state{'speed_res'=V};
 %% code.abs:818
'set_val_internal'(S,'mcl',V)->
    S#state{'mcl'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'nsfwDetectorLoadBalancer', S#state.'nsfwDetectorLoadBalancer' }
        , { 'imageRecognizerLoadBalancer', S#state.'imageRecognizerLoadBalancer' }
        , { 'messageAnalyserLoadBalancer', S#state.'messageAnalyserLoadBalancer' }
        , { 'speed_res', S#state.'speed_res' }
        , { 'mcl', S#state.'mcl' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_nsfwDetectorLoadBalancer,P_imageRecognizerLoadBalancer,P_messageAnalyserLoadBalancer,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'nsfwDetectorLoadBalancer',P_nsfwDetectorLoadBalancer)),
    put(this, C:set_val_internal(get(this),'imageRecognizerLoadBalancer',P_imageRecognizerLoadBalancer)),
    put(this, C:set_val_internal(get(this),'messageAnalyserLoadBalancer',P_messageAnalyserLoadBalancer)),
     %% code.abs:817--817
    put(this, C:set_val_internal(get(this),'speed_res',5)),
     %% code.abs:818--818
    put(this, C:set_val_internal(get(this),'mcl',231)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:820
 %% code.abs:820
'm_analyzeImage'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_image_0,V_messageId_0,V_balancer_0,V_db_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'image' => V_image_0,
 'messageId' => V_messageId_0,
 'balancer' => V_balancer_0,
 'db' => V_db_0 }),
    try
         %% code.abs:821--821
        cog:block_current_task_for_cpu(Cog, rationals:rdiv((C:get_val_internal(get(this), 'speed_res') * 30) ,C:get_val_internal(get(this), 'mcl')) ,[O,DC| Stack]),
        skip,
         %% code.abs:822--822
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
         %% code.abs:823--823
        put(vars, (get(vars))#{'maybeNSFW' => (fun() -> case C:get_val_internal(get(this), 'nsfwDetectorLoadBalancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_newRequest'(Callee,maps:get('image', get(vars)),maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_image = maps:get('image', get(vars)),
                V_messageId = maps:get('messageId', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_newRequest'(Callee, V_image, V_messageId,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('image', get(vars)),maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:824--824
        put(vars, (get(vars))#{'maybeImageCategory' => (fun() -> case C:get_val_internal(get(this), 'imageRecognizerLoadBalancer') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_newRequest'(Callee,maps:get('image', get(vars)),maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_image = maps:get('image', get(vars)),
                V_messageId = maps:get('messageId', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_newRequest'(Callee, V_image, V_messageId,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_newRequest',[maps:get('image', get(vars)),maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% code.abs:825--825
        case (m_ABS_StdLib_funs:f_isJust(Cog,maps:get('maybeNSFW', get(vars)),[O,DC| Stack])) and (m_ABS_StdLib_funs:f_isJust(Cog,maps:get('maybeImageCategory', get(vars)),[O,DC| Stack])) of
            true ->  %% code.abs:826--826
            put(vars, (get(vars))#{'futNSFW' => m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybeNSFW', get(vars)),[O,DC| Stack])}),
             %% code.abs:827--827
            future:await(maps:get('futNSFW', get(vars)), Cog, [O,DC| Stack]),
            ok,
             %% code.abs:828--828
            put(vars, (get(vars))#{'nsfwResult' => future:get_blocking(maps:get('futNSFW', get(vars)), Cog, [O,DC| Stack])}),
             %% code.abs:829--829
            put(vars, (get(vars))#{'futImageCategory' => m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybeImageCategory', get(vars)),[O,DC| Stack])}),
             %% code.abs:830--830
            future:await(maps:get('futImageCategory', get(vars)), Cog, [O,DC| Stack]),
            ok,
             %% code.abs:831--831
            put(vars, (get(vars))#{'imageRecognitionResult' => future:get_blocking(maps:get('futImageCategory', get(vars)), Cog, [O,DC| Stack])}),
             %% code.abs:832--832
            put(vars, (get(vars))#{'res' => <<""/utf8>>}),
             %% code.abs:833--833
            case maps:get('nsfwResult', get(vars)) of
                true ->  %% code.abs:833--833
                put(vars, (get(vars))#{'res' := iolist_to_binary([iolist_to_binary([iolist_to_binary([<<"Image ("/utf8>>, maps:get('image', get(vars))]), <<") not safe for work by ImageAnalyser in "/utf8>>]), builtin:toString(Cog,builtin:thisDC(Cog))])});
                false ->              %% code.abs:834--834
            put(vars, (get(vars))#{'res' := iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([<<"Results of ImageAnalysis ("/utf8>>, maps:get('image', get(vars))]), <<") - "/utf8>>]), maps:get('imageRecognitionResult', get(vars))]), <<" by ImageAnalyser in "/utf8>>]), builtin:toString(Cog,builtin:thisDC(Cog))])})
            end,
             %% code.abs:835--835
            T_2 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyserLoadBalancer') of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_insertResult'(Callee,maps:get('res', get(vars)),maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                    put(vars, Vars),
                    Result;
                Callee=#object{oid=ObjRef,cog=Cog} ->
                    %% cog-local call
                    V_res = maps:get('res', get(vars)),
                    V_id = maps:get('messageId', get(vars)),
                    State=get(this),
                    Vars=get(vars),
                    cog:object_state_changed(Cog, O, State),
                    put(this,cog:get_object_state(Callee#object.cog, Callee)),
                    put(task_info,(get(task_info))#task_info{this=Callee}),
                    T=object:get_class_from_state(get(this)), % it's the callee state already
                    Result=T:'m_insertResult'(Callee, V_res, V_id,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_insertResult',[maps:get('res', get(vars)),maps:get('messageId', get(vars)),[]],#task_info{method= <<"insertResult"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_2;
            false ->         ok
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method analyzeImage and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
