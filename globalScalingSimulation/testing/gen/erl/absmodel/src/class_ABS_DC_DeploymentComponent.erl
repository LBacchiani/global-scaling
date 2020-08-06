-module(class_ABS_DC_DeploymentComponent).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"DeploymentComponentForCloudProvider">>, <<"Object">>, <<"DeploymentComponent">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_ABS_DC_DeploymentComponent,'description'=null,'initconfig'=null,'cpuhistory'=null,'cpuhistorytotal'=null,'bwhistory'=null,'bwhistorytotal'=null,'memoryhistory'=null,'memoryhistorytotal'=null,'cpuconsumed'=null,'bwconsumed'=null,'memoryconsumed'=null,'creationTime'=null,'shutdownTime'=null,'initialized'=null,'is_shutdown'=null,'cpu'=null,'cpunext'=null,'bw'=null,'bwnext'=null,'memory'=null,'memorynext'=null,'paymentInterval'=null,'costPerInterval'=null,'startupDuration'=null,'shutdownDuration'=null,'numberOfCores'=null,'cloudprovider'=null}).
'init_internal'()->
    #state{}.

 %% abs\lang\abslang.abs:995
'get_val_internal'(#state{'description'=G},'description')->
    G;
 %% abs\lang\abslang.abs:995
'get_val_internal'(#state{'initconfig'=G},'initconfig')->
    G;
 %% abs\lang\abslang.abs:1005
'get_val_internal'(#state{'cpuhistory'=G},'cpuhistory')->
    G;
 %% abs\lang\abslang.abs:1006
'get_val_internal'(#state{'cpuhistorytotal'=G},'cpuhistorytotal')->
    G;
 %% abs\lang\abslang.abs:1007
'get_val_internal'(#state{'bwhistory'=G},'bwhistory')->
    G;
 %% abs\lang\abslang.abs:1008
'get_val_internal'(#state{'bwhistorytotal'=G},'bwhistorytotal')->
    G;
 %% abs\lang\abslang.abs:1009
'get_val_internal'(#state{'memoryhistory'=G},'memoryhistory')->
    G;
 %% abs\lang\abslang.abs:1010
'get_val_internal'(#state{'memoryhistorytotal'=G},'memoryhistorytotal')->
    G;
 %% abs\lang\abslang.abs:1016
'get_val_internal'(#state{'cpuconsumed'=G},'cpuconsumed')->
    G;
 %% abs\lang\abslang.abs:1017
'get_val_internal'(#state{'bwconsumed'=G},'bwconsumed')->
    G;
 %% abs\lang\abslang.abs:1018
'get_val_internal'(#state{'memoryconsumed'=G},'memoryconsumed')->
    G;
 %% abs\lang\abslang.abs:1022
'get_val_internal'(#state{'creationTime'=G},'creationTime')->
    G;
 %% abs\lang\abslang.abs:1023
'get_val_internal'(#state{'shutdownTime'=G},'shutdownTime')->
    G;
 %% abs\lang\abslang.abs:1027
'get_val_internal'(#state{'initialized'=G},'initialized')->
    G;
 %% abs\lang\abslang.abs:1030
'get_val_internal'(#state{'is_shutdown'=G},'is_shutdown')->
    G;
 %% abs\lang\abslang.abs:1032
'get_val_internal'(#state{'cpu'=G},'cpu')->
    G;
 %% abs\lang\abslang.abs:1034
'get_val_internal'(#state{'cpunext'=G},'cpunext')->
    G;
 %% abs\lang\abslang.abs:1035
'get_val_internal'(#state{'bw'=G},'bw')->
    G;
 %% abs\lang\abslang.abs:1037
'get_val_internal'(#state{'bwnext'=G},'bwnext')->
    G;
 %% abs\lang\abslang.abs:1038
'get_val_internal'(#state{'memory'=G},'memory')->
    G;
 %% abs\lang\abslang.abs:1040
'get_val_internal'(#state{'memorynext'=G},'memorynext')->
    G;
 %% abs\lang\abslang.abs:1041
'get_val_internal'(#state{'paymentInterval'=G},'paymentInterval')->
    G;
 %% abs\lang\abslang.abs:1044
'get_val_internal'(#state{'costPerInterval'=G},'costPerInterval')->
    G;
 %% abs\lang\abslang.abs:1045
'get_val_internal'(#state{'startupDuration'=G},'startupDuration')->
    G;
 %% abs\lang\abslang.abs:1046
'get_val_internal'(#state{'shutdownDuration'=G},'shutdownDuration')->
    G;
 %% abs\lang\abslang.abs:1047
'get_val_internal'(#state{'numberOfCores'=G},'numberOfCores')->
    G;
 %% abs\lang\abslang.abs:1049
'get_val_internal'(#state{'cloudprovider'=G},'cloudprovider')->
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% abs\lang\abslang.abs:995
'set_val_internal'(S,'description',V)->
    S#state{'description'=V};
 %% abs\lang\abslang.abs:995
'set_val_internal'(S,'initconfig',V)->
    S#state{'initconfig'=V};
 %% abs\lang\abslang.abs:1005
'set_val_internal'(S,'cpuhistory',V)->
    S#state{'cpuhistory'=V};
 %% abs\lang\abslang.abs:1006
'set_val_internal'(S,'cpuhistorytotal',V)->
    S#state{'cpuhistorytotal'=V};
 %% abs\lang\abslang.abs:1007
'set_val_internal'(S,'bwhistory',V)->
    S#state{'bwhistory'=V};
 %% abs\lang\abslang.abs:1008
'set_val_internal'(S,'bwhistorytotal',V)->
    S#state{'bwhistorytotal'=V};
 %% abs\lang\abslang.abs:1009
'set_val_internal'(S,'memoryhistory',V)->
    S#state{'memoryhistory'=V};
 %% abs\lang\abslang.abs:1010
'set_val_internal'(S,'memoryhistorytotal',V)->
    S#state{'memoryhistorytotal'=V};
 %% abs\lang\abslang.abs:1016
'set_val_internal'(S,'cpuconsumed',V)->
    S#state{'cpuconsumed'=V};
 %% abs\lang\abslang.abs:1017
'set_val_internal'(S,'bwconsumed',V)->
    S#state{'bwconsumed'=V};
 %% abs\lang\abslang.abs:1018
'set_val_internal'(S,'memoryconsumed',V)->
    S#state{'memoryconsumed'=V};
 %% abs\lang\abslang.abs:1022
'set_val_internal'(S,'creationTime',V)->
    S#state{'creationTime'=V};
 %% abs\lang\abslang.abs:1023
'set_val_internal'(S,'shutdownTime',V)->
    S#state{'shutdownTime'=V};
 %% abs\lang\abslang.abs:1027
'set_val_internal'(S,'initialized',V)->
    S#state{'initialized'=V};
 %% abs\lang\abslang.abs:1030
'set_val_internal'(S,'is_shutdown',V)->
    S#state{'is_shutdown'=V};
 %% abs\lang\abslang.abs:1032
'set_val_internal'(S,'cpu',V)->
    S#state{'cpu'=V};
 %% abs\lang\abslang.abs:1034
'set_val_internal'(S,'cpunext',V)->
    S#state{'cpunext'=V};
 %% abs\lang\abslang.abs:1035
'set_val_internal'(S,'bw',V)->
    S#state{'bw'=V};
 %% abs\lang\abslang.abs:1037
'set_val_internal'(S,'bwnext',V)->
    S#state{'bwnext'=V};
 %% abs\lang\abslang.abs:1038
'set_val_internal'(S,'memory',V)->
    S#state{'memory'=V};
 %% abs\lang\abslang.abs:1040
'set_val_internal'(S,'memorynext',V)->
    S#state{'memorynext'=V};
 %% abs\lang\abslang.abs:1041
'set_val_internal'(S,'paymentInterval',V)->
    S#state{'paymentInterval'=V};
 %% abs\lang\abslang.abs:1044
'set_val_internal'(S,'costPerInterval',V)->
    S#state{'costPerInterval'=V};
 %% abs\lang\abslang.abs:1045
'set_val_internal'(S,'startupDuration',V)->
    S#state{'startupDuration'=V};
 %% abs\lang\abslang.abs:1046
'set_val_internal'(S,'shutdownDuration',V)->
    S#state{'shutdownDuration'=V};
 %% abs\lang\abslang.abs:1047
'set_val_internal'(S,'numberOfCores',V)->
    S#state{'numberOfCores'=V};
 %% abs\lang\abslang.abs:1049
'set_val_internal'(S,'cloudprovider',V)->
    S#state{'cloudprovider'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'description', S#state.'description' }
        , { 'initconfig', S#state.'initconfig' }
        , { 'cpuhistory', S#state.'cpuhistory' }
        , { 'cpuhistorytotal', S#state.'cpuhistorytotal' }
        , { 'bwhistory', S#state.'bwhistory' }
        , { 'bwhistorytotal', S#state.'bwhistorytotal' }
        , { 'memoryhistory', S#state.'memoryhistory' }
        , { 'memoryhistorytotal', S#state.'memoryhistorytotal' }
        , { 'cpuconsumed', S#state.'cpuconsumed' }
        , { 'bwconsumed', S#state.'bwconsumed' }
        , { 'memoryconsumed', S#state.'memoryconsumed' }
        , { 'creationTime', S#state.'creationTime' }
        , { 'shutdownTime', S#state.'shutdownTime' }
        , { 'initialized', S#state.'initialized' }
        , { 'is_shutdown', S#state.'is_shutdown' }
        , { 'cpu', S#state.'cpu' }
        , { 'cpunext', S#state.'cpunext' }
        , { 'bw', S#state.'bw' }
        , { 'bwnext', S#state.'bwnext' }
        , { 'memory', S#state.'memory' }
        , { 'memorynext', S#state.'memorynext' }
        , { 'paymentInterval', S#state.'paymentInterval' }
        , { 'costPerInterval', S#state.'costPerInterval' }
        , { 'startupDuration', S#state.'startupDuration' }
        , { 'shutdownDuration', S#state.'shutdownDuration' }
        , { 'numberOfCores', S#state.'numberOfCores' }
        , { 'cloudprovider', S#state.'cloudprovider' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_description,P_initconfig,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'description',P_description)),
    put(this, C:set_val_internal(get(this),'initconfig',P_initconfig)),
     %% abs\lang\abslang.abs:1005--1005
    put(this, C:set_val_internal(get(this),'cpuhistory',[])),
     %% abs\lang\abslang.abs:1006--1006
    put(this, C:set_val_internal(get(this),'cpuhistorytotal',[])),
     %% abs\lang\abslang.abs:1007--1007
    put(this, C:set_val_internal(get(this),'bwhistory',[])),
     %% abs\lang\abslang.abs:1008--1008
    put(this, C:set_val_internal(get(this),'bwhistorytotal',[])),
     %% abs\lang\abslang.abs:1009--1009
    put(this, C:set_val_internal(get(this),'memoryhistory',[])),
     %% abs\lang\abslang.abs:1010--1010
    put(this, C:set_val_internal(get(this),'memoryhistorytotal',[])),
     %% abs\lang\abslang.abs:1016--1016
    put(this, C:set_val_internal(get(this),'cpuconsumed',0)),
     %% abs\lang\abslang.abs:1017--1017
    put(this, C:set_val_internal(get(this),'bwconsumed',0)),
     %% abs\lang\abslang.abs:1018--1018
    put(this, C:set_val_internal(get(this),'memoryconsumed',0)),
     %% abs\lang\abslang.abs:1022--1022
    put(this, C:set_val_internal(get(this),'creationTime',m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]))),
     %% abs\lang\abslang.abs:1023--1023
    put(this, C:set_val_internal(get(this),'shutdownTime',dataNothing)),
     %% abs\lang\abslang.abs:1027--1027
    put(this, C:set_val_internal(get(this),'initialized',false)),
     %% abs\lang\abslang.abs:1030--1030
    put(this, C:set_val_internal(get(this),'is_shutdown',false)),
     %% abs\lang\abslang.abs:1032--1033
    put(this, C:set_val_internal(get(this),'cpu',begin
        case m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'initconfig'),dataSpeed,[O,DC| Stack]) of
            dataNothing->dataInfRat;
            {dataJust,V_v_0}->{ dataFin,V_v_0};
            _ -> io:format("No match for FnApp(initconfig,Speed()) at abs\lang\abslang.abs:1032~n"), 
            exit(dataPatternMatchFailException)
        end
    end)),
     %% abs\lang\abslang.abs:1034--1034
    put(this, C:set_val_internal(get(this),'cpunext',C:get_val_internal(get(this), 'cpu'))),
     %% abs\lang\abslang.abs:1035--1036
    put(this, C:set_val_internal(get(this),'bw',begin
        case m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'initconfig'),dataBandwidth,[O,DC| Stack]) of
            dataNothing->dataInfRat;
            {dataJust,V_v_1}->{ dataFin,V_v_1};
            _ -> io:format("No match for FnApp(initconfig,Bandwidth()) at abs\lang\abslang.abs:1035~n"), 
            exit(dataPatternMatchFailException)
        end
    end)),
     %% abs\lang\abslang.abs:1037--1037
    put(this, C:set_val_internal(get(this),'bwnext',C:get_val_internal(get(this), 'bw'))),
     %% abs\lang\abslang.abs:1038--1039
    put(this, C:set_val_internal(get(this),'memory',begin
        case m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'initconfig'),dataMemory,[O,DC| Stack]) of
            dataNothing->dataInfRat;
            {dataJust,V_m_0}->{ dataFin,V_m_0};
            _ -> io:format("No match for FnApp(initconfig,Memory()) at abs\lang\abslang.abs:1038~n"), 
            exit(dataPatternMatchFailException)
        end
    end)),
     %% abs\lang\abslang.abs:1040--1040
    put(this, C:set_val_internal(get(this),'memorynext',C:get_val_internal(get(this), 'memory'))),
     %% abs\lang\abslang.abs:1041--1043
    put(this, C:set_val_internal(get(this),'paymentInterval',begin
        case m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'initconfig'),dataPaymentInterval,[O,DC| Stack]) of
            dataNothing->1;
            {dataJust,V_n_0}->builtin:truncate(Cog,V_n_0);
            _ -> io:format("No match for FnApp(initconfig,PaymentInterval()) at abs\lang\abslang.abs:1042~n"), 
            exit(dataPatternMatchFailException)
        end
    end)),
     %% abs\lang\abslang.abs:1044--1044
    put(this, C:set_val_internal(get(this),'costPerInterval',m_ABS_StdLib_funs:f_lookupDefault(Cog,C:get_val_internal(get(this), 'initconfig'),dataCostPerInterval, rationals:rdiv(0,1) ,[O,DC| Stack]))),
     %% abs\lang\abslang.abs:1045--1045
    put(this, C:set_val_internal(get(this),'startupDuration',m_ABS_StdLib_funs:f_lookupDefault(Cog,C:get_val_internal(get(this), 'initconfig'),dataStartupduration, rationals:rdiv(0,1) ,[O,DC| Stack]))),
     %% abs\lang\abslang.abs:1046--1046
    put(this, C:set_val_internal(get(this),'shutdownDuration',m_ABS_StdLib_funs:f_lookupDefault(Cog,C:get_val_internal(get(this), 'initconfig'),dataShutdownduration, rationals:rdiv(0,1) ,[O,DC| Stack]))),
     %% abs\lang\abslang.abs:1047--1047
    put(this, C:set_val_internal(get(this),'numberOfCores',m_ABS_StdLib_funs:f_lookupDefault(Cog,C:get_val_internal(get(this), 'initconfig'),dataCores, rationals:rdiv(1,1) ,[O,DC| Stack]))),
     %% abs\lang\abslang.abs:1049--1049
    put(this, C:set_val_internal(get(this),'cloudprovider',null)),
     %% abs\lang\abslang.abs:1051--1051
    put(this, C:set_val_internal(get(this), 'initialized',true)),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% abs\lang\abslang.abs:1053
 %% abs\lang\abslang.abs:1053
'm_load'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_rtype_0,V_periods_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'rtype' => V_rtype_0,
 'periods' => V_periods_0 }),
    try
         %% abs\lang\abslang.abs:1054--1054
        put(vars, (get(vars))#{'result' => 0}),
         %% abs\lang\abslang.abs:1055--1055
        case maps:get('rtype', get(vars)) of
            dataSpeed->
                 %% abs\lang\abslang.abs:1057--1057
                case (not cmp:eq(C:get_val_internal(get(this), 'cpu'),dataInfRat)) of
                    true ->  %% abs\lang\abslang.abs:1058--1058
                    put(vars, (get(vars))#{'result' := m_ABS_DC_funs:f_averageDivsN(Cog,C:get_val_internal(get(this), 'cpuhistory'),C:get_val_internal(get(this), 'cpuhistorytotal'),maps:get('periods', get(vars)),[O,DC| Stack])});
                    false ->                 ok
                end;
            dataBandwidth->
                 %% abs\lang\abslang.abs:1062--1062
                case (not cmp:eq(C:get_val_internal(get(this), 'bw'),dataInfRat)) of
                    true ->  %% abs\lang\abslang.abs:1063--1063
                    put(vars, (get(vars))#{'result' := m_ABS_DC_funs:f_averageDivsN(Cog,C:get_val_internal(get(this), 'bwhistory'),C:get_val_internal(get(this), 'bwhistorytotal'),maps:get('periods', get(vars)),[O,DC| Stack])});
                    false ->                 ok
                end;
            dataMemory->
                 %% abs\lang\abslang.abs:1067--1067
                case (not cmp:eq(C:get_val_internal(get(this), 'memory'),dataInfRat)) of
                    true ->  %% abs\lang\abslang.abs:1068--1068
                    put(vars, (get(vars))#{'result' := m_ABS_DC_funs:f_averageDivsN(Cog,C:get_val_internal(get(this), 'memoryhistory'),C:get_val_internal(get(this), 'memoryhistorytotal'),maps:get('periods', get(vars)),[O,DC| Stack])});
                    false ->                 ok
                end;
            _->
                 %% abs\lang\abslang.abs:1055--1071
                throw(dataPatternMatchFailException)
        end,
         %% abs\lang\abslang.abs:1072--1072
        maps:get('result', get(vars))
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method load and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1074
 %% abs\lang\abslang.abs:1074
'm_total'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_rtype_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'rtype' => V_rtype_0 }),
    try
         %% abs\lang\abslang.abs:1075--1075
        put(vars, (get(vars))#{'result' => dataInfRat}),
         %% abs\lang\abslang.abs:1076--1076
        case maps:get('rtype', get(vars)) of
            dataSpeed->
                 %% abs\lang\abslang.abs:1077--1077
                put(vars, (get(vars))#{'result' := C:get_val_internal(get(this), 'cpu')});
            dataBandwidth->
                 %% abs\lang\abslang.abs:1078--1078
                put(vars, (get(vars))#{'result' := C:get_val_internal(get(this), 'bw')});
            dataMemory->
                 %% abs\lang\abslang.abs:1079--1079
                put(vars, (get(vars))#{'result' := C:get_val_internal(get(this), 'memory')});
            _->
                 %% abs\lang\abslang.abs:1076--1080
                throw(dataPatternMatchFailException)
        end,
         %% abs\lang\abslang.abs:1081--1081
        maps:get('result', get(vars))
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method total and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1087
 %% abs\lang\abslang.abs:1087
'm_transfer'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_target_0,V_amount_0,V_rtype_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'target' => V_target_0,
 'amount' => V_amount_0,
 'rtype' => V_rtype_0 }),
    try
         %% abs\lang\abslang.abs:1088--1088
        put(vars, (get(vars))#{'amount' := (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_decrementResources'(Callee,maps:get('amount', get(vars)),maps:get('rtype', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_amount = maps:get('amount', get(vars)),
                V_rtype = maps:get('rtype', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_decrementResources'(Callee, V_amount, V_rtype,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = future:start(Callee,'m_decrementResources',[maps:get('amount', get(vars)),maps:get('rtype', get(vars)),[]],#task_info{method= <<"decrementResources"/utf8>>},Cog,[O,DC| Stack]),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% abs\lang\abslang.abs:1089--1089
        T_1 = future:start(maps:get('target', get(vars)),'m_incrementResources',[maps:get('amount', get(vars)),maps:get('rtype', get(vars)),[]],#task_info{method= <<"incrementResources"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,[O,DC| Stack]),
        T_1,
         %% abs\lang\abslang.abs:1090--1090
        maps:get('amount', get(vars))
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method transfer and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1093
 %% abs\lang\abslang.abs:1093
'm_decrementResources'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_amount_0,V_rtype_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'amount' => V_amount_0,
 'rtype' => V_rtype_0 }),
    try
         %% abs\lang\abslang.abs:1094--1094
        case maps:get('rtype', get(vars)) of
            dataSpeed->
                 %% abs\lang\abslang.abs:1095--1095
                case (not cmp:eq(C:get_val_internal(get(this), 'cpunext'),dataInfRat)) of
                    true ->  %% abs\lang\abslang.abs:1096--1096
                    put(vars, (get(vars))#{'amount' := m_ABS_StdLib_funs:f_min(Cog,maps:get('amount', get(vars)),m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'cpunext'),[O,DC| Stack]),[O,DC| Stack])}),
                     %% abs\lang\abslang.abs:1097--1097
                    put(this, C:set_val_internal(get(this), 'cpunext',{ dataFin,( rationals:sub(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'cpunext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            dataBandwidth->
                 %% abs\lang\abslang.abs:1099--1099
                case (not cmp:eq(C:get_val_internal(get(this), 'bwnext'),dataInfRat)) of
                    true ->  %% abs\lang\abslang.abs:1100--1100
                    put(vars, (get(vars))#{'amount' := m_ABS_StdLib_funs:f_min(Cog,maps:get('amount', get(vars)),m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'bwnext'),[O,DC| Stack]),[O,DC| Stack])}),
                     %% abs\lang\abslang.abs:1101--1101
                    put(this, C:set_val_internal(get(this), 'bwnext',{ dataFin,( rationals:sub(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'bwnext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            dataMemory->
                 %% abs\lang\abslang.abs:1103--1103
                case (not cmp:eq(C:get_val_internal(get(this), 'memorynext'),dataInfRat)) of
                    true ->  %% abs\lang\abslang.abs:1104--1104
                    put(vars, (get(vars))#{'amount' := m_ABS_StdLib_funs:f_min(Cog,maps:get('amount', get(vars)),m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'memorynext'),[O,DC| Stack]),[O,DC| Stack])}),
                     %% abs\lang\abslang.abs:1105--1105
                    put(this, C:set_val_internal(get(this), 'memorynext',{ dataFin,( rationals:sub(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'memorynext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            _->
                 %% abs\lang\abslang.abs:1094--1107
                throw(dataPatternMatchFailException)
        end,
         %% abs\lang\abslang.abs:1108--1108
        maps:get('amount', get(vars))
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method decrementResources and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1110
 %% abs\lang\abslang.abs:1110
'm_incrementResources'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_amount_0,V_rtype_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'amount' => V_amount_0,
 'rtype' => V_rtype_0 }),
    try
         %% abs\lang\abslang.abs:1111--1111
        case maps:get('rtype', get(vars)) of
            dataSpeed->
                 %% abs\lang\abslang.abs:1113--1113
                case (not cmp:eq(C:get_val_internal(get(this), 'cpunext'),dataInfRat)) of
                    true ->  %% abs\lang\abslang.abs:1114--1114
                    put(this, C:set_val_internal(get(this), 'cpunext',{ dataFin,( rationals:add(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'cpunext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            dataBandwidth->
                 %% abs\lang\abslang.abs:1117--1117
                case (not cmp:eq(C:get_val_internal(get(this), 'bwnext'),dataInfRat)) of
                    true ->  %% abs\lang\abslang.abs:1118--1118
                    put(this, C:set_val_internal(get(this), 'bwnext',{ dataFin,( rationals:add(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'bwnext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            dataMemory->
                 %% abs\lang\abslang.abs:1120--1120
                case (not cmp:eq(C:get_val_internal(get(this), 'memorynext'),dataInfRat)) of
                    true ->  %% abs\lang\abslang.abs:1121--1121
                    put(this, C:set_val_internal(get(this), 'memorynext',{ dataFin,( rationals:add(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'memorynext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            _->
                 %% abs\lang\abslang.abs:1111--1123
                throw(dataPatternMatchFailException)
        end,
         %% abs\lang\abslang.abs:1124--1124
        maps:get('amount', get(vars))
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method incrementResources and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1126
 %% abs\lang\abslang.abs:1126
'm_setProvider'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_provider_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'provider' => V_provider_0 }),
    try
         %% abs\lang\abslang.abs:1127--1127
        put(this, C:set_val_internal(get(this), 'cloudprovider',maps:get('provider', get(vars)))),
        dataUnit
        
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method setProvider and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1129
 %% abs\lang\abslang.abs:1129
'm_convertToDC'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1129--1129
        O
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method convertToDC and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1131
 %% abs\lang\abslang.abs:1131
'm_getProvider'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1131--1131
        C:get_val_internal(get(this), 'cloudprovider')
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method getProvider and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1132
 %% abs\lang\abslang.abs:1132
'm_acquire'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1133--1133
        put(vars, (get(vars))#{'result' => true}),
         %% abs\lang\abslang.abs:1134--1134
        case (not cmp:eq(C:get_val_internal(get(this), 'cloudprovider'),null)) of
            true ->  %% abs\lang\abslang.abs:1135--1135
            put(vars, (get(vars))#{'tmp884599555' => future:start(C:get_val_internal(get(this), 'cloudprovider'),'m_acquireInstance',[O,[]],#task_info{method= <<"acquireInstance"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,[O,DC| Stack])}),
             %% abs\lang\abslang.abs:1135--1135
            future:await(maps:get('tmp884599555', get(vars)), Cog, [O,DC| Stack]),
            ok,
             %% abs\lang\abslang.abs:1135--1135
            put(vars, (get(vars))#{'result' := future:get_blocking(maps:get('tmp884599555', get(vars)), Cog, [O,DC| Stack])});
            false ->         ok
        end,
         %% abs\lang\abslang.abs:1137--1137
        maps:get('result', get(vars))
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method acquire and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1139
 %% abs\lang\abslang.abs:1139
'm_release'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1140--1140
        put(vars, (get(vars))#{'result' => true}),
         %% abs\lang\abslang.abs:1141--1141
        case (not cmp:eq(C:get_val_internal(get(this), 'cloudprovider'),null)) of
            true ->  %% abs\lang\abslang.abs:1142--1142
            put(vars, (get(vars))#{'tmp1140697305' => future:start(C:get_val_internal(get(this), 'cloudprovider'),'m_releaseInstance',[O,[]],#task_info{method= <<"releaseInstance"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,[O,DC| Stack])}),
             %% abs\lang\abslang.abs:1142--1142
            future:await(maps:get('tmp1140697305', get(vars)), Cog, [O,DC| Stack]),
            ok,
             %% abs\lang\abslang.abs:1142--1142
            put(vars, (get(vars))#{'result' := future:get_blocking(maps:get('tmp1140697305', get(vars)), Cog, [O,DC| Stack])});
            false ->         ok
        end,
         %% abs\lang\abslang.abs:1144--1144
        maps:get('result', get(vars))
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method release and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1147
 %% abs\lang\abslang.abs:1147
'm_shutdown'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1148--1148
        case not (C:get_val_internal(get(this), 'is_shutdown')) of
            true ->  %% abs\lang\abslang.abs:1149--1149
            put(this, C:set_val_internal(get(this), 'is_shutdown',true)),
             %% abs\lang\abslang.abs:1150--1150
            put(this, C:set_val_internal(get(this), 'shutdownTime',{ dataJust,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack])})),
             %% abs\lang\abslang.abs:1151--1151
            case (not cmp:eq(C:get_val_internal(get(this), 'cloudprovider'),null)) of
                true ->  %% abs\lang\abslang.abs:1152--1152
                T_1 = future:start(C:get_val_internal(get(this), 'cloudprovider'),'m_internalShutdownInstance',[O,[]],#task_info{method= <<"internalShutdownInstance"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,[O,DC| Stack]),
                T_1;
                false ->             ok
            end;
            false ->         ok
        end,
         %% abs\lang\abslang.abs:1155--1155
        true
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method shutdown and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1158
 %% abs\lang\abslang.abs:1158
'm_getName'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1158--1158
        C:get_val_internal(get(this), 'description')
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method getName and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1159
 %% abs\lang\abslang.abs:1159
'm_getCreationTime'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1159--1159
        C:get_val_internal(get(this), 'creationTime')
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method getCreationTime and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1160
 %% abs\lang\abslang.abs:1160
'm_getStartupDuration'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1160--1160
        C:get_val_internal(get(this), 'startupDuration')
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method getStartupDuration and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1161
 %% abs\lang\abslang.abs:1161
'm_getShutdownDuration'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1161--1161
        C:get_val_internal(get(this), 'shutdownDuration')
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method getShutdownDuration and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1162
 %% abs\lang\abslang.abs:1162
'm_getPaymentInterval'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1162--1162
        C:get_val_internal(get(this), 'paymentInterval')
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method getPaymentInterval and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1163
 %% abs\lang\abslang.abs:1163
'm_getCostPerInterval'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1163--1163
        C:get_val_internal(get(this), 'costPerInterval')
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method getCostPerInterval and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1165
 %% abs\lang\abslang.abs:1165
'm_getAccumulatedCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1166--1166
        put(vars, (get(vars))#{'result' => 0}),
         %% abs\lang\abslang.abs:1167--1167
        case (cmp:gt(C:get_val_internal(get(this), 'costPerInterval'),0)) and (cmp:gt(C:get_val_internal(get(this), 'paymentInterval'),0)) of
            true ->  %% abs\lang\abslang.abs:1168--1168
            put(vars, (get(vars))#{'nIntervals' => builtin:truncate(Cog, rationals:rdiv(builtin:truncate(Cog,m_ABS_StdLib_funs:f_timeDifference(Cog,C:get_val_internal(get(this), 'creationTime'),m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack])),C:get_val_internal(get(this), 'paymentInterval')) )}),
             %% abs\lang\abslang.abs:1169--1169
            put(vars, (get(vars))#{'result' := ( rationals:mul(maps:get('nIntervals', get(vars)),C:get_val_internal(get(this), 'costPerInterval'))) });
            false ->         ok
        end,
         %% abs\lang\abslang.abs:1171--1171
        maps:get('result', get(vars))
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method getAccumulatedCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs\lang\abslang.abs:1174
 %% abs\lang\abslang.abs:1174
'm_getNumberOfCores'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs\lang\abslang.abs:1174--1174
        C:get_val_internal(get(this), 'numberOfCores')
    catch
        _:Exception ->
            io:format(standard_error, "Uncaught ~s in method getNumberOfCores and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [erlang:get_stacktrace()]),
            object:die(O, Exception), exit(Exception)
    end.
