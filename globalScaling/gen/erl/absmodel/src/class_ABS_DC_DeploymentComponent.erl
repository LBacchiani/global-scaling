-module(class_ABS_DC_DeploymentComponent).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"DeploymentComponent">>, <<"DeploymentComponentForCloudProvider">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_ABS_DC_DeploymentComponent,'description'=null,'initconfig'=null,'cpuhistory'=null,'cpuhistorytotal'=null,'bwhistory'=null,'bwhistorytotal'=null,'memoryhistory'=null,'memoryhistorytotal'=null,'cpuconsumed'=null,'bwconsumed'=null,'memoryconsumed'=null,'creationTime'=null,'shutdownTime'=null,'initialized'=null,'is_shutdown'=null,'cpu'=null,'cpunext'=null,'bw'=null,'bwnext'=null,'memory'=null,'memorynext'=null,'paymentInterval'=null,'costPerInterval'=null,'startupDuration'=null,'shutdownDuration'=null,'numberOfCores'=null,'cloudprovider'=null}).
'init_internal'()->
    #state{}.

 %% abs/lang/abslang.abs:1042
'get_val_internal'(#state{'description'=G},'description')->
    object:register_read('description'),
    G;
 %% abs/lang/abslang.abs:1042
'get_val_internal'(#state{'initconfig'=G},'initconfig')->
    object:register_read('initconfig'),
    G;
 %% abs/lang/abslang.abs:1052
'get_val_internal'(#state{'cpuhistory'=G},'cpuhistory')->
    object:register_read('cpuhistory'),
    G;
 %% abs/lang/abslang.abs:1053
'get_val_internal'(#state{'cpuhistorytotal'=G},'cpuhistorytotal')->
    object:register_read('cpuhistorytotal'),
    G;
 %% abs/lang/abslang.abs:1054
'get_val_internal'(#state{'bwhistory'=G},'bwhistory')->
    object:register_read('bwhistory'),
    G;
 %% abs/lang/abslang.abs:1055
'get_val_internal'(#state{'bwhistorytotal'=G},'bwhistorytotal')->
    object:register_read('bwhistorytotal'),
    G;
 %% abs/lang/abslang.abs:1056
'get_val_internal'(#state{'memoryhistory'=G},'memoryhistory')->
    object:register_read('memoryhistory'),
    G;
 %% abs/lang/abslang.abs:1057
'get_val_internal'(#state{'memoryhistorytotal'=G},'memoryhistorytotal')->
    object:register_read('memoryhistorytotal'),
    G;
 %% abs/lang/abslang.abs:1063
'get_val_internal'(#state{'cpuconsumed'=G},'cpuconsumed')->
    object:register_read('cpuconsumed'),
    G;
 %% abs/lang/abslang.abs:1064
'get_val_internal'(#state{'bwconsumed'=G},'bwconsumed')->
    object:register_read('bwconsumed'),
    G;
 %% abs/lang/abslang.abs:1065
'get_val_internal'(#state{'memoryconsumed'=G},'memoryconsumed')->
    object:register_read('memoryconsumed'),
    G;
 %% abs/lang/abslang.abs:1069
'get_val_internal'(#state{'creationTime'=G},'creationTime')->
    object:register_read('creationTime'),
    G;
 %% abs/lang/abslang.abs:1070
'get_val_internal'(#state{'shutdownTime'=G},'shutdownTime')->
    object:register_read('shutdownTime'),
    G;
 %% abs/lang/abslang.abs:1074
'get_val_internal'(#state{'initialized'=G},'initialized')->
    object:register_read('initialized'),
    G;
 %% abs/lang/abslang.abs:1077
'get_val_internal'(#state{'is_shutdown'=G},'is_shutdown')->
    object:register_read('is_shutdown'),
    G;
 %% abs/lang/abslang.abs:1079
'get_val_internal'(#state{'cpu'=G},'cpu')->
    object:register_read('cpu'),
    G;
 %% abs/lang/abslang.abs:1081
'get_val_internal'(#state{'cpunext'=G},'cpunext')->
    object:register_read('cpunext'),
    G;
 %% abs/lang/abslang.abs:1082
'get_val_internal'(#state{'bw'=G},'bw')->
    object:register_read('bw'),
    G;
 %% abs/lang/abslang.abs:1084
'get_val_internal'(#state{'bwnext'=G},'bwnext')->
    object:register_read('bwnext'),
    G;
 %% abs/lang/abslang.abs:1085
'get_val_internal'(#state{'memory'=G},'memory')->
    object:register_read('memory'),
    G;
 %% abs/lang/abslang.abs:1087
'get_val_internal'(#state{'memorynext'=G},'memorynext')->
    object:register_read('memorynext'),
    G;
 %% abs/lang/abslang.abs:1088
'get_val_internal'(#state{'paymentInterval'=G},'paymentInterval')->
    object:register_read('paymentInterval'),
    G;
 %% abs/lang/abslang.abs:1091
'get_val_internal'(#state{'costPerInterval'=G},'costPerInterval')->
    object:register_read('costPerInterval'),
    G;
 %% abs/lang/abslang.abs:1092
'get_val_internal'(#state{'startupDuration'=G},'startupDuration')->
    object:register_read('startupDuration'),
    G;
 %% abs/lang/abslang.abs:1093
'get_val_internal'(#state{'shutdownDuration'=G},'shutdownDuration')->
    object:register_read('shutdownDuration'),
    G;
 %% abs/lang/abslang.abs:1094
'get_val_internal'(#state{'numberOfCores'=G},'numberOfCores')->
    object:register_read('numberOfCores'),
    G;
 %% abs/lang/abslang.abs:1096
'get_val_internal'(#state{'cloudprovider'=G},'cloudprovider')->
    object:register_read('cloudprovider'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% abs/lang/abslang.abs:1042
'set_val_internal'(S,'description',V)->
    object:register_write('description'),
    S#state{'description'=V};
 %% abs/lang/abslang.abs:1042
'set_val_internal'(S,'initconfig',V)->
    object:register_write('initconfig'),
    S#state{'initconfig'=V};
 %% abs/lang/abslang.abs:1052
'set_val_internal'(S,'cpuhistory',V)->
    object:register_write('cpuhistory'),
    S#state{'cpuhistory'=V};
 %% abs/lang/abslang.abs:1053
'set_val_internal'(S,'cpuhistorytotal',V)->
    object:register_write('cpuhistorytotal'),
    S#state{'cpuhistorytotal'=V};
 %% abs/lang/abslang.abs:1054
'set_val_internal'(S,'bwhistory',V)->
    object:register_write('bwhistory'),
    S#state{'bwhistory'=V};
 %% abs/lang/abslang.abs:1055
'set_val_internal'(S,'bwhistorytotal',V)->
    object:register_write('bwhistorytotal'),
    S#state{'bwhistorytotal'=V};
 %% abs/lang/abslang.abs:1056
'set_val_internal'(S,'memoryhistory',V)->
    object:register_write('memoryhistory'),
    S#state{'memoryhistory'=V};
 %% abs/lang/abslang.abs:1057
'set_val_internal'(S,'memoryhistorytotal',V)->
    object:register_write('memoryhistorytotal'),
    S#state{'memoryhistorytotal'=V};
 %% abs/lang/abslang.abs:1063
'set_val_internal'(S,'cpuconsumed',V)->
    object:register_write('cpuconsumed'),
    S#state{'cpuconsumed'=V};
 %% abs/lang/abslang.abs:1064
'set_val_internal'(S,'bwconsumed',V)->
    object:register_write('bwconsumed'),
    S#state{'bwconsumed'=V};
 %% abs/lang/abslang.abs:1065
'set_val_internal'(S,'memoryconsumed',V)->
    object:register_write('memoryconsumed'),
    S#state{'memoryconsumed'=V};
 %% abs/lang/abslang.abs:1069
'set_val_internal'(S,'creationTime',V)->
    object:register_write('creationTime'),
    S#state{'creationTime'=V};
 %% abs/lang/abslang.abs:1070
'set_val_internal'(S,'shutdownTime',V)->
    object:register_write('shutdownTime'),
    S#state{'shutdownTime'=V};
 %% abs/lang/abslang.abs:1074
'set_val_internal'(S,'initialized',V)->
    object:register_write('initialized'),
    S#state{'initialized'=V};
 %% abs/lang/abslang.abs:1077
'set_val_internal'(S,'is_shutdown',V)->
    object:register_write('is_shutdown'),
    S#state{'is_shutdown'=V};
 %% abs/lang/abslang.abs:1079
'set_val_internal'(S,'cpu',V)->
    object:register_write('cpu'),
    S#state{'cpu'=V};
 %% abs/lang/abslang.abs:1081
'set_val_internal'(S,'cpunext',V)->
    object:register_write('cpunext'),
    S#state{'cpunext'=V};
 %% abs/lang/abslang.abs:1082
'set_val_internal'(S,'bw',V)->
    object:register_write('bw'),
    S#state{'bw'=V};
 %% abs/lang/abslang.abs:1084
'set_val_internal'(S,'bwnext',V)->
    object:register_write('bwnext'),
    S#state{'bwnext'=V};
 %% abs/lang/abslang.abs:1085
'set_val_internal'(S,'memory',V)->
    object:register_write('memory'),
    S#state{'memory'=V};
 %% abs/lang/abslang.abs:1087
'set_val_internal'(S,'memorynext',V)->
    object:register_write('memorynext'),
    S#state{'memorynext'=V};
 %% abs/lang/abslang.abs:1088
'set_val_internal'(S,'paymentInterval',V)->
    object:register_write('paymentInterval'),
    S#state{'paymentInterval'=V};
 %% abs/lang/abslang.abs:1091
'set_val_internal'(S,'costPerInterval',V)->
    object:register_write('costPerInterval'),
    S#state{'costPerInterval'=V};
 %% abs/lang/abslang.abs:1092
'set_val_internal'(S,'startupDuration',V)->
    object:register_write('startupDuration'),
    S#state{'startupDuration'=V};
 %% abs/lang/abslang.abs:1093
'set_val_internal'(S,'shutdownDuration',V)->
    object:register_write('shutdownDuration'),
    S#state{'shutdownDuration'=V};
 %% abs/lang/abslang.abs:1094
'set_val_internal'(S,'numberOfCores',V)->
    object:register_write('numberOfCores'),
    S#state{'numberOfCores'=V};
 %% abs/lang/abslang.abs:1096
'set_val_internal'(S,'cloudprovider',V)->
    object:register_write('cloudprovider'),
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
     %% abs/lang/abslang.abs:1052--1052
    put(this, C:set_val_internal(get(this),'cpuhistory',[])),
     %% abs/lang/abslang.abs:1053--1053
    put(this, C:set_val_internal(get(this),'cpuhistorytotal',[])),
     %% abs/lang/abslang.abs:1054--1054
    put(this, C:set_val_internal(get(this),'bwhistory',[])),
     %% abs/lang/abslang.abs:1055--1055
    put(this, C:set_val_internal(get(this),'bwhistorytotal',[])),
     %% abs/lang/abslang.abs:1056--1056
    put(this, C:set_val_internal(get(this),'memoryhistory',[])),
     %% abs/lang/abslang.abs:1057--1057
    put(this, C:set_val_internal(get(this),'memoryhistorytotal',[])),
     %% abs/lang/abslang.abs:1063--1063
    put(this, C:set_val_internal(get(this),'cpuconsumed',0)),
     %% abs/lang/abslang.abs:1064--1064
    put(this, C:set_val_internal(get(this),'bwconsumed',0)),
     %% abs/lang/abslang.abs:1065--1065
    put(this, C:set_val_internal(get(this),'memoryconsumed',0)),
     %% abs/lang/abslang.abs:1069--1069
    put(this, C:set_val_internal(get(this),'creationTime',m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]))),
     %% abs/lang/abslang.abs:1070--1070
    put(this, C:set_val_internal(get(this),'shutdownTime',dataNothing)),
     %% abs/lang/abslang.abs:1074--1074
    put(this, C:set_val_internal(get(this),'initialized',false)),
     %% abs/lang/abslang.abs:1077--1077
    put(this, C:set_val_internal(get(this),'is_shutdown',false)),
     %% abs/lang/abslang.abs:1079--1080
    put(this, C:set_val_internal(get(this),'cpu',begin
        case m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'initconfig'),dataSpeed,[O,DC| Stack]) of
            
            dataNothing->dataInfRat;
            {dataJust,V_v_0}->{ dataFin,V_v_0};
            _ -> io:format("No match for FnApp(initconfig,Speed()) at abs/lang/abslang.abs:1079~n"), 
            exit(dataPatternMatchFailException)
        end
    end)),
     %% abs/lang/abslang.abs:1081--1081
    put(this, C:set_val_internal(get(this),'cpunext',C:get_val_internal(get(this), 'cpu'))),
     %% abs/lang/abslang.abs:1082--1083
    put(this, C:set_val_internal(get(this),'bw',begin
        case m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'initconfig'),dataBandwidth,[O,DC| Stack]) of
            
            dataNothing->dataInfRat;
            {dataJust,V_v_1}->{ dataFin,V_v_1};
            _ -> io:format("No match for FnApp(initconfig,Bandwidth()) at abs/lang/abslang.abs:1082~n"), 
            exit(dataPatternMatchFailException)
        end
    end)),
     %% abs/lang/abslang.abs:1084--1084
    put(this, C:set_val_internal(get(this),'bwnext',C:get_val_internal(get(this), 'bw'))),
     %% abs/lang/abslang.abs:1085--1086
    put(this, C:set_val_internal(get(this),'memory',begin
        case m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'initconfig'),dataMemory,[O,DC| Stack]) of
            
            dataNothing->dataInfRat;
            {dataJust,V_m_0}->{ dataFin,V_m_0};
            _ -> io:format("No match for FnApp(initconfig,Memory()) at abs/lang/abslang.abs:1085~n"), 
            exit(dataPatternMatchFailException)
        end
    end)),
     %% abs/lang/abslang.abs:1087--1087
    put(this, C:set_val_internal(get(this),'memorynext',C:get_val_internal(get(this), 'memory'))),
     %% abs/lang/abslang.abs:1088--1090
    put(this, C:set_val_internal(get(this),'paymentInterval',begin
        case m_ABS_StdLib_funs:f_lookup(Cog,C:get_val_internal(get(this), 'initconfig'),dataPaymentInterval,[O,DC| Stack]) of
            
            dataNothing->1;
            {dataJust,V_n_0}->builtin:truncate(Cog,V_n_0);
            _ -> io:format("No match for FnApp(initconfig,PaymentInterval()) at abs/lang/abslang.abs:1089~n"), 
            exit(dataPatternMatchFailException)
        end
    end)),
     %% abs/lang/abslang.abs:1091--1091
    put(this, C:set_val_internal(get(this),'costPerInterval',m_ABS_StdLib_funs:f_lookupDefault(Cog,C:get_val_internal(get(this), 'initconfig'),dataCostPerInterval, rationals:rdiv(0,1) ,[O,DC| Stack]))),
     %% abs/lang/abslang.abs:1092--1092
    put(this, C:set_val_internal(get(this),'startupDuration',m_ABS_StdLib_funs:f_lookupDefault(Cog,C:get_val_internal(get(this), 'initconfig'),dataStartupduration, rationals:rdiv(0,1) ,[O,DC| Stack]))),
     %% abs/lang/abslang.abs:1093--1093
    put(this, C:set_val_internal(get(this),'shutdownDuration',m_ABS_StdLib_funs:f_lookupDefault(Cog,C:get_val_internal(get(this), 'initconfig'),dataShutdownduration, rationals:rdiv(0,1) ,[O,DC| Stack]))),
     %% abs/lang/abslang.abs:1094--1094
    put(this, C:set_val_internal(get(this),'numberOfCores',m_ABS_StdLib_funs:f_lookupDefault(Cog,C:get_val_internal(get(this), 'initconfig'),dataCores, rationals:rdiv(1,1) ,[O,DC| Stack]))),
     %% abs/lang/abslang.abs:1096--1096
    put(this, C:set_val_internal(get(this),'cloudprovider',null)),
     %% abs/lang/abslang.abs:1098--1098
    put(this, C:set_val_internal(get(this), 'initialized',true)),
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% abs/lang/abslang.abs:1100
 %% abs/lang/abslang.abs:1100
'm_load'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_rtype_0,V_periods_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'rtype' => V_rtype_0,
 'periods' => V_periods_0 }),
    try
         %% abs/lang/abslang.abs:1101--1101
        put(vars, (get(vars))#{'result' => 0}),
         %% abs/lang/abslang.abs:1102--1102
        case maps:get('rtype', get(vars)) of
            dataSpeed->
                 %% abs/lang/abslang.abs:1104--1104
                case (not cmp:eq(C:get_val_internal(get(this), 'cpu'),dataInfRat)) of
                    true ->  %% abs/lang/abslang.abs:1105--1105
                    put(vars, (get(vars))#{'result' := m_ABS_DC_funs:f_averageDivsN(Cog,C:get_val_internal(get(this), 'cpuhistory'),C:get_val_internal(get(this), 'cpuhistorytotal'),maps:get('periods', get(vars)),[O,DC| Stack])});
                    false ->                 ok
                end;
            dataBandwidth->
                 %% abs/lang/abslang.abs:1109--1109
                case (not cmp:eq(C:get_val_internal(get(this), 'bw'),dataInfRat)) of
                    true ->  %% abs/lang/abslang.abs:1110--1110
                    put(vars, (get(vars))#{'result' := m_ABS_DC_funs:f_averageDivsN(Cog,C:get_val_internal(get(this), 'bwhistory'),C:get_val_internal(get(this), 'bwhistorytotal'),maps:get('periods', get(vars)),[O,DC| Stack])});
                    false ->                 ok
                end;
            dataMemory->
                 %% abs/lang/abslang.abs:1114--1114
                case (not cmp:eq(C:get_val_internal(get(this), 'memory'),dataInfRat)) of
                    true ->  %% abs/lang/abslang.abs:1115--1115
                    put(vars, (get(vars))#{'result' := m_ABS_DC_funs:f_averageDivsN(Cog,C:get_val_internal(get(this), 'memoryhistory'),C:get_val_internal(get(this), 'memoryhistorytotal'),maps:get('periods', get(vars)),[O,DC| Stack])});
                    false ->                 ok
                end;
            _->
                 %% abs/lang/abslang.abs:1102--1118
                throw(dataPatternMatchFailException)
        end,
         %% abs/lang/abslang.abs:1119--1119
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method load and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1121
 %% abs/lang/abslang.abs:1121
'm_total'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_rtype_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'rtype' => V_rtype_0 }),
    try
         %% abs/lang/abslang.abs:1122--1122
        put(vars, (get(vars))#{'result' => dataInfRat}),
         %% abs/lang/abslang.abs:1123--1123
        case maps:get('rtype', get(vars)) of
            dataSpeed->
                 %% abs/lang/abslang.abs:1124--1124
                put(vars, (get(vars))#{'result' := C:get_val_internal(get(this), 'cpu')});
            dataBandwidth->
                 %% abs/lang/abslang.abs:1125--1125
                put(vars, (get(vars))#{'result' := C:get_val_internal(get(this), 'bw')});
            dataMemory->
                 %% abs/lang/abslang.abs:1126--1126
                put(vars, (get(vars))#{'result' := C:get_val_internal(get(this), 'memory')});
            _->
                 %% abs/lang/abslang.abs:1123--1127
                throw(dataPatternMatchFailException)
        end,
         %% abs/lang/abslang.abs:1128--1128
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method total and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1134
 %% abs/lang/abslang.abs:1134
'm_transfer'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_target_0,V_amount_0,V_rtype_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'target' => V_target_0,
 'amount' => V_amount_0,
 'rtype' => V_rtype_0 }),
    try
         %% abs/lang/abslang.abs:1135--1135
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
                TempFuture = cog:create_task(Callee,'m_decrementResources',[maps:get('amount', get(vars)),maps:get('rtype', get(vars)),[]],#task_info{method= <<"decrementResources"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% abs/lang/abslang.abs:1136--1136
        T_1 = cog:create_task(maps:get('target', get(vars)),'m_incrementResources',[maps:get('amount', get(vars)),maps:get('rtype', get(vars)),[]],#task_info{method= <<"incrementResources"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
         %% abs/lang/abslang.abs:1137--1137
        maps:get('amount', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method transfer and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1140
 %% abs/lang/abslang.abs:1140
'm_decrementResources'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_amount_0,V_rtype_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'amount' => V_amount_0,
 'rtype' => V_rtype_0 }),
    try
         %% abs/lang/abslang.abs:1141--1141
        case maps:get('rtype', get(vars)) of
            dataSpeed->
                 %% abs/lang/abslang.abs:1142--1142
                case (not cmp:eq(C:get_val_internal(get(this), 'cpunext'),dataInfRat)) of
                    true ->  %% abs/lang/abslang.abs:1143--1143
                    put(vars, (get(vars))#{'amount' := builtin:min(Cog,maps:get('amount', get(vars)),m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'cpunext'),[O,DC| Stack]))}),
                     %% abs/lang/abslang.abs:1144--1144
                    put(this, C:set_val_internal(get(this), 'cpunext',{ dataFin,( rationals:sub(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'cpunext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            dataBandwidth->
                 %% abs/lang/abslang.abs:1146--1146
                case (not cmp:eq(C:get_val_internal(get(this), 'bwnext'),dataInfRat)) of
                    true ->  %% abs/lang/abslang.abs:1147--1147
                    put(vars, (get(vars))#{'amount' := builtin:min(Cog,maps:get('amount', get(vars)),m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'bwnext'),[O,DC| Stack]))}),
                     %% abs/lang/abslang.abs:1148--1148
                    put(this, C:set_val_internal(get(this), 'bwnext',{ dataFin,( rationals:sub(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'bwnext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            dataMemory->
                 %% abs/lang/abslang.abs:1150--1150
                case (not cmp:eq(C:get_val_internal(get(this), 'memorynext'),dataInfRat)) of
                    true ->  %% abs/lang/abslang.abs:1151--1151
                    put(vars, (get(vars))#{'amount' := builtin:min(Cog,maps:get('amount', get(vars)),m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'memorynext'),[O,DC| Stack]))}),
                     %% abs/lang/abslang.abs:1152--1152
                    put(this, C:set_val_internal(get(this), 'memorynext',{ dataFin,( rationals:sub(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'memorynext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            _->
                 %% abs/lang/abslang.abs:1141--1154
                throw(dataPatternMatchFailException)
        end,
         %% abs/lang/abslang.abs:1155--1155
        maps:get('amount', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method decrementResources and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1157
 %% abs/lang/abslang.abs:1157
'm_incrementResources'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_amount_0,V_rtype_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'amount' => V_amount_0,
 'rtype' => V_rtype_0 }),
    try
         %% abs/lang/abslang.abs:1158--1158
        case maps:get('rtype', get(vars)) of
            dataSpeed->
                 %% abs/lang/abslang.abs:1160--1160
                case (not cmp:eq(C:get_val_internal(get(this), 'cpunext'),dataInfRat)) of
                    true ->  %% abs/lang/abslang.abs:1161--1161
                    put(this, C:set_val_internal(get(this), 'cpunext',{ dataFin,( rationals:add(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'cpunext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            dataBandwidth->
                 %% abs/lang/abslang.abs:1164--1164
                case (not cmp:eq(C:get_val_internal(get(this), 'bwnext'),dataInfRat)) of
                    true ->  %% abs/lang/abslang.abs:1165--1165
                    put(this, C:set_val_internal(get(this), 'bwnext',{ dataFin,( rationals:add(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'bwnext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            dataMemory->
                 %% abs/lang/abslang.abs:1167--1167
                case (not cmp:eq(C:get_val_internal(get(this), 'memorynext'),dataInfRat)) of
                    true ->  %% abs/lang/abslang.abs:1168--1168
                    put(this, C:set_val_internal(get(this), 'memorynext',{ dataFin,( rationals:add(m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'memorynext'),[O,DC| Stack]),maps:get('amount', get(vars)))) }));
                    false ->                 ok
                end;
            _->
                 %% abs/lang/abslang.abs:1158--1170
                throw(dataPatternMatchFailException)
        end,
         %% abs/lang/abslang.abs:1171--1171
        maps:get('amount', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method incrementResources and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1173
 %% abs/lang/abslang.abs:1173
'm_setProvider'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_provider_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'provider' => V_provider_0 }),
    try
         %% abs/lang/abslang.abs:1174--1174
        put(this, C:set_val_internal(get(this), 'cloudprovider',maps:get('provider', get(vars)))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method setProvider and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1176
 %% abs/lang/abslang.abs:1176
'm_convertToDC'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1176--1176
        O
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method convertToDC and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1178
 %% abs/lang/abslang.abs:1178
'm_getProvider'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1178--1178
        C:get_val_internal(get(this), 'cloudprovider')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getProvider and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1179
 %% abs/lang/abslang.abs:1179
'm_acquire'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1180--1180
        put(vars, (get(vars))#{'result' => true}),
         %% abs/lang/abslang.abs:1181--1181
        case (not cmp:eq(C:get_val_internal(get(this), 'cloudprovider'),null)) of
            true ->  %% abs/lang/abslang.abs:1182--1182
            put(vars, (get(vars))#{'tmp1345285994' => cog:create_task(C:get_val_internal(get(this), 'cloudprovider'),'m_acquireInstance',[O,[]],#task_info{method= <<"acquireInstance"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
             %% abs/lang/abslang.abs:1182--1182
            future:await(maps:get('tmp1345285994', get(vars)), Cog, [O,DC| Stack]),
            ok,
             %% abs/lang/abslang.abs:1182--1182
            put(vars, (get(vars))#{'result' := future:get_blocking(maps:get('tmp1345285994', get(vars)), Cog, [O,DC| Stack])});
            false ->         ok
        end,
         %% abs/lang/abslang.abs:1184--1184
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method acquire and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1186
 %% abs/lang/abslang.abs:1186
'm_release'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1187--1187
        put(vars, (get(vars))#{'result' => true}),
         %% abs/lang/abslang.abs:1188--1188
        case (not cmp:eq(C:get_val_internal(get(this), 'cloudprovider'),null)) of
            true ->  %% abs/lang/abslang.abs:1189--1189
            put(vars, (get(vars))#{'tmp1688268389' => cog:create_task(C:get_val_internal(get(this), 'cloudprovider'),'m_releaseInstance',[O,[]],#task_info{method= <<"releaseInstance"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
             %% abs/lang/abslang.abs:1189--1189
            future:await(maps:get('tmp1688268389', get(vars)), Cog, [O,DC| Stack]),
            ok,
             %% abs/lang/abslang.abs:1189--1189
            put(vars, (get(vars))#{'result' := future:get_blocking(maps:get('tmp1688268389', get(vars)), Cog, [O,DC| Stack])});
            false ->         ok
        end,
         %% abs/lang/abslang.abs:1191--1191
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method release and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1194
 %% abs/lang/abslang.abs:1194
'm_shutdown'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1195--1195
        case not (C:get_val_internal(get(this), 'is_shutdown')) of
            true ->  %% abs/lang/abslang.abs:1196--1196
            put(this, C:set_val_internal(get(this), 'is_shutdown',true)),
             %% abs/lang/abslang.abs:1197--1197
            put(this, C:set_val_internal(get(this), 'shutdownTime',{ dataJust,m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack])})),
             %% abs/lang/abslang.abs:1198--1198
            case (not cmp:eq(C:get_val_internal(get(this), 'cloudprovider'),null)) of
                true ->  %% abs/lang/abslang.abs:1199--1199
                T_1 = cog:create_task(C:get_val_internal(get(this), 'cloudprovider'),'m_internalShutdownInstance',[O,[]],#task_info{method= <<"internalShutdownInstance"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
                T_1;
                false ->             ok
            end;
            false ->         ok
        end,
         %% abs/lang/abslang.abs:1202--1202
        true
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method shutdown and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1205
 %% abs/lang/abslang.abs:1205
'm_getName'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1205--1205
        C:get_val_internal(get(this), 'description')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getName and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1206
 %% abs/lang/abslang.abs:1206
'm_getCreationTime'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1206--1206
        C:get_val_internal(get(this), 'creationTime')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getCreationTime and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1207
 %% abs/lang/abslang.abs:1207
'm_getStartupDuration'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1207--1207
        C:get_val_internal(get(this), 'startupDuration')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getStartupDuration and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1208
 %% abs/lang/abslang.abs:1208
'm_getShutdownDuration'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1208--1208
        C:get_val_internal(get(this), 'shutdownDuration')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getShutdownDuration and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1209
 %% abs/lang/abslang.abs:1209
'm_getPaymentInterval'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1209--1209
        C:get_val_internal(get(this), 'paymentInterval')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getPaymentInterval and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1210
 %% abs/lang/abslang.abs:1210
'm_getCostPerInterval'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1210--1210
        C:get_val_internal(get(this), 'costPerInterval')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getCostPerInterval and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1212
 %% abs/lang/abslang.abs:1212
'm_getAccumulatedCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1213--1213
        put(vars, (get(vars))#{'result' => 0}),
         %% abs/lang/abslang.abs:1214--1214
        case (cmp:gt(C:get_val_internal(get(this), 'costPerInterval'),0)) and (cmp:gt(C:get_val_internal(get(this), 'paymentInterval'),0)) of
            true ->  %% abs/lang/abslang.abs:1215--1215
            put(vars, (get(vars))#{'nIntervals' => builtin:truncate(Cog, rationals:rdiv(builtin:truncate(Cog,m_ABS_StdLib_funs:f_timeDifference(Cog,C:get_val_internal(get(this), 'creationTime'),m_ABS_StdLib_funs:f_now(Cog,[O,DC| Stack]),[O,DC| Stack])),C:get_val_internal(get(this), 'paymentInterval')) )}),
             %% abs/lang/abslang.abs:1216--1216
            put(vars, (get(vars))#{'result' := ( rationals:mul(maps:get('nIntervals', get(vars)),C:get_val_internal(get(this), 'costPerInterval'))) });
            false ->         ok
        end,
         %% abs/lang/abslang.abs:1218--1218
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getAccumulatedCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1221
 %% abs/lang/abslang.abs:1221
'm_getNumberOfCores'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1221--1221
        C:get_val_internal(get(this), 'numberOfCores')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getNumberOfCores and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1233
 %% abs/lang/abslang.abs:1233
'm_consumeCost'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_amount_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'amount' => V_amount_0 }),
    try
         %% abs/lang/abslang.abs:1234--1234
        put(vars, (get(vars))#{'result' => 0}),
         %% abs/lang/abslang.abs:1235--1235
        put(vars, (get(vars))#{'amount' := builtin:max(Cog,maps:get('amount', get(vars)),0)}),
         %% abs/lang/abslang.abs:1236--1236
        case cmp:eq(C:get_val_internal(get(this), 'cpu'),dataInfRat) of
            true ->  %% abs/lang/abslang.abs:1237--1237
            put(this, C:set_val_internal(get(this), 'cpuconsumed',( rationals:add(C:get_val_internal(get(this), 'cpuconsumed'),maps:get('amount', get(vars)))) )),
             %% abs/lang/abslang.abs:1238--1238
            put(vars, (get(vars))#{'result' := maps:get('amount', get(vars))});
            false ->          %% abs/lang/abslang.abs:1240--1240
        put(vars, (get(vars))#{'cputotal' => m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'cpu'),[O,DC| Stack])}),
         %% abs/lang/abslang.abs:1241--1241
        put(vars, (get(vars))#{'to_consume' => builtin:min(Cog,( rationals:sub(maps:get('cputotal', get(vars)),C:get_val_internal(get(this), 'cpuconsumed'))) ,maps:get('amount', get(vars)))}),
         %% abs/lang/abslang.abs:1242--1242
        put(this, C:set_val_internal(get(this), 'cpuconsumed',( rationals:add(C:get_val_internal(get(this), 'cpuconsumed'),maps:get('to_consume', get(vars)))) )),
         %% abs/lang/abslang.abs:1243--1243
        put(vars, (get(vars))#{'result' := maps:get('to_consume', get(vars))})
        end,
         %% abs/lang/abslang.abs:1245--1245
        maps:get('result', get(vars))
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method consumeCost and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% abs/lang/abslang.abs:1253
 %% abs/lang/abslang.abs:1253
'm_advanceTimeBy1Tick'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% abs/lang/abslang.abs:1255--1255
        put(this, C:set_val_internal(get(this), 'cpuhistory',[C:get_val_internal(get(this), 'cpuconsumed') | C:get_val_internal(get(this), 'cpuhistory')])),
         %% abs/lang/abslang.abs:1256--1256
        put(this, C:set_val_internal(get(this), 'cpuhistorytotal',case (not cmp:eq(C:get_val_internal(get(this), 'cpu'),dataInfRat)) of
            true -> [m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'cpu'),[O,DC| Stack]) | C:get_val_internal(get(this), 'cpuhistorytotal')];
            false -> C:get_val_internal(get(this), 'cpuhistorytotal')
        end)),
         %% abs/lang/abslang.abs:1257--1257
        put(this, C:set_val_internal(get(this), 'bwhistory',[C:get_val_internal(get(this), 'bwconsumed') | C:get_val_internal(get(this), 'bwhistory')])),
         %% abs/lang/abslang.abs:1258--1258
        put(this, C:set_val_internal(get(this), 'bwhistorytotal',case (not cmp:eq(C:get_val_internal(get(this), 'bw'),dataInfRat)) of
            true -> [m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'bw'),[O,DC| Stack]) | C:get_val_internal(get(this), 'bwhistorytotal')];
            false -> C:get_val_internal(get(this), 'bwhistorytotal')
        end)),
         %% abs/lang/abslang.abs:1259--1259
        put(this, C:set_val_internal(get(this), 'memoryhistory',[C:get_val_internal(get(this), 'memoryconsumed') | C:get_val_internal(get(this), 'memoryhistory')])),
         %% abs/lang/abslang.abs:1260--1260
        put(this, C:set_val_internal(get(this), 'memoryhistorytotal',case (not cmp:eq(C:get_val_internal(get(this), 'memory'),dataInfRat)) of
            true -> [m_ABS_DC_funs:f_finvalue(Cog,C:get_val_internal(get(this), 'memory'),[O,DC| Stack]) | C:get_val_internal(get(this), 'memoryhistorytotal')];
            false -> C:get_val_internal(get(this), 'memoryhistorytotal')
        end)),
         %% abs/lang/abslang.abs:1263--1263
        put(this, C:set_val_internal(get(this), 'cpuconsumed',0)),
         %% abs/lang/abslang.abs:1264--1264
        put(this, C:set_val_internal(get(this), 'bwconsumed',0)),
         %% abs/lang/abslang.abs:1266--1266
        put(this, C:set_val_internal(get(this), 'cpu',C:get_val_internal(get(this), 'cpunext'))),
         %% abs/lang/abslang.abs:1267--1267
        put(this, C:set_val_internal(get(this), 'bw',C:get_val_internal(get(this), 'bwnext'))),
         %% abs/lang/abslang.abs:1268--1268
        put(this, C:set_val_internal(get(this), 'memory',C:get_val_internal(get(this), 'memorynext'))),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method advanceTimeBy1Tick and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
