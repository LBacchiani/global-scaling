-module(class_InvariantsDeployer_InvariantsDeployer).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"InvariantsDeployer">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_InvariantsDeployer_InvariantsDeployer,'cloudProvider'=null,'dbObj'=null,'ls_ls_HeaderAnalyser_LoadBalancerInterface'=null,'ls_HeaderAnalyser_LoadBalancerInterface'=null,'ls_ls_MessageReceiver_LoadBalancerInterface'=null,'ls_MessageReceiver_LoadBalancerInterface'=null,'ls_ls_AttachmentsManager_LoadBalancerInterface'=null,'ls_AttachmentsManager_LoadBalancerInterface'=null,'ls_ls_ImageRecognizer_LoadBalancerInterface'=null,'ls_ImageRecognizer_LoadBalancerInterface'=null,'ls_ls_MessageAnalyser_LoadBalancerInterface'=null,'ls_MessageAnalyser_LoadBalancerInterface'=null,'ls_ls_MessageParser_LoadBalancerInterface'=null,'ls_MessageParser_LoadBalancerInterface'=null,'ls_ls_VirusScanner_LoadBalancerInterface'=null,'ls_VirusScanner_LoadBalancerInterface'=null,'ls_ls_NSFWDetector_LoadBalancerInterface'=null,'ls_NSFWDetector_LoadBalancerInterface'=null,'ls_ls_SentimentAnalyser_LoadBalancerInterface'=null,'ls_SentimentAnalyser_LoadBalancerInterface'=null,'ls_ls_TextAnalyser_LoadBalancerInterface'=null,'ls_TextAnalyser_LoadBalancerInterface'=null,'ls_ls_ImageAnalyser_LoadBalancerInterface'=null,'ls_ImageAnalyser_LoadBalancerInterface'=null,'ls_ls_LinkAnalyser_LoadBalancerInterface'=null,'ls_LinkAnalyser_LoadBalancerInterface'=null,'ls_ls_DeploymentComponent'=null,'ls_DeploymentComponent'=null,'waiting_time'=null}).
'init_internal'()->
    #state{}.

 %% InvariantsDeployer.abs:24
'get_val_internal'(#state{'cloudProvider'=G},'cloudProvider')->
    object:register_read('cloudProvider'),
    G;
 %% InvariantsDeployer.abs:24
'get_val_internal'(#state{'dbObj'=G},'dbObj')->
    object:register_read('dbObj'),
    G;
 %% InvariantsDeployer.abs:26
'get_val_internal'(#state{'ls_ls_HeaderAnalyser_LoadBalancerInterface'=G},'ls_ls_HeaderAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ls_HeaderAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:27
'get_val_internal'(#state{'ls_HeaderAnalyser_LoadBalancerInterface'=G},'ls_HeaderAnalyser_LoadBalancerInterface')->
    object:register_read('ls_HeaderAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:28
'get_val_internal'(#state{'ls_ls_MessageReceiver_LoadBalancerInterface'=G},'ls_ls_MessageReceiver_LoadBalancerInterface')->
    object:register_read('ls_ls_MessageReceiver_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:29
'get_val_internal'(#state{'ls_MessageReceiver_LoadBalancerInterface'=G},'ls_MessageReceiver_LoadBalancerInterface')->
    object:register_read('ls_MessageReceiver_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:30
'get_val_internal'(#state{'ls_ls_AttachmentsManager_LoadBalancerInterface'=G},'ls_ls_AttachmentsManager_LoadBalancerInterface')->
    object:register_read('ls_ls_AttachmentsManager_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:31
'get_val_internal'(#state{'ls_AttachmentsManager_LoadBalancerInterface'=G},'ls_AttachmentsManager_LoadBalancerInterface')->
    object:register_read('ls_AttachmentsManager_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:32
'get_val_internal'(#state{'ls_ls_ImageRecognizer_LoadBalancerInterface'=G},'ls_ls_ImageRecognizer_LoadBalancerInterface')->
    object:register_read('ls_ls_ImageRecognizer_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:33
'get_val_internal'(#state{'ls_ImageRecognizer_LoadBalancerInterface'=G},'ls_ImageRecognizer_LoadBalancerInterface')->
    object:register_read('ls_ImageRecognizer_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:34
'get_val_internal'(#state{'ls_ls_MessageAnalyser_LoadBalancerInterface'=G},'ls_ls_MessageAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ls_MessageAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:35
'get_val_internal'(#state{'ls_MessageAnalyser_LoadBalancerInterface'=G},'ls_MessageAnalyser_LoadBalancerInterface')->
    object:register_read('ls_MessageAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:36
'get_val_internal'(#state{'ls_ls_MessageParser_LoadBalancerInterface'=G},'ls_ls_MessageParser_LoadBalancerInterface')->
    object:register_read('ls_ls_MessageParser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:37
'get_val_internal'(#state{'ls_MessageParser_LoadBalancerInterface'=G},'ls_MessageParser_LoadBalancerInterface')->
    object:register_read('ls_MessageParser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:38
'get_val_internal'(#state{'ls_ls_VirusScanner_LoadBalancerInterface'=G},'ls_ls_VirusScanner_LoadBalancerInterface')->
    object:register_read('ls_ls_VirusScanner_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:39
'get_val_internal'(#state{'ls_VirusScanner_LoadBalancerInterface'=G},'ls_VirusScanner_LoadBalancerInterface')->
    object:register_read('ls_VirusScanner_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:40
'get_val_internal'(#state{'ls_ls_NSFWDetector_LoadBalancerInterface'=G},'ls_ls_NSFWDetector_LoadBalancerInterface')->
    object:register_read('ls_ls_NSFWDetector_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:41
'get_val_internal'(#state{'ls_NSFWDetector_LoadBalancerInterface'=G},'ls_NSFWDetector_LoadBalancerInterface')->
    object:register_read('ls_NSFWDetector_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:42
'get_val_internal'(#state{'ls_ls_SentimentAnalyser_LoadBalancerInterface'=G},'ls_ls_SentimentAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ls_SentimentAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:43
'get_val_internal'(#state{'ls_SentimentAnalyser_LoadBalancerInterface'=G},'ls_SentimentAnalyser_LoadBalancerInterface')->
    object:register_read('ls_SentimentAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:44
'get_val_internal'(#state{'ls_ls_TextAnalyser_LoadBalancerInterface'=G},'ls_ls_TextAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ls_TextAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:45
'get_val_internal'(#state{'ls_TextAnalyser_LoadBalancerInterface'=G},'ls_TextAnalyser_LoadBalancerInterface')->
    object:register_read('ls_TextAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:46
'get_val_internal'(#state{'ls_ls_ImageAnalyser_LoadBalancerInterface'=G},'ls_ls_ImageAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ls_ImageAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:47
'get_val_internal'(#state{'ls_ImageAnalyser_LoadBalancerInterface'=G},'ls_ImageAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ImageAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:48
'get_val_internal'(#state{'ls_ls_LinkAnalyser_LoadBalancerInterface'=G},'ls_ls_LinkAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ls_LinkAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:49
'get_val_internal'(#state{'ls_LinkAnalyser_LoadBalancerInterface'=G},'ls_LinkAnalyser_LoadBalancerInterface')->
    object:register_read('ls_LinkAnalyser_LoadBalancerInterface'),
    G;
 %% InvariantsDeployer.abs:50
'get_val_internal'(#state{'ls_ls_DeploymentComponent'=G},'ls_ls_DeploymentComponent')->
    object:register_read('ls_ls_DeploymentComponent'),
    G;
 %% InvariantsDeployer.abs:51
'get_val_internal'(#state{'ls_DeploymentComponent'=G},'ls_DeploymentComponent')->
    object:register_read('ls_DeploymentComponent'),
    G;
 %% InvariantsDeployer.abs:52
'get_val_internal'(#state{'waiting_time'=G},'waiting_time')->
    object:register_read('waiting_time'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% InvariantsDeployer.abs:24
'set_val_internal'(S,'cloudProvider',V)->
    object:register_write('cloudProvider'),
    S#state{'cloudProvider'=V};
 %% InvariantsDeployer.abs:24
'set_val_internal'(S,'dbObj',V)->
    object:register_write('dbObj'),
    S#state{'dbObj'=V};
 %% InvariantsDeployer.abs:26
'set_val_internal'(S,'ls_ls_HeaderAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_HeaderAnalyser_LoadBalancerInterface'),
    S#state{'ls_ls_HeaderAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:27
'set_val_internal'(S,'ls_HeaderAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_HeaderAnalyser_LoadBalancerInterface'),
    S#state{'ls_HeaderAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:28
'set_val_internal'(S,'ls_ls_MessageReceiver_LoadBalancerInterface',V)->
    object:register_write('ls_ls_MessageReceiver_LoadBalancerInterface'),
    S#state{'ls_ls_MessageReceiver_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:29
'set_val_internal'(S,'ls_MessageReceiver_LoadBalancerInterface',V)->
    object:register_write('ls_MessageReceiver_LoadBalancerInterface'),
    S#state{'ls_MessageReceiver_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:30
'set_val_internal'(S,'ls_ls_AttachmentsManager_LoadBalancerInterface',V)->
    object:register_write('ls_ls_AttachmentsManager_LoadBalancerInterface'),
    S#state{'ls_ls_AttachmentsManager_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:31
'set_val_internal'(S,'ls_AttachmentsManager_LoadBalancerInterface',V)->
    object:register_write('ls_AttachmentsManager_LoadBalancerInterface'),
    S#state{'ls_AttachmentsManager_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:32
'set_val_internal'(S,'ls_ls_ImageRecognizer_LoadBalancerInterface',V)->
    object:register_write('ls_ls_ImageRecognizer_LoadBalancerInterface'),
    S#state{'ls_ls_ImageRecognizer_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:33
'set_val_internal'(S,'ls_ImageRecognizer_LoadBalancerInterface',V)->
    object:register_write('ls_ImageRecognizer_LoadBalancerInterface'),
    S#state{'ls_ImageRecognizer_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:34
'set_val_internal'(S,'ls_ls_MessageAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_MessageAnalyser_LoadBalancerInterface'),
    S#state{'ls_ls_MessageAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:35
'set_val_internal'(S,'ls_MessageAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_MessageAnalyser_LoadBalancerInterface'),
    S#state{'ls_MessageAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:36
'set_val_internal'(S,'ls_ls_MessageParser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_MessageParser_LoadBalancerInterface'),
    S#state{'ls_ls_MessageParser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:37
'set_val_internal'(S,'ls_MessageParser_LoadBalancerInterface',V)->
    object:register_write('ls_MessageParser_LoadBalancerInterface'),
    S#state{'ls_MessageParser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:38
'set_val_internal'(S,'ls_ls_VirusScanner_LoadBalancerInterface',V)->
    object:register_write('ls_ls_VirusScanner_LoadBalancerInterface'),
    S#state{'ls_ls_VirusScanner_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:39
'set_val_internal'(S,'ls_VirusScanner_LoadBalancerInterface',V)->
    object:register_write('ls_VirusScanner_LoadBalancerInterface'),
    S#state{'ls_VirusScanner_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:40
'set_val_internal'(S,'ls_ls_NSFWDetector_LoadBalancerInterface',V)->
    object:register_write('ls_ls_NSFWDetector_LoadBalancerInterface'),
    S#state{'ls_ls_NSFWDetector_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:41
'set_val_internal'(S,'ls_NSFWDetector_LoadBalancerInterface',V)->
    object:register_write('ls_NSFWDetector_LoadBalancerInterface'),
    S#state{'ls_NSFWDetector_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:42
'set_val_internal'(S,'ls_ls_SentimentAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_SentimentAnalyser_LoadBalancerInterface'),
    S#state{'ls_ls_SentimentAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:43
'set_val_internal'(S,'ls_SentimentAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_SentimentAnalyser_LoadBalancerInterface'),
    S#state{'ls_SentimentAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:44
'set_val_internal'(S,'ls_ls_TextAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_TextAnalyser_LoadBalancerInterface'),
    S#state{'ls_ls_TextAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:45
'set_val_internal'(S,'ls_TextAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_TextAnalyser_LoadBalancerInterface'),
    S#state{'ls_TextAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:46
'set_val_internal'(S,'ls_ls_ImageAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_ImageAnalyser_LoadBalancerInterface'),
    S#state{'ls_ls_ImageAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:47
'set_val_internal'(S,'ls_ImageAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ImageAnalyser_LoadBalancerInterface'),
    S#state{'ls_ImageAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:48
'set_val_internal'(S,'ls_ls_LinkAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_LinkAnalyser_LoadBalancerInterface'),
    S#state{'ls_ls_LinkAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:49
'set_val_internal'(S,'ls_LinkAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_LinkAnalyser_LoadBalancerInterface'),
    S#state{'ls_LinkAnalyser_LoadBalancerInterface'=V};
 %% InvariantsDeployer.abs:50
'set_val_internal'(S,'ls_ls_DeploymentComponent',V)->
    object:register_write('ls_ls_DeploymentComponent'),
    S#state{'ls_ls_DeploymentComponent'=V};
 %% InvariantsDeployer.abs:51
'set_val_internal'(S,'ls_DeploymentComponent',V)->
    object:register_write('ls_DeploymentComponent'),
    S#state{'ls_DeploymentComponent'=V};
 %% InvariantsDeployer.abs:52
'set_val_internal'(S,'waiting_time',V)->
    object:register_write('waiting_time'),
    S#state{'waiting_time'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'cloudProvider', S#state.'cloudProvider' }
        , { 'dbObj', S#state.'dbObj' }
        , { 'ls_ls_HeaderAnalyser_LoadBalancerInterface', S#state.'ls_ls_HeaderAnalyser_LoadBalancerInterface' }
        , { 'ls_HeaderAnalyser_LoadBalancerInterface', S#state.'ls_HeaderAnalyser_LoadBalancerInterface' }
        , { 'ls_ls_MessageReceiver_LoadBalancerInterface', S#state.'ls_ls_MessageReceiver_LoadBalancerInterface' }
        , { 'ls_MessageReceiver_LoadBalancerInterface', S#state.'ls_MessageReceiver_LoadBalancerInterface' }
        , { 'ls_ls_AttachmentsManager_LoadBalancerInterface', S#state.'ls_ls_AttachmentsManager_LoadBalancerInterface' }
        , { 'ls_AttachmentsManager_LoadBalancerInterface', S#state.'ls_AttachmentsManager_LoadBalancerInterface' }
        , { 'ls_ls_ImageRecognizer_LoadBalancerInterface', S#state.'ls_ls_ImageRecognizer_LoadBalancerInterface' }
        , { 'ls_ImageRecognizer_LoadBalancerInterface', S#state.'ls_ImageRecognizer_LoadBalancerInterface' }
        , { 'ls_ls_MessageAnalyser_LoadBalancerInterface', S#state.'ls_ls_MessageAnalyser_LoadBalancerInterface' }
        , { 'ls_MessageAnalyser_LoadBalancerInterface', S#state.'ls_MessageAnalyser_LoadBalancerInterface' }
        , { 'ls_ls_MessageParser_LoadBalancerInterface', S#state.'ls_ls_MessageParser_LoadBalancerInterface' }
        , { 'ls_MessageParser_LoadBalancerInterface', S#state.'ls_MessageParser_LoadBalancerInterface' }
        , { 'ls_ls_VirusScanner_LoadBalancerInterface', S#state.'ls_ls_VirusScanner_LoadBalancerInterface' }
        , { 'ls_VirusScanner_LoadBalancerInterface', S#state.'ls_VirusScanner_LoadBalancerInterface' }
        , { 'ls_ls_NSFWDetector_LoadBalancerInterface', S#state.'ls_ls_NSFWDetector_LoadBalancerInterface' }
        , { 'ls_NSFWDetector_LoadBalancerInterface', S#state.'ls_NSFWDetector_LoadBalancerInterface' }
        , { 'ls_ls_SentimentAnalyser_LoadBalancerInterface', S#state.'ls_ls_SentimentAnalyser_LoadBalancerInterface' }
        , { 'ls_SentimentAnalyser_LoadBalancerInterface', S#state.'ls_SentimentAnalyser_LoadBalancerInterface' }
        , { 'ls_ls_TextAnalyser_LoadBalancerInterface', S#state.'ls_ls_TextAnalyser_LoadBalancerInterface' }
        , { 'ls_TextAnalyser_LoadBalancerInterface', S#state.'ls_TextAnalyser_LoadBalancerInterface' }
        , { 'ls_ls_ImageAnalyser_LoadBalancerInterface', S#state.'ls_ls_ImageAnalyser_LoadBalancerInterface' }
        , { 'ls_ImageAnalyser_LoadBalancerInterface', S#state.'ls_ImageAnalyser_LoadBalancerInterface' }
        , { 'ls_ls_LinkAnalyser_LoadBalancerInterface', S#state.'ls_ls_LinkAnalyser_LoadBalancerInterface' }
        , { 'ls_LinkAnalyser_LoadBalancerInterface', S#state.'ls_LinkAnalyser_LoadBalancerInterface' }
        , { 'ls_ls_DeploymentComponent', S#state.'ls_ls_DeploymentComponent' }
        , { 'ls_DeploymentComponent', S#state.'ls_DeploymentComponent' }
        , { 'waiting_time', S#state.'waiting_time' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_cloudProvider,P_dbObj,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'cloudProvider',P_cloudProvider)),
    put(this, C:set_val_internal(get(this),'dbObj',P_dbObj)),
     %% InvariantsDeployer.abs:26--26
    put(this, C:set_val_internal(get(this),'ls_ls_HeaderAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:27--27
    put(this, C:set_val_internal(get(this),'ls_HeaderAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:28--28
    put(this, C:set_val_internal(get(this),'ls_ls_MessageReceiver_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:29--29
    put(this, C:set_val_internal(get(this),'ls_MessageReceiver_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:30--30
    put(this, C:set_val_internal(get(this),'ls_ls_AttachmentsManager_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:31--31
    put(this, C:set_val_internal(get(this),'ls_AttachmentsManager_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:32--32
    put(this, C:set_val_internal(get(this),'ls_ls_ImageRecognizer_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:33--33
    put(this, C:set_val_internal(get(this),'ls_ImageRecognizer_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:34--34
    put(this, C:set_val_internal(get(this),'ls_ls_MessageAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:35--35
    put(this, C:set_val_internal(get(this),'ls_MessageAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:36--36
    put(this, C:set_val_internal(get(this),'ls_ls_MessageParser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:37--37
    put(this, C:set_val_internal(get(this),'ls_MessageParser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:38--38
    put(this, C:set_val_internal(get(this),'ls_ls_VirusScanner_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:39--39
    put(this, C:set_val_internal(get(this),'ls_VirusScanner_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:40--40
    put(this, C:set_val_internal(get(this),'ls_ls_NSFWDetector_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:41--41
    put(this, C:set_val_internal(get(this),'ls_NSFWDetector_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:42--42
    put(this, C:set_val_internal(get(this),'ls_ls_SentimentAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:43--43
    put(this, C:set_val_internal(get(this),'ls_SentimentAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:44--44
    put(this, C:set_val_internal(get(this),'ls_ls_TextAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:45--45
    put(this, C:set_val_internal(get(this),'ls_TextAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:46--46
    put(this, C:set_val_internal(get(this),'ls_ls_ImageAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:47--47
    put(this, C:set_val_internal(get(this),'ls_ImageAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:48--48
    put(this, C:set_val_internal(get(this),'ls_ls_LinkAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:49--49
    put(this, C:set_val_internal(get(this),'ls_LinkAnalyser_LoadBalancerInterface',[])),
     %% InvariantsDeployer.abs:50--50
    put(this, C:set_val_internal(get(this),'ls_ls_DeploymentComponent',[])),
     %% InvariantsDeployer.abs:51--51
    put(this, C:set_val_internal(get(this),'ls_DeploymentComponent',[])),
     %% InvariantsDeployer.abs:52--52
    put(this, C:set_val_internal(get(this),'waiting_time',100)),
     %% InvariantsDeployer.abs:54--61
    T_1 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,237}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,750}, { dataPair,dataMemory,750}, { dataPair,dataCores,4}, { dataPair,dataSpeed,20}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,237}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,750}, { dataPair,dataMemory,750}, { dataPair,dataCores,4}, { dataPair,dataSpeed,20}] ,[O,DC| Stack])},
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_addInstanceDescription'(Callee, V_instanceDescription,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,237}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,750}, { dataPair,dataMemory,750}, { dataPair,dataCores,4}, { dataPair,dataSpeed,20}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog, true),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_1,
     %% InvariantsDeployer.abs:62--69
    T_2 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,119}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,500}, { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,119}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,500}, { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_addInstanceDescription'(Callee, V_instanceDescription,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,119}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,500}, { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog, true),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_2,
     %% InvariantsDeployer.abs:70--77
    T_3 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,476}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,1000}, { dataPair,dataMemory,1500}, { dataPair,dataCores,8}, { dataPair,dataSpeed,40}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,476}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,1000}, { dataPair,dataMemory,1500}, { dataPair,dataCores,8}, { dataPair,dataSpeed,40}] ,[O,DC| Stack])},
            State=get(this),
            Vars=get(vars),
            cog:object_state_changed(Cog, O, State),
            put(this,cog:get_object_state(Callee#object.cog, Callee)),
            put(task_info,(get(task_info))#task_info{this=Callee}),
            T=object:get_class_from_state(get(this)), % it's the callee state already
            Result=T:'m_addInstanceDescription'(Callee, V_instanceDescription,[O,DC,Vars,State| Stack]),
            cog:object_state_changed(Callee#object.cog, Callee, get(this)),
            put(task_info,(get(task_info))#task_info{this=O}),
            put(this, cog:get_object_state(Cog, O)),
            put(vars, Vars),
            Result;
        Callee ->
            %% remote call
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,476}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,1000}, { dataPair,dataMemory,1500}, { dataPair,dataCores,8}, { dataPair,dataSpeed,40}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog, true),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_3,
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% InvariantsDeployer.abs:80
 %% InvariantsDeployer.abs:80
'm_getHeaderAnalyser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:80--80
        C:get_val_internal(get(this), 'ls_HeaderAnalyser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getHeaderAnalyser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:81
 %% InvariantsDeployer.abs:81
'm_getMessageReceiver_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:81--81
        C:get_val_internal(get(this), 'ls_MessageReceiver_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getMessageReceiver_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:82
 %% InvariantsDeployer.abs:82
'm_getAttachmentsManager_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:82--82
        C:get_val_internal(get(this), 'ls_AttachmentsManager_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getAttachmentsManager_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:83
 %% InvariantsDeployer.abs:83
'm_getImageRecognizer_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:83--83
        C:get_val_internal(get(this), 'ls_ImageRecognizer_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getImageRecognizer_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:84
 %% InvariantsDeployer.abs:84
'm_getMessageAnalyser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:84--84
        C:get_val_internal(get(this), 'ls_MessageAnalyser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getMessageAnalyser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:85
 %% InvariantsDeployer.abs:85
'm_getMessageParser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:85--85
        C:get_val_internal(get(this), 'ls_MessageParser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getMessageParser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:86
 %% InvariantsDeployer.abs:86
'm_getVirusScanner_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:86--86
        C:get_val_internal(get(this), 'ls_VirusScanner_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getVirusScanner_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:87
 %% InvariantsDeployer.abs:87
'm_getNSFWDetector_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:87--87
        C:get_val_internal(get(this), 'ls_NSFWDetector_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getNSFWDetector_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:88
 %% InvariantsDeployer.abs:88
'm_getSentimentAnalyser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:88--88
        C:get_val_internal(get(this), 'ls_SentimentAnalyser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getSentimentAnalyser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:89
 %% InvariantsDeployer.abs:89
'm_getTextAnalyser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:89--89
        C:get_val_internal(get(this), 'ls_TextAnalyser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getTextAnalyser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:90
 %% InvariantsDeployer.abs:90
'm_getImageAnalyser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:90--90
        C:get_val_internal(get(this), 'ls_ImageAnalyser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getImageAnalyser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:91
 %% InvariantsDeployer.abs:91
'm_getLinkAnalyser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:91--91
        C:get_val_internal(get(this), 'ls_LinkAnalyser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getLinkAnalyser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:92
 %% InvariantsDeployer.abs:92
'm_getDeploymentComponent'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:92--92
        C:get_val_internal(get(this), 'ls_DeploymentComponent')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getDeploymentComponent and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:94
 %% InvariantsDeployer.abs:94
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:95--95
        put(this, C:set_val_internal(get(this), 'ls_ls_HeaderAnalyser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_HeaderAnalyser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_HeaderAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:96--96
        put(this, C:set_val_internal(get(this), 'ls_HeaderAnalyser_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:97--97
        put(this, C:set_val_internal(get(this), 'ls_ls_MessageReceiver_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_MessageReceiver_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_MessageReceiver_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:98--98
        put(this, C:set_val_internal(get(this), 'ls_MessageReceiver_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:99--99
        put(this, C:set_val_internal(get(this), 'ls_ls_AttachmentsManager_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_AttachmentsManager_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_AttachmentsManager_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:100--100
        put(this, C:set_val_internal(get(this), 'ls_AttachmentsManager_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:101--101
        put(this, C:set_val_internal(get(this), 'ls_ls_ImageRecognizer_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_ImageRecognizer_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_ImageRecognizer_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:102--102
        put(this, C:set_val_internal(get(this), 'ls_ImageRecognizer_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:103--103
        put(this, C:set_val_internal(get(this), 'ls_ls_MessageAnalyser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_MessageAnalyser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_MessageAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:104--104
        put(this, C:set_val_internal(get(this), 'ls_MessageAnalyser_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:105--105
        put(this, C:set_val_internal(get(this), 'ls_ls_MessageParser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_MessageParser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_MessageParser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:106--106
        put(this, C:set_val_internal(get(this), 'ls_MessageParser_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:107--107
        put(this, C:set_val_internal(get(this), 'ls_ls_VirusScanner_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_VirusScanner_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_VirusScanner_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:108--108
        put(this, C:set_val_internal(get(this), 'ls_VirusScanner_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:109--109
        put(this, C:set_val_internal(get(this), 'ls_ls_NSFWDetector_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_NSFWDetector_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_NSFWDetector_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:110--110
        put(this, C:set_val_internal(get(this), 'ls_NSFWDetector_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:111--111
        put(this, C:set_val_internal(get(this), 'ls_ls_SentimentAnalyser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_SentimentAnalyser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_SentimentAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:112--112
        put(this, C:set_val_internal(get(this), 'ls_SentimentAnalyser_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:113--113
        put(this, C:set_val_internal(get(this), 'ls_ls_TextAnalyser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_TextAnalyser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_TextAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:114--114
        put(this, C:set_val_internal(get(this), 'ls_TextAnalyser_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:115--115
        put(this, C:set_val_internal(get(this), 'ls_ls_ImageAnalyser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_ImageAnalyser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_ImageAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:116--116
        put(this, C:set_val_internal(get(this), 'ls_ImageAnalyser_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:117--117
        put(this, C:set_val_internal(get(this), 'ls_ls_LinkAnalyser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_LinkAnalyser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_LinkAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:118--118
        put(this, C:set_val_internal(get(this), 'ls_LinkAnalyser_LoadBalancerInterface',[])),
         %% InvariantsDeployer.abs:119--119
        put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',[C:get_val_internal(get(this), 'ls_DeploymentComponent') | C:get_val_internal(get(this), 'ls_ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:120--120
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[])),
         %% InvariantsDeployer.abs:121--121
        T_1 = (fun() -> case O of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_deploy_aux'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_deploy_aux'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_deploy_aux',[[]],#task_info{method= <<"deploy_aux"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:124
 %% InvariantsDeployer.abs:124
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:125--125
        case (not cmp:eq(C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[])) of
            true ->  %% InvariantsDeployer.abs:126--126
            T_1 = (fun() -> case O of
                null -> throw(dataNullPointerException);
                Callee=#object{oid=Oid,cog=Cog} ->
                    %% self-call
                    Vars=get(vars),
                    Result=C:'m_undeploy_aux'(Callee,[O,DC,Vars| Stack]),
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
                    Result=T:'m_undeploy_aux'(Callee,[O,DC,Vars,State| Stack]),
                    cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                    put(task_info,(get(task_info))#task_info{this=O}),
                    put(this, cog:get_object_state(Cog, O)),
                    put(vars, Vars),
                    Result;
                Callee ->
                    %% remote call
                    TempFuture = cog:create_task(Callee,'m_undeploy_aux',[[]],#task_info{method= <<"undeploy_aux"/utf8>>},Cog, true),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_1,
             %% InvariantsDeployer.abs:127--127
            put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:128--128
            put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:129--129
            put(this, C:set_val_internal(get(this), 'ls_HeaderAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_HeaderAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:130--130
            put(this, C:set_val_internal(get(this), 'ls_MessageReceiver_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_MessageReceiver_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:131--131
            put(this, C:set_val_internal(get(this), 'ls_AttachmentsManager_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_AttachmentsManager_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:132--132
            put(this, C:set_val_internal(get(this), 'ls_ImageRecognizer_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_ImageRecognizer_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:133--133
            put(this, C:set_val_internal(get(this), 'ls_MessageAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_MessageAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:134--134
            put(this, C:set_val_internal(get(this), 'ls_MessageParser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_MessageParser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:135--135
            put(this, C:set_val_internal(get(this), 'ls_VirusScanner_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_VirusScanner_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:136--136
            put(this, C:set_val_internal(get(this), 'ls_NSFWDetector_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_NSFWDetector_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:137--137
            put(this, C:set_val_internal(get(this), 'ls_SentimentAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_SentimentAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:138--138
            put(this, C:set_val_internal(get(this), 'ls_TextAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_TextAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:139--139
            put(this, C:set_val_internal(get(this), 'ls_ImageAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_ImageAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:140--140
            put(this, C:set_val_internal(get(this), 'ls_LinkAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_LinkAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:141--141
            put(this, C:set_val_internal(get(this), 'ls_ls_HeaderAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_HeaderAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:142--142
            put(this, C:set_val_internal(get(this), 'ls_ls_MessageReceiver_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_MessageReceiver_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:143--143
            put(this, C:set_val_internal(get(this), 'ls_ls_AttachmentsManager_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_AttachmentsManager_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:144--144
            put(this, C:set_val_internal(get(this), 'ls_ls_ImageRecognizer_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_ImageRecognizer_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:145--145
            put(this, C:set_val_internal(get(this), 'ls_ls_MessageAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_MessageAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:146--146
            put(this, C:set_val_internal(get(this), 'ls_ls_MessageParser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_MessageParser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:147--147
            put(this, C:set_val_internal(get(this), 'ls_ls_VirusScanner_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_VirusScanner_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:148--148
            put(this, C:set_val_internal(get(this), 'ls_ls_NSFWDetector_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_NSFWDetector_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:149--149
            put(this, C:set_val_internal(get(this), 'ls_ls_SentimentAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_SentimentAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:150--150
            put(this, C:set_val_internal(get(this), 'ls_ls_TextAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_TextAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:151--151
            put(this, C:set_val_internal(get(this), 'ls_ls_ImageAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_ImageAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% InvariantsDeployer.abs:152--152
            put(this, C:set_val_internal(get(this), 'ls_ls_LinkAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_LinkAnalyser_LoadBalancerInterface'),[O,DC| Stack])));
            false ->         ok
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:157
 %% InvariantsDeployer.abs:157
'm_deploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:158--158
        put(vars, (get(vars))#{'speedPatchMap' => m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack])}),
         %% InvariantsDeployer.abs:159--159
        put(vars, (get(vars))#{'c4_large_11' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:160--160
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_11', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:161--161
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_11', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:162--162
        put(vars, (get(vars))#{'c4_large_10' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:163--163
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_10', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:164--164
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_10', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:165--165
        put(vars, (get(vars))#{'c4_large_1' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:166--166
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_1', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:167--167
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_1', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:168--168
        put(vars, (get(vars))#{'c4_large_0' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:169--169
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_0', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:170--170
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:171--171
        put(vars, (get(vars))#{'c4_large_3' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:172--172
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_3', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:173--173
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_3', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:174--174
        put(vars, (get(vars))#{'c4_large_2' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:175--175
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_2', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:176--176
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_2', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:177--177
        put(vars, (get(vars))#{'c4_large_5' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:178--178
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_5', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:179--179
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_5', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:180--180
        put(vars, (get(vars))#{'c4_large_4' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:181--181
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_4', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:182--182
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_4', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:183--183
        put(vars, (get(vars))#{'c4_large_7' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:184--184
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_7', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:185--185
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_7', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:186--186
        put(vars, (get(vars))#{'c4_large_6' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:187--187
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_6', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:188--188
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_6', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:189--189
        put(vars, (get(vars))#{'c4_large_9' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:190--190
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_9', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:191--191
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_9', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:192--192
        put(vars, (get(vars))#{'c4_large_8' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_large"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_large"/utf8>>,
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_launchInstanceNamed'(Callee, V_instancename,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_large"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% InvariantsDeployer.abs:193--193
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_large_8', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% InvariantsDeployer.abs:194--194
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_8', get(vars)),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:195--195
        put(vars, (get(vars))#{'odefault___ImageAnalyser_LoadBalancer_0_c4_large_4' => object:new(cog:start(Cog,maps:get('c4_large_4', get(vars))),class_EmailProcessingPipelineArchitecture_ImageAnalyser_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:196--196
        put(vars, (get(vars))#{'coreRequired_odefault___ImageAnalyser_LoadBalancer_0_c4_large_4' => 2}),
         %% InvariantsDeployer.abs:197--197
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_4', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_4', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___ImageAnalyser_LoadBalancer_0_c4_large_4', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:198--198
        put(this, C:set_val_internal(get(this), 'ls_ImageAnalyser_LoadBalancerInterface',[maps:get('odefault___ImageAnalyser_LoadBalancer_0_c4_large_4', get(vars)) | C:get_val_internal(get(this), 'ls_ImageAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:199--199
        put(vars, (get(vars))#{'odefault___MessageAnalyser_LoadBalancer_0_c4_large_10' => object:new(cog:start(Cog,maps:get('c4_large_10', get(vars))),class_EmailProcessingPipelineArchitecture_MessageAnalyser_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:200--200
        put(vars, (get(vars))#{'coreRequired_odefault___MessageAnalyser_LoadBalancer_0_c4_large_10' => 2}),
         %% InvariantsDeployer.abs:201--201
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_10', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_10', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___MessageAnalyser_LoadBalancer_0_c4_large_10', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:202--202
        put(this, C:set_val_internal(get(this), 'ls_MessageAnalyser_LoadBalancerInterface',[maps:get('odefault___MessageAnalyser_LoadBalancer_0_c4_large_10', get(vars)) | C:get_val_internal(get(this), 'ls_MessageAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:203--203
        put(vars, (get(vars))#{'odefault___AttachmentsManager_LoadBalancer_0_c4_large_8' => object:new(cog:start(Cog,maps:get('c4_large_8', get(vars))),class_EmailProcessingPipelineArchitecture_AttachmentsManager_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:204--204
        put(vars, (get(vars))#{'coreRequired_odefault___AttachmentsManager_LoadBalancer_0_c4_large_8' => 2}),
         %% InvariantsDeployer.abs:205--205
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_8', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_8', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___AttachmentsManager_LoadBalancer_0_c4_large_8', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:206--206
        put(this, C:set_val_internal(get(this), 'ls_AttachmentsManager_LoadBalancerInterface',[maps:get('odefault___AttachmentsManager_LoadBalancer_0_c4_large_8', get(vars)) | C:get_val_internal(get(this), 'ls_AttachmentsManager_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:207--207
        put(vars, (get(vars))#{'odefault___LinkAnalyser_LoadBalancer_0_c4_large_5' => object:new(cog:start(Cog,maps:get('c4_large_5', get(vars))),class_EmailProcessingPipelineArchitecture_LinkAnalyser_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:208--208
        put(vars, (get(vars))#{'coreRequired_odefault___LinkAnalyser_LoadBalancer_0_c4_large_5' => 2}),
         %% InvariantsDeployer.abs:209--209
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_5', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_5', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___LinkAnalyser_LoadBalancer_0_c4_large_5', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:210--210
        put(this, C:set_val_internal(get(this), 'ls_LinkAnalyser_LoadBalancerInterface',[maps:get('odefault___LinkAnalyser_LoadBalancer_0_c4_large_5', get(vars)) | C:get_val_internal(get(this), 'ls_LinkAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:211--211
        put(vars, (get(vars))#{'odefault___MessageReceiver_LoadBalancer_0_c4_large_3' => object:new(cog:start(Cog,maps:get('c4_large_3', get(vars))),class_EmailProcessingPipelineArchitecture_MessageReceiver_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:212--212
        put(vars, (get(vars))#{'coreRequired_odefault___MessageReceiver_LoadBalancer_0_c4_large_3' => 2}),
         %% InvariantsDeployer.abs:213--213
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_3', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_3', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___MessageReceiver_LoadBalancer_0_c4_large_3', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:214--214
        put(this, C:set_val_internal(get(this), 'ls_MessageReceiver_LoadBalancerInterface',[maps:get('odefault___MessageReceiver_LoadBalancer_0_c4_large_3', get(vars)) | C:get_val_internal(get(this), 'ls_MessageReceiver_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:215--215
        put(vars, (get(vars))#{'odefault___MessageParser_LoadBalancer_0_c4_large_9' => object:new(cog:start(Cog,maps:get('c4_large_9', get(vars))),class_EmailProcessingPipelineArchitecture_MessageParser_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:216--216
        put(vars, (get(vars))#{'coreRequired_odefault___MessageParser_LoadBalancer_0_c4_large_9' => 2}),
         %% InvariantsDeployer.abs:217--217
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_9', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_9', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___MessageParser_LoadBalancer_0_c4_large_9', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:218--218
        put(this, C:set_val_internal(get(this), 'ls_MessageParser_LoadBalancerInterface',[maps:get('odefault___MessageParser_LoadBalancer_0_c4_large_9', get(vars)) | C:get_val_internal(get(this), 'ls_MessageParser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:219--219
        put(vars, (get(vars))#{'odefault___NSFWDetector_LoadBalancer_0_c4_large_2' => object:new(cog:start(Cog,maps:get('c4_large_2', get(vars))),class_EmailProcessingPipelineArchitecture_NSFWDetector_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:220--220
        put(vars, (get(vars))#{'coreRequired_odefault___NSFWDetector_LoadBalancer_0_c4_large_2' => 2}),
         %% InvariantsDeployer.abs:221--221
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_2', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_2', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___NSFWDetector_LoadBalancer_0_c4_large_2', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:222--222
        put(this, C:set_val_internal(get(this), 'ls_NSFWDetector_LoadBalancerInterface',[maps:get('odefault___NSFWDetector_LoadBalancer_0_c4_large_2', get(vars)) | C:get_val_internal(get(this), 'ls_NSFWDetector_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:223--223
        put(vars, (get(vars))#{'odefault___HeaderAnalyser_LoadBalancer_0_c4_large_0' => object:new(cog:start(Cog,maps:get('c4_large_0', get(vars))),class_EmailProcessingPipelineArchitecture_HeaderAnalyser_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:224--224
        put(vars, (get(vars))#{'coreRequired_odefault___HeaderAnalyser_LoadBalancer_0_c4_large_0' => 2}),
         %% InvariantsDeployer.abs:225--225
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___HeaderAnalyser_LoadBalancer_0_c4_large_0', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:226--226
        put(this, C:set_val_internal(get(this), 'ls_HeaderAnalyser_LoadBalancerInterface',[maps:get('odefault___HeaderAnalyser_LoadBalancer_0_c4_large_0', get(vars)) | C:get_val_internal(get(this), 'ls_HeaderAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:227--227
        put(vars, (get(vars))#{'odefault___SentimentAnalyser_LoadBalancer_0_c4_large_7' => object:new(cog:start(Cog,maps:get('c4_large_7', get(vars))),class_EmailProcessingPipelineArchitecture_SentimentAnalyser_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:228--228
        put(vars, (get(vars))#{'coreRequired_odefault___SentimentAnalyser_LoadBalancer_0_c4_large_7' => 2}),
         %% InvariantsDeployer.abs:229--229
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_7', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_7', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___SentimentAnalyser_LoadBalancer_0_c4_large_7', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:230--230
        put(this, C:set_val_internal(get(this), 'ls_SentimentAnalyser_LoadBalancerInterface',[maps:get('odefault___SentimentAnalyser_LoadBalancer_0_c4_large_7', get(vars)) | C:get_val_internal(get(this), 'ls_SentimentAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:231--231
        put(vars, (get(vars))#{'odefault___VirusScanner_LoadBalancer_0_c4_large_11' => object:new(cog:start(Cog,maps:get('c4_large_11', get(vars))),class_EmailProcessingPipelineArchitecture_VirusScanner_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:232--232
        put(vars, (get(vars))#{'coreRequired_odefault___VirusScanner_LoadBalancer_0_c4_large_11' => 2}),
         %% InvariantsDeployer.abs:233--233
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_11', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_11', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___VirusScanner_LoadBalancer_0_c4_large_11', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:234--234
        put(this, C:set_val_internal(get(this), 'ls_VirusScanner_LoadBalancerInterface',[maps:get('odefault___VirusScanner_LoadBalancer_0_c4_large_11', get(vars)) | C:get_val_internal(get(this), 'ls_VirusScanner_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:235--235
        put(vars, (get(vars))#{'odefault___TextAnalyser_LoadBalancer_0_c4_large_1' => object:new(cog:start(Cog,maps:get('c4_large_1', get(vars))),class_EmailProcessingPipelineArchitecture_TextAnalyser_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:236--236
        put(vars, (get(vars))#{'coreRequired_odefault___TextAnalyser_LoadBalancer_0_c4_large_1' => 2}),
         %% InvariantsDeployer.abs:237--237
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_1', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_1', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___TextAnalyser_LoadBalancer_0_c4_large_1', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:238--238
        put(this, C:set_val_internal(get(this), 'ls_TextAnalyser_LoadBalancerInterface',[maps:get('odefault___TextAnalyser_LoadBalancer_0_c4_large_1', get(vars)) | C:get_val_internal(get(this), 'ls_TextAnalyser_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:239--239
        put(vars, (get(vars))#{'odefault___ImageRecognizer_LoadBalancer_0_c4_large_6' => object:new(cog:start(Cog,maps:get('c4_large_6', get(vars))),class_EmailProcessingPipelineArchitecture_ImageRecognizer_LoadBalancer,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:240--240
        put(vars, (get(vars))#{'coreRequired_odefault___ImageRecognizer_LoadBalancer_0_c4_large_6' => 2}),
         %% InvariantsDeployer.abs:241--241
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_6', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_large_6', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___ImageRecognizer_LoadBalancer_0_c4_large_6', get(vars)))) ,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:242--242
        put(this, C:set_val_internal(get(this), 'ls_ImageRecognizer_LoadBalancerInterface',[maps:get('odefault___ImageRecognizer_LoadBalancer_0_c4_large_6', get(vars)) | C:get_val_internal(get(this), 'ls_ImageRecognizer_LoadBalancerInterface')])),
         %% InvariantsDeployer.abs:243--243
        T_1 = cog:create_task(O,'m_patchSpeed',[maps:get('speedPatchMap', get(vars)),[]],#task_info{method= <<"patchSpeed"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
         %% InvariantsDeployer.abs:244--244
        cog:suspend_current_task_for_duration(Cog,C:get_val_internal(get(this), 'waiting_time'),C:get_val_internal(get(this), 'waiting_time'),[O,DC| Stack]),
        ok,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy_aux and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:247
 %% InvariantsDeployer.abs:247
'm_undeploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% InvariantsDeployer.abs:248--248
        put(vars, (get(vars))#{'odefault___ImageAnalyser_LoadBalancer_0_c4_large_4' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_ImageAnalyser_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:249--249
        put(vars, (get(vars))#{'odefault___MessageAnalyser_LoadBalancer_0_c4_large_10' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_MessageAnalyser_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:250--250
        put(vars, (get(vars))#{'odefault___AttachmentsManager_LoadBalancer_0_c4_large_8' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_AttachmentsManager_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:251--251
        put(vars, (get(vars))#{'odefault___LinkAnalyser_LoadBalancer_0_c4_large_5' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_LinkAnalyser_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:252--252
        put(vars, (get(vars))#{'odefault___MessageReceiver_LoadBalancer_0_c4_large_3' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_MessageReceiver_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:253--253
        put(vars, (get(vars))#{'odefault___MessageParser_LoadBalancer_0_c4_large_9' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_MessageParser_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:254--254
        put(vars, (get(vars))#{'odefault___NSFWDetector_LoadBalancer_0_c4_large_2' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_NSFWDetector_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:255--255
        put(vars, (get(vars))#{'odefault___HeaderAnalyser_LoadBalancer_0_c4_large_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_HeaderAnalyser_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:256--256
        put(vars, (get(vars))#{'odefault___SentimentAnalyser_LoadBalancer_0_c4_large_7' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_SentimentAnalyser_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:257--257
        put(vars, (get(vars))#{'odefault___VirusScanner_LoadBalancer_0_c4_large_11' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_VirusScanner_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:258--258
        put(vars, (get(vars))#{'odefault___TextAnalyser_LoadBalancer_0_c4_large_1' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_TextAnalyser_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:259--259
        put(vars, (get(vars))#{'odefault___ImageRecognizer_LoadBalancer_0_c4_large_6' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_ImageRecognizer_LoadBalancerInterface'),0,[O,DC| Stack])}),
         %% InvariantsDeployer.abs:260--260
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% InvariantsDeployer.abs:261--261
                T_1 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
                    null -> throw(dataNullPointerException);
                    Callee=#object{oid=Oid,cog=Cog} ->
                        %% self-call
                        Vars=get(vars),
                        Result=C:'m_shutdownInstance'(Callee,m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]),[O,DC,Vars| Stack]),
                        put(vars, Vars),
                        Result;
                    Callee=#object{oid=ObjRef,cog=Cog} ->
                        %% cog-local call
                        V_instance = m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]),
                        State=get(this),
                        Vars=get(vars),
                        cog:object_state_changed(Cog, O, State),
                        put(this,cog:get_object_state(Callee#object.cog, Callee)),
                        put(task_info,(get(task_info))#task_info{this=Callee}),
                        T=object:get_class_from_state(get(this)), % it's the callee state already
                        Result=T:'m_shutdownInstance'(Callee, V_instance,[O,DC,Vars,State| Stack]),
                        cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                        put(task_info,(get(task_info))#task_info{this=O}),
                        put(this, cog:get_object_state(Cog, O)),
                        put(vars, Vars),
                        Result;
                    Callee ->
                        %% remote call
                        TempFuture = cog:create_task(Callee,'m_shutdownInstance',[m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]),[]],#task_info{method= <<"shutdownInstance"/utf8>>},Cog, true),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_1,
                 %% InvariantsDeployer.abs:262--262
                put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]))),
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy_aux and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% InvariantsDeployer.abs:266
 %% InvariantsDeployer.abs:266
'm_patchSpeed'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_dcs_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'dcs' => V_dcs_0 }),
    try
         %% InvariantsDeployer.abs:267--280
        put(vars, (get(vars))#{'tmp1038416182' => m_ABS_StdLib_funs:f_entries(Cog,maps:get('dcs', get(vars)),[O,DC| Stack])}),
         %% InvariantsDeployer.abs:267--280
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1038416182', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% InvariantsDeployer.abs:267--280
                put(vars, (get(vars))#{'entry' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1038416182', get(vars)),[O,DC| Stack])}),
                 %% InvariantsDeployer.abs:267--280
                put(vars, (get(vars))#{'tmp1038416182' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1038416182', get(vars)),[O,DC| Stack])}),
                 %% InvariantsDeployer.abs:268--268
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_fst(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% InvariantsDeployer.abs:269--269
                put(vars, (get(vars))#{'coreUsed' => m_ABS_StdLib_funs:f_snd(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% InvariantsDeployer.abs:270--270
                put(vars, (get(vars))#{'tmp1453896095' => cog:create_task(maps:get('dc', get(vars)),'m_total',[dataSpeed,[]],#task_info{method= <<"total"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
                 %% InvariantsDeployer.abs:270--270
                future:await(maps:get('tmp1453896095', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% InvariantsDeployer.abs:270--270
                put(vars, (get(vars))#{'speed_aux' => future:get_blocking(maps:get('tmp1453896095', get(vars)), Cog, [O,DC| Stack])}),
                 %% InvariantsDeployer.abs:271--274
                put(vars, (get(vars))#{'total_speed' => begin
                    case maps:get('speed_aux', get(vars)) of
                        
                        {dataFin,V_x_0}->V_x_0;
                        _->-1
                    end
                end}),
                 %% InvariantsDeployer.abs:275--275
                case (not cmp:eq(maps:get('total_speed', get(vars)),-1)) of
                    true ->  %% InvariantsDeployer.abs:276--276
                    put(vars, (get(vars))#{'tmp1495746362' => cog:create_task(maps:get('dc', get(vars)),'m_getNumberOfCores',[[]],#task_info{method= <<"getNumberOfCores"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
                     %% InvariantsDeployer.abs:276--276
                    future:await(maps:get('tmp1495746362', get(vars)), Cog, [O,DC| Stack]),
                    ok,
                     %% InvariantsDeployer.abs:276--276
                    put(vars, (get(vars))#{'totalCore' => future:get_blocking(maps:get('tmp1495746362', get(vars)), Cog, [O,DC| Stack])}),
                     %% InvariantsDeployer.abs:277--277
                    put(vars, (get(vars))#{'speedPerCore' =>  rationals:rdiv(maps:get('total_speed', get(vars)),maps:get('totalCore', get(vars))) }),
                     %% InvariantsDeployer.abs:278--278
                    T_1 = cog:create_task(maps:get('dc', get(vars)),'m_decrementResources',[( rationals:sub(maps:get('total_speed', get(vars)),( rationals:mul(maps:get('speedPerCore', get(vars)),maps:get('coreUsed', get(vars)))) )) ,dataSpeed,[]],#task_info{method= <<"decrementResources"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
                    T_1;
                    false ->                 ok
                end,
            Loop([])  end end)
        ([]),
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method patchSpeed and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
