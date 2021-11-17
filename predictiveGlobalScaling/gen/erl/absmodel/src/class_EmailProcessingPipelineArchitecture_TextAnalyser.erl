-module(class_EmailProcessingPipelineArchitecture_TextAnalyser).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"TextAnalyserInterface">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_EmailProcessingPipelineArchitecture_TextAnalyser,'sentimentAnalayserLoadBalancer'=null,'messageAnalyserLoadBalancer'=null}).
'init_internal'()->
    #state{}.

 %% code.abs:321
'get_val_internal'(#state{'sentimentAnalayserLoadBalancer'=G},'sentimentAnalayserLoadBalancer')->
    object:register_read('sentimentAnalayserLoadBalancer'),
    G;
 %% code.abs:321
'get_val_internal'(#state{'messageAnalyserLoadBalancer'=G},'messageAnalyserLoadBalancer')->
    object:register_read('messageAnalyserLoadBalancer'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% code.abs:321
'set_val_internal'(S,'sentimentAnalayserLoadBalancer',V)->
    object:register_write('sentimentAnalayserLoadBalancer'),
    S#state{'sentimentAnalayserLoadBalancer'=V};
 %% code.abs:321
'set_val_internal'(S,'messageAnalyserLoadBalancer',V)->
    object:register_write('messageAnalyserLoadBalancer'),
    S#state{'messageAnalyserLoadBalancer'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'sentimentAnalayserLoadBalancer', S#state.'sentimentAnalayserLoadBalancer' }
        , { 'messageAnalyserLoadBalancer', S#state.'messageAnalyserLoadBalancer' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_sentimentAnalayserLoadBalancer,P_messageAnalyserLoadBalancer,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'sentimentAnalayserLoadBalancer',P_sentimentAnalayserLoadBalancer)),
    put(this, C:set_val_internal(get(this),'messageAnalyserLoadBalancer',P_messageAnalyserLoadBalancer)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% code.abs:323
 %% code.abs:323
'm_analyzeText'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_messageHeader_0,V_messageBody_0,V_messageId_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'messageHeader' => V_messageHeader_0,
 'messageBody' => V_messageBody_0,
 'messageId' => V_messageId_0 }),
    try
         %% code.abs:324--324
        put(vars, (get(vars))#{'refused' => false}),
         %% code.abs:325--325
        case (not cmp:eq(maps:get('messageHeader', get(vars)),<<""/utf8>>)) of
            true -> ok;
            false ->         ok
        end,
         %% code.abs:326--326
        put(vars, (get(vars))#{'sentimentAnalysisResults' => <<""/utf8>>}),
         %% code.abs:327--327
        case (not cmp:eq(maps:get('messageBody', get(vars)),<<""/utf8>>)) of
            true ->  %% code.abs:328--328
            put(vars, (get(vars))#{'n_text_blocks' => (builtin:random(Cog,4) + 1) }),
             %% code.abs:329--329
            put(vars, (get(vars))#{'futList' => m_ABS_StdLib_funs:f_list(Cog,[],[O,DC| Stack])}),
             %% code.abs:330--330
            []=(fun Loop ([])->
                case cmp:lt(m_ABS_StdLib_funs:f_length(Cog,maps:get('futList', get(vars)),[O,DC| Stack]),maps:get('n_text_blocks', get(vars))) of
                false -> [];
                true -> receive
                        {stop_world, CogRef} ->
                            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                            cog:task_is_runnable(Cog,self()),
                            task:wait_for_token(Cog,[O,DC| Stack])
                        after 0 -> ok
                    end,
                     %% code.abs:331--331
                    put(vars, (get(vars))#{'currentFuture' => (fun() -> case C:get_val_internal(get(this), 'sentimentAnalayserLoadBalancer') of
                        null -> throw(dataNullPointerException);
                        Callee=#object{oid=Oid,cog=Cog} ->
                            %% self-call
                            Vars=get(vars),
                            Result=C:'m_newRequest'(Callee,iolist_to_binary([iolist_to_binary([maps:get('messageBody', get(vars)), <<"_block"/utf8>>]), builtin:toString(Cog,m_ABS_StdLib_funs:f_length(Cog,maps:get('futList', get(vars)),[O,DC| Stack]))]),maps:get('messageId', get(vars)),[O,DC,Vars| Stack]),
                            put(vars, Vars),
                            Result;
                        Callee=#object{oid=ObjRef,cog=Cog} ->
                            %% cog-local call
                            V_messageBody = iolist_to_binary([iolist_to_binary([maps:get('messageBody', get(vars)), <<"_block"/utf8>>]), builtin:toString(Cog,m_ABS_StdLib_funs:f_length(Cog,maps:get('futList', get(vars)),[O,DC| Stack]))]),
                            V_id = maps:get('messageId', get(vars)),
                            State=get(this),
                            Vars=get(vars),
                            cog:object_state_changed(Cog, O, State),
                            put(this,cog:get_object_state(Callee#object.cog, Callee)),
                            put(task_info,(get(task_info))#task_info{this=Callee}),
                            T=object:get_class_from_state(get(this)), % it's the callee state already
                            Result=T:'m_newRequest'(Callee, V_messageBody, V_id,[O,DC,Vars,State| Stack]),
                            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                            put(task_info,(get(task_info))#task_info{this=O}),
                            put(this, cog:get_object_state(Cog, O)),
                            put(vars, Vars),
                            Result;
                        Callee ->
                            %% remote call
                            TempFuture = cog:create_task(Callee,'m_newRequest',[iolist_to_binary([iolist_to_binary([maps:get('messageBody', get(vars)), <<"_block"/utf8>>]), builtin:toString(Cog,m_ABS_StdLib_funs:f_length(Cog,maps:get('futList', get(vars)),[O,DC| Stack]))]),maps:get('messageId', get(vars)),[]],#task_info{method= <<"newRequest"/utf8>>},Cog, true),
                            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                    end end)()}),
                     %% code.abs:332--332
                    put(vars, (get(vars))#{'futList' := m_ABS_StdLib_funs:f_appendright(Cog,maps:get('futList', get(vars)),maps:get('currentFuture', get(vars)),[O,DC| Stack])}),
                Loop([])  end end)
            ([]),
             %% code.abs:334--334
            []=(fun Loop ([])->
                case (not cmp:eq(maps:get('futList', get(vars)),[])) of
                false -> [];
                true -> receive
                        {stop_world, CogRef} ->
                            cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                            cog:task_is_runnable(Cog,self()),
                            task:wait_for_token(Cog,[O,DC| Stack])
                        after 0 -> ok
                    end,
                     %% code.abs:336--336
                    put(vars, (get(vars))#{'maybe' => m_ABS_StdLib_funs:f_head(Cog,maps:get('futList', get(vars)),[O,DC| Stack])}),
                     %% code.abs:337--337
                    put(vars, (get(vars))#{'futList' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('futList', get(vars)),[O,DC| Stack])}),
                     %% code.abs:338--338
                    case not (m_ABS_StdLib_funs:f_isJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack])) of
                        true ->  %% code.abs:339--339
                        put(vars, (get(vars))#{'refused' := true}),
                         %% code.abs:340--340
                        put(vars, (get(vars))#{'futList' := []});
                        false ->                      %% code.abs:342--342
                    put(vars, (get(vars))#{'currentFuture' => m_ABS_StdLib_funs:f_fromJust(Cog,maps:get('maybe', get(vars)),[O,DC| Stack])}),
                     %% code.abs:343--343
                    future:await(maps:get('currentFuture', get(vars)), Cog, [O,DC| Stack]),
                    ok,
                     %% code.abs:344--344
                    put(vars, (get(vars))#{'currentResult' => future:get_blocking(maps:get('currentFuture', get(vars)), Cog, [O,DC| Stack])}),
                     %% code.abs:345--345
                    put(vars, (get(vars))#{'sentimentAnalysisResults' := iolist_to_binary([iolist_to_binary([maps:get('sentimentAnalysisResults', get(vars)), <<"
		"/utf8>>]), maps:get('currentResult', get(vars))])})
                    end,
                Loop([])  end end)
            ([]);
            false ->         ok
        end,
         %% code.abs:349--349
        put(vars, (get(vars))#{'res' => iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([iolist_to_binary([<<"Results of TextAnalysis by TextAnalyser in "/utf8>>, builtin:toString(Cog,builtin:thisDC(Cog))]), <<" on: 
 		"/utf8>>]), maps:get('messageHeader', get(vars))]), <<"
 		"/utf8>>]), maps:get('messageBody', get(vars))]), <<"
 		SentimentAnalysis return:"/utf8>>]), maps:get('sentimentAnalysisResults', get(vars))])}),
         %% code.abs:350--350
        case not (maps:get('refused', get(vars))) of
            true ->  %% code.abs:350--350
            T_1 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyserLoadBalancer') of
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
            T_1;
            false ->         ok
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method analyzeText and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
