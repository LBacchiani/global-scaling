-module(m_EmailProcessingPipelineArchitecture).
-behaviour(application).
-include_lib("../include/abs_types.hrl").
-export([main/1]).
%% Application callbacks
-export([start/2, stop/1]).

'main'(Cog=#cog{ref=CogRef,dcobj=DC})->
    put(vars, #{}),
    C = none,
    Oid = null, % avoid self-call branch in synccall code
    O = #object{oid=Oid,cog=Cog},
    put(this, {state, none}),
    Stack = [DC],
     %% code.abs:1425--1425
    put(vars, (get(vars))#{'setupSystem' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_SetUpSystem,[[]],Cog,[O,DC| Stack])}),
     %% code.abs:1426--1426
    put(vars, (get(vars))#{'entryPoint' => (fun() -> case maps:get('setupSystem', get(vars)) of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_initializeSystem'(Callee,[O,DC,Vars| Stack]),
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
            Result=T:'m_initializeSystem'(Callee,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_initializeSystem',[[]],#task_info{method= <<"initializeSystem"/utf8>>},Cog, true),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)()}),
     %% code.abs:1427--1427
    put(vars, (get(vars))#{'testProcess' => object:new(cog:start(Cog,DC),class_EmailProcessingPipelineArchitecture_MailGenerator,[maps:get('entryPoint', get(vars)),[]],Cog,[O,DC| Stack])}).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    runtime:start_link([m_EmailProcessingPipelineArchitecture]).

stop(_State) ->
    ok.
