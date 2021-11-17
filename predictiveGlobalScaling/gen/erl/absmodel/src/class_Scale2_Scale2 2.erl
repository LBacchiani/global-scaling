-module(class_Scale2_Scale2).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Object">>, <<"Scale2">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Scale2_Scale2,'cloudProvider'=null,'headerAnalyser_LoadBalancerObj'=null,'linkAnalyser_LoadBalancerObj'=null,'textAnalyser_LoadBalancerObj'=null,'sentimentAnalyser_LoadBalancerObj'=null,'virusScanner_LoadBalancerObj'=null,'attachmentsManager_LoadBalancerObj'=null,'imageAnalyser_LoadBalancerObj'=null,'nsfwDetector_LoadBalancerObj'=null,'imageRecognizer_LoadBalancerObj'=null,'messageAnalyser_LoadBalancerObj'=null,'dbObj'=null,'ls_ls_MessageReceiverInterface'=null,'ls_MessageReceiverInterface'=null,'ls_ls_TextAnalyserInterface'=null,'ls_TextAnalyserInterface'=null,'ls_ls_NSFWDetectorInterface'=null,'ls_NSFWDetectorInterface'=null,'ls_ls_ImageRecognizerInterface'=null,'ls_ImageRecognizerInterface'=null,'ls_ls_MessageParserInterface'=null,'ls_MessageParserInterface'=null,'ls_ls_AttachmentsManagerInterface'=null,'ls_AttachmentsManagerInterface'=null,'ls_ls_ImageAnalyserInterface'=null,'ls_ImageAnalyserInterface'=null,'ls_ls_VirusScannerInterface'=null,'ls_VirusScannerInterface'=null,'ls_ls_LinkAnalyserInterface'=null,'ls_LinkAnalyserInterface'=null,'ls_ls_HeaderAnalyserInterface'=null,'ls_HeaderAnalyserInterface'=null,'ls_ls_MessageAnalyserInterface'=null,'ls_MessageAnalyserInterface'=null,'ls_ls_SentimentAnalyserInterface'=null,'ls_SentimentAnalyserInterface'=null,'ls_ls_DeploymentComponent'=null,'ls_DeploymentComponent'=null,'waiting_time'=null}).
'init_internal'()->
    #state{}.

 %% Scale2.abs:24
'get_val_internal'(#state{'cloudProvider'=G},'cloudProvider')->
    object:register_read('cloudProvider'),
    G;
 %% Scale2.abs:24
'get_val_internal'(#state{'headerAnalyser_LoadBalancerObj'=G},'headerAnalyser_LoadBalancerObj')->
    object:register_read('headerAnalyser_LoadBalancerObj'),
    G;
 %% Scale2.abs:24
'get_val_internal'(#state{'linkAnalyser_LoadBalancerObj'=G},'linkAnalyser_LoadBalancerObj')->
    object:register_read('linkAnalyser_LoadBalancerObj'),
    G;
 %% Scale2.abs:24
'get_val_internal'(#state{'textAnalyser_LoadBalancerObj'=G},'textAnalyser_LoadBalancerObj')->
    object:register_read('textAnalyser_LoadBalancerObj'),
    G;
 %% Scale2.abs:24
'get_val_internal'(#state{'sentimentAnalyser_LoadBalancerObj'=G},'sentimentAnalyser_LoadBalancerObj')->
    object:register_read('sentimentAnalyser_LoadBalancerObj'),
    G;
 %% Scale2.abs:24
'get_val_internal'(#state{'virusScanner_LoadBalancerObj'=G},'virusScanner_LoadBalancerObj')->
    object:register_read('virusScanner_LoadBalancerObj'),
    G;
 %% Scale2.abs:24
'get_val_internal'(#state{'attachmentsManager_LoadBalancerObj'=G},'attachmentsManager_LoadBalancerObj')->
    object:register_read('attachmentsManager_LoadBalancerObj'),
    G;
 %% Scale2.abs:24
'get_val_internal'(#state{'imageAnalyser_LoadBalancerObj'=G},'imageAnalyser_LoadBalancerObj')->
    object:register_read('imageAnalyser_LoadBalancerObj'),
    G;
 %% Scale2.abs:24
'get_val_internal'(#state{'nsfwDetector_LoadBalancerObj'=G},'nsfwDetector_LoadBalancerObj')->
    object:register_read('nsfwDetector_LoadBalancerObj'),
    G;
 %% Scale2.abs:24
'get_val_internal'(#state{'imageRecognizer_LoadBalancerObj'=G},'imageRecognizer_LoadBalancerObj')->
    object:register_read('imageRecognizer_LoadBalancerObj'),
    G;
 %% Scale2.abs:24
'get_val_internal'(#state{'messageAnalyser_LoadBalancerObj'=G},'messageAnalyser_LoadBalancerObj')->
    object:register_read('messageAnalyser_LoadBalancerObj'),
    G;
 %% Scale2.abs:24
'get_val_internal'(#state{'dbObj'=G},'dbObj')->
    object:register_read('dbObj'),
    G;
 %% Scale2.abs:26
'get_val_internal'(#state{'ls_ls_MessageReceiverInterface'=G},'ls_ls_MessageReceiverInterface')->
    object:register_read('ls_ls_MessageReceiverInterface'),
    G;
 %% Scale2.abs:27
'get_val_internal'(#state{'ls_MessageReceiverInterface'=G},'ls_MessageReceiverInterface')->
    object:register_read('ls_MessageReceiverInterface'),
    G;
 %% Scale2.abs:28
'get_val_internal'(#state{'ls_ls_TextAnalyserInterface'=G},'ls_ls_TextAnalyserInterface')->
    object:register_read('ls_ls_TextAnalyserInterface'),
    G;
 %% Scale2.abs:29
'get_val_internal'(#state{'ls_TextAnalyserInterface'=G},'ls_TextAnalyserInterface')->
    object:register_read('ls_TextAnalyserInterface'),
    G;
 %% Scale2.abs:30
'get_val_internal'(#state{'ls_ls_NSFWDetectorInterface'=G},'ls_ls_NSFWDetectorInterface')->
    object:register_read('ls_ls_NSFWDetectorInterface'),
    G;
 %% Scale2.abs:31
'get_val_internal'(#state{'ls_NSFWDetectorInterface'=G},'ls_NSFWDetectorInterface')->
    object:register_read('ls_NSFWDetectorInterface'),
    G;
 %% Scale2.abs:32
'get_val_internal'(#state{'ls_ls_ImageRecognizerInterface'=G},'ls_ls_ImageRecognizerInterface')->
    object:register_read('ls_ls_ImageRecognizerInterface'),
    G;
 %% Scale2.abs:33
'get_val_internal'(#state{'ls_ImageRecognizerInterface'=G},'ls_ImageRecognizerInterface')->
    object:register_read('ls_ImageRecognizerInterface'),
    G;
 %% Scale2.abs:34
'get_val_internal'(#state{'ls_ls_MessageParserInterface'=G},'ls_ls_MessageParserInterface')->
    object:register_read('ls_ls_MessageParserInterface'),
    G;
 %% Scale2.abs:35
'get_val_internal'(#state{'ls_MessageParserInterface'=G},'ls_MessageParserInterface')->
    object:register_read('ls_MessageParserInterface'),
    G;
 %% Scale2.abs:36
'get_val_internal'(#state{'ls_ls_AttachmentsManagerInterface'=G},'ls_ls_AttachmentsManagerInterface')->
    object:register_read('ls_ls_AttachmentsManagerInterface'),
    G;
 %% Scale2.abs:37
'get_val_internal'(#state{'ls_AttachmentsManagerInterface'=G},'ls_AttachmentsManagerInterface')->
    object:register_read('ls_AttachmentsManagerInterface'),
    G;
 %% Scale2.abs:38
'get_val_internal'(#state{'ls_ls_ImageAnalyserInterface'=G},'ls_ls_ImageAnalyserInterface')->
    object:register_read('ls_ls_ImageAnalyserInterface'),
    G;
 %% Scale2.abs:39
'get_val_internal'(#state{'ls_ImageAnalyserInterface'=G},'ls_ImageAnalyserInterface')->
    object:register_read('ls_ImageAnalyserInterface'),
    G;
 %% Scale2.abs:40
'get_val_internal'(#state{'ls_ls_VirusScannerInterface'=G},'ls_ls_VirusScannerInterface')->
    object:register_read('ls_ls_VirusScannerInterface'),
    G;
 %% Scale2.abs:41
'get_val_internal'(#state{'ls_VirusScannerInterface'=G},'ls_VirusScannerInterface')->
    object:register_read('ls_VirusScannerInterface'),
    G;
 %% Scale2.abs:42
'get_val_internal'(#state{'ls_ls_LinkAnalyserInterface'=G},'ls_ls_LinkAnalyserInterface')->
    object:register_read('ls_ls_LinkAnalyserInterface'),
    G;
 %% Scale2.abs:43
'get_val_internal'(#state{'ls_LinkAnalyserInterface'=G},'ls_LinkAnalyserInterface')->
    object:register_read('ls_LinkAnalyserInterface'),
    G;
 %% Scale2.abs:44
'get_val_internal'(#state{'ls_ls_HeaderAnalyserInterface'=G},'ls_ls_HeaderAnalyserInterface')->
    object:register_read('ls_ls_HeaderAnalyserInterface'),
    G;
 %% Scale2.abs:45
'get_val_internal'(#state{'ls_HeaderAnalyserInterface'=G},'ls_HeaderAnalyserInterface')->
    object:register_read('ls_HeaderAnalyserInterface'),
    G;
 %% Scale2.abs:46
'get_val_internal'(#state{'ls_ls_MessageAnalyserInterface'=G},'ls_ls_MessageAnalyserInterface')->
    object:register_read('ls_ls_MessageAnalyserInterface'),
    G;
 %% Scale2.abs:47
'get_val_internal'(#state{'ls_MessageAnalyserInterface'=G},'ls_MessageAnalyserInterface')->
    object:register_read('ls_MessageAnalyserInterface'),
    G;
 %% Scale2.abs:48
'get_val_internal'(#state{'ls_ls_SentimentAnalyserInterface'=G},'ls_ls_SentimentAnalyserInterface')->
    object:register_read('ls_ls_SentimentAnalyserInterface'),
    G;
 %% Scale2.abs:49
'get_val_internal'(#state{'ls_SentimentAnalyserInterface'=G},'ls_SentimentAnalyserInterface')->
    object:register_read('ls_SentimentAnalyserInterface'),
    G;
 %% Scale2.abs:50
'get_val_internal'(#state{'ls_ls_DeploymentComponent'=G},'ls_ls_DeploymentComponent')->
    object:register_read('ls_ls_DeploymentComponent'),
    G;
 %% Scale2.abs:51
'get_val_internal'(#state{'ls_DeploymentComponent'=G},'ls_DeploymentComponent')->
    object:register_read('ls_DeploymentComponent'),
    G;
 %% Scale2.abs:52
'get_val_internal'(#state{'waiting_time'=G},'waiting_time')->
    object:register_read('waiting_time'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% Scale2.abs:24
'set_val_internal'(S,'cloudProvider',V)->
    object:register_write('cloudProvider'),
    S#state{'cloudProvider'=V};
 %% Scale2.abs:24
'set_val_internal'(S,'headerAnalyser_LoadBalancerObj',V)->
    object:register_write('headerAnalyser_LoadBalancerObj'),
    S#state{'headerAnalyser_LoadBalancerObj'=V};
 %% Scale2.abs:24
'set_val_internal'(S,'linkAnalyser_LoadBalancerObj',V)->
    object:register_write('linkAnalyser_LoadBalancerObj'),
    S#state{'linkAnalyser_LoadBalancerObj'=V};
 %% Scale2.abs:24
'set_val_internal'(S,'textAnalyser_LoadBalancerObj',V)->
    object:register_write('textAnalyser_LoadBalancerObj'),
    S#state{'textAnalyser_LoadBalancerObj'=V};
 %% Scale2.abs:24
'set_val_internal'(S,'sentimentAnalyser_LoadBalancerObj',V)->
    object:register_write('sentimentAnalyser_LoadBalancerObj'),
    S#state{'sentimentAnalyser_LoadBalancerObj'=V};
 %% Scale2.abs:24
'set_val_internal'(S,'virusScanner_LoadBalancerObj',V)->
    object:register_write('virusScanner_LoadBalancerObj'),
    S#state{'virusScanner_LoadBalancerObj'=V};
 %% Scale2.abs:24
'set_val_internal'(S,'attachmentsManager_LoadBalancerObj',V)->
    object:register_write('attachmentsManager_LoadBalancerObj'),
    S#state{'attachmentsManager_LoadBalancerObj'=V};
 %% Scale2.abs:24
'set_val_internal'(S,'imageAnalyser_LoadBalancerObj',V)->
    object:register_write('imageAnalyser_LoadBalancerObj'),
    S#state{'imageAnalyser_LoadBalancerObj'=V};
 %% Scale2.abs:24
'set_val_internal'(S,'nsfwDetector_LoadBalancerObj',V)->
    object:register_write('nsfwDetector_LoadBalancerObj'),
    S#state{'nsfwDetector_LoadBalancerObj'=V};
 %% Scale2.abs:24
'set_val_internal'(S,'imageRecognizer_LoadBalancerObj',V)->
    object:register_write('imageRecognizer_LoadBalancerObj'),
    S#state{'imageRecognizer_LoadBalancerObj'=V};
 %% Scale2.abs:24
'set_val_internal'(S,'messageAnalyser_LoadBalancerObj',V)->
    object:register_write('messageAnalyser_LoadBalancerObj'),
    S#state{'messageAnalyser_LoadBalancerObj'=V};
 %% Scale2.abs:24
'set_val_internal'(S,'dbObj',V)->
    object:register_write('dbObj'),
    S#state{'dbObj'=V};
 %% Scale2.abs:26
'set_val_internal'(S,'ls_ls_MessageReceiverInterface',V)->
    object:register_write('ls_ls_MessageReceiverInterface'),
    S#state{'ls_ls_MessageReceiverInterface'=V};
 %% Scale2.abs:27
'set_val_internal'(S,'ls_MessageReceiverInterface',V)->
    object:register_write('ls_MessageReceiverInterface'),
    S#state{'ls_MessageReceiverInterface'=V};
 %% Scale2.abs:28
'set_val_internal'(S,'ls_ls_TextAnalyserInterface',V)->
    object:register_write('ls_ls_TextAnalyserInterface'),
    S#state{'ls_ls_TextAnalyserInterface'=V};
 %% Scale2.abs:29
'set_val_internal'(S,'ls_TextAnalyserInterface',V)->
    object:register_write('ls_TextAnalyserInterface'),
    S#state{'ls_TextAnalyserInterface'=V};
 %% Scale2.abs:30
'set_val_internal'(S,'ls_ls_NSFWDetectorInterface',V)->
    object:register_write('ls_ls_NSFWDetectorInterface'),
    S#state{'ls_ls_NSFWDetectorInterface'=V};
 %% Scale2.abs:31
'set_val_internal'(S,'ls_NSFWDetectorInterface',V)->
    object:register_write('ls_NSFWDetectorInterface'),
    S#state{'ls_NSFWDetectorInterface'=V};
 %% Scale2.abs:32
'set_val_internal'(S,'ls_ls_ImageRecognizerInterface',V)->
    object:register_write('ls_ls_ImageRecognizerInterface'),
    S#state{'ls_ls_ImageRecognizerInterface'=V};
 %% Scale2.abs:33
'set_val_internal'(S,'ls_ImageRecognizerInterface',V)->
    object:register_write('ls_ImageRecognizerInterface'),
    S#state{'ls_ImageRecognizerInterface'=V};
 %% Scale2.abs:34
'set_val_internal'(S,'ls_ls_MessageParserInterface',V)->
    object:register_write('ls_ls_MessageParserInterface'),
    S#state{'ls_ls_MessageParserInterface'=V};
 %% Scale2.abs:35
'set_val_internal'(S,'ls_MessageParserInterface',V)->
    object:register_write('ls_MessageParserInterface'),
    S#state{'ls_MessageParserInterface'=V};
 %% Scale2.abs:36
'set_val_internal'(S,'ls_ls_AttachmentsManagerInterface',V)->
    object:register_write('ls_ls_AttachmentsManagerInterface'),
    S#state{'ls_ls_AttachmentsManagerInterface'=V};
 %% Scale2.abs:37
'set_val_internal'(S,'ls_AttachmentsManagerInterface',V)->
    object:register_write('ls_AttachmentsManagerInterface'),
    S#state{'ls_AttachmentsManagerInterface'=V};
 %% Scale2.abs:38
'set_val_internal'(S,'ls_ls_ImageAnalyserInterface',V)->
    object:register_write('ls_ls_ImageAnalyserInterface'),
    S#state{'ls_ls_ImageAnalyserInterface'=V};
 %% Scale2.abs:39
'set_val_internal'(S,'ls_ImageAnalyserInterface',V)->
    object:register_write('ls_ImageAnalyserInterface'),
    S#state{'ls_ImageAnalyserInterface'=V};
 %% Scale2.abs:40
'set_val_internal'(S,'ls_ls_VirusScannerInterface',V)->
    object:register_write('ls_ls_VirusScannerInterface'),
    S#state{'ls_ls_VirusScannerInterface'=V};
 %% Scale2.abs:41
'set_val_internal'(S,'ls_VirusScannerInterface',V)->
    object:register_write('ls_VirusScannerInterface'),
    S#state{'ls_VirusScannerInterface'=V};
 %% Scale2.abs:42
'set_val_internal'(S,'ls_ls_LinkAnalyserInterface',V)->
    object:register_write('ls_ls_LinkAnalyserInterface'),
    S#state{'ls_ls_LinkAnalyserInterface'=V};
 %% Scale2.abs:43
'set_val_internal'(S,'ls_LinkAnalyserInterface',V)->
    object:register_write('ls_LinkAnalyserInterface'),
    S#state{'ls_LinkAnalyserInterface'=V};
 %% Scale2.abs:44
'set_val_internal'(S,'ls_ls_HeaderAnalyserInterface',V)->
    object:register_write('ls_ls_HeaderAnalyserInterface'),
    S#state{'ls_ls_HeaderAnalyserInterface'=V};
 %% Scale2.abs:45
'set_val_internal'(S,'ls_HeaderAnalyserInterface',V)->
    object:register_write('ls_HeaderAnalyserInterface'),
    S#state{'ls_HeaderAnalyserInterface'=V};
 %% Scale2.abs:46
'set_val_internal'(S,'ls_ls_MessageAnalyserInterface',V)->
    object:register_write('ls_ls_MessageAnalyserInterface'),
    S#state{'ls_ls_MessageAnalyserInterface'=V};
 %% Scale2.abs:47
'set_val_internal'(S,'ls_MessageAnalyserInterface',V)->
    object:register_write('ls_MessageAnalyserInterface'),
    S#state{'ls_MessageAnalyserInterface'=V};
 %% Scale2.abs:48
'set_val_internal'(S,'ls_ls_SentimentAnalyserInterface',V)->
    object:register_write('ls_ls_SentimentAnalyserInterface'),
    S#state{'ls_ls_SentimentAnalyserInterface'=V};
 %% Scale2.abs:49
'set_val_internal'(S,'ls_SentimentAnalyserInterface',V)->
    object:register_write('ls_SentimentAnalyserInterface'),
    S#state{'ls_SentimentAnalyserInterface'=V};
 %% Scale2.abs:50
'set_val_internal'(S,'ls_ls_DeploymentComponent',V)->
    object:register_write('ls_ls_DeploymentComponent'),
    S#state{'ls_ls_DeploymentComponent'=V};
 %% Scale2.abs:51
'set_val_internal'(S,'ls_DeploymentComponent',V)->
    object:register_write('ls_DeploymentComponent'),
    S#state{'ls_DeploymentComponent'=V};
 %% Scale2.abs:52
'set_val_internal'(S,'waiting_time',V)->
    object:register_write('waiting_time'),
    S#state{'waiting_time'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'cloudProvider', S#state.'cloudProvider' }
        , { 'headerAnalyser_LoadBalancerObj', S#state.'headerAnalyser_LoadBalancerObj' }
        , { 'linkAnalyser_LoadBalancerObj', S#state.'linkAnalyser_LoadBalancerObj' }
        , { 'textAnalyser_LoadBalancerObj', S#state.'textAnalyser_LoadBalancerObj' }
        , { 'sentimentAnalyser_LoadBalancerObj', S#state.'sentimentAnalyser_LoadBalancerObj' }
        , { 'virusScanner_LoadBalancerObj', S#state.'virusScanner_LoadBalancerObj' }
        , { 'attachmentsManager_LoadBalancerObj', S#state.'attachmentsManager_LoadBalancerObj' }
        , { 'imageAnalyser_LoadBalancerObj', S#state.'imageAnalyser_LoadBalancerObj' }
        , { 'nsfwDetector_LoadBalancerObj', S#state.'nsfwDetector_LoadBalancerObj' }
        , { 'imageRecognizer_LoadBalancerObj', S#state.'imageRecognizer_LoadBalancerObj' }
        , { 'messageAnalyser_LoadBalancerObj', S#state.'messageAnalyser_LoadBalancerObj' }
        , { 'dbObj', S#state.'dbObj' }
        , { 'ls_ls_MessageReceiverInterface', S#state.'ls_ls_MessageReceiverInterface' }
        , { 'ls_MessageReceiverInterface', S#state.'ls_MessageReceiverInterface' }
        , { 'ls_ls_TextAnalyserInterface', S#state.'ls_ls_TextAnalyserInterface' }
        , { 'ls_TextAnalyserInterface', S#state.'ls_TextAnalyserInterface' }
        , { 'ls_ls_NSFWDetectorInterface', S#state.'ls_ls_NSFWDetectorInterface' }
        , { 'ls_NSFWDetectorInterface', S#state.'ls_NSFWDetectorInterface' }
        , { 'ls_ls_ImageRecognizerInterface', S#state.'ls_ls_ImageRecognizerInterface' }
        , { 'ls_ImageRecognizerInterface', S#state.'ls_ImageRecognizerInterface' }
        , { 'ls_ls_MessageParserInterface', S#state.'ls_ls_MessageParserInterface' }
        , { 'ls_MessageParserInterface', S#state.'ls_MessageParserInterface' }
        , { 'ls_ls_AttachmentsManagerInterface', S#state.'ls_ls_AttachmentsManagerInterface' }
        , { 'ls_AttachmentsManagerInterface', S#state.'ls_AttachmentsManagerInterface' }
        , { 'ls_ls_ImageAnalyserInterface', S#state.'ls_ls_ImageAnalyserInterface' }
        , { 'ls_ImageAnalyserInterface', S#state.'ls_ImageAnalyserInterface' }
        , { 'ls_ls_VirusScannerInterface', S#state.'ls_ls_VirusScannerInterface' }
        , { 'ls_VirusScannerInterface', S#state.'ls_VirusScannerInterface' }
        , { 'ls_ls_LinkAnalyserInterface', S#state.'ls_ls_LinkAnalyserInterface' }
        , { 'ls_LinkAnalyserInterface', S#state.'ls_LinkAnalyserInterface' }
        , { 'ls_ls_HeaderAnalyserInterface', S#state.'ls_ls_HeaderAnalyserInterface' }
        , { 'ls_HeaderAnalyserInterface', S#state.'ls_HeaderAnalyserInterface' }
        , { 'ls_ls_MessageAnalyserInterface', S#state.'ls_ls_MessageAnalyserInterface' }
        , { 'ls_MessageAnalyserInterface', S#state.'ls_MessageAnalyserInterface' }
        , { 'ls_ls_SentimentAnalyserInterface', S#state.'ls_ls_SentimentAnalyserInterface' }
        , { 'ls_SentimentAnalyserInterface', S#state.'ls_SentimentAnalyserInterface' }
        , { 'ls_ls_DeploymentComponent', S#state.'ls_ls_DeploymentComponent' }
        , { 'ls_DeploymentComponent', S#state.'ls_DeploymentComponent' }
        , { 'waiting_time', S#state.'waiting_time' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_cloudProvider,P_headerAnalyser_LoadBalancerObj,P_linkAnalyser_LoadBalancerObj,P_textAnalyser_LoadBalancerObj,P_sentimentAnalyser_LoadBalancerObj,P_virusScanner_LoadBalancerObj,P_attachmentsManager_LoadBalancerObj,P_imageAnalyser_LoadBalancerObj,P_nsfwDetector_LoadBalancerObj,P_imageRecognizer_LoadBalancerObj,P_messageAnalyser_LoadBalancerObj,P_dbObj,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'cloudProvider',P_cloudProvider)),
    put(this, C:set_val_internal(get(this),'headerAnalyser_LoadBalancerObj',P_headerAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'linkAnalyser_LoadBalancerObj',P_linkAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'textAnalyser_LoadBalancerObj',P_textAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'sentimentAnalyser_LoadBalancerObj',P_sentimentAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'virusScanner_LoadBalancerObj',P_virusScanner_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'attachmentsManager_LoadBalancerObj',P_attachmentsManager_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'imageAnalyser_LoadBalancerObj',P_imageAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'nsfwDetector_LoadBalancerObj',P_nsfwDetector_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'imageRecognizer_LoadBalancerObj',P_imageRecognizer_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'messageAnalyser_LoadBalancerObj',P_messageAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'dbObj',P_dbObj)),
     %% Scale2.abs:26--26
    put(this, C:set_val_internal(get(this),'ls_ls_MessageReceiverInterface',[])),
     %% Scale2.abs:27--27
    put(this, C:set_val_internal(get(this),'ls_MessageReceiverInterface',[])),
     %% Scale2.abs:28--28
    put(this, C:set_val_internal(get(this),'ls_ls_TextAnalyserInterface',[])),
     %% Scale2.abs:29--29
    put(this, C:set_val_internal(get(this),'ls_TextAnalyserInterface',[])),
     %% Scale2.abs:30--30
    put(this, C:set_val_internal(get(this),'ls_ls_NSFWDetectorInterface',[])),
     %% Scale2.abs:31--31
    put(this, C:set_val_internal(get(this),'ls_NSFWDetectorInterface',[])),
     %% Scale2.abs:32--32
    put(this, C:set_val_internal(get(this),'ls_ls_ImageRecognizerInterface',[])),
     %% Scale2.abs:33--33
    put(this, C:set_val_internal(get(this),'ls_ImageRecognizerInterface',[])),
     %% Scale2.abs:34--34
    put(this, C:set_val_internal(get(this),'ls_ls_MessageParserInterface',[])),
     %% Scale2.abs:35--35
    put(this, C:set_val_internal(get(this),'ls_MessageParserInterface',[])),
     %% Scale2.abs:36--36
    put(this, C:set_val_internal(get(this),'ls_ls_AttachmentsManagerInterface',[])),
     %% Scale2.abs:37--37
    put(this, C:set_val_internal(get(this),'ls_AttachmentsManagerInterface',[])),
     %% Scale2.abs:38--38
    put(this, C:set_val_internal(get(this),'ls_ls_ImageAnalyserInterface',[])),
     %% Scale2.abs:39--39
    put(this, C:set_val_internal(get(this),'ls_ImageAnalyserInterface',[])),
     %% Scale2.abs:40--40
    put(this, C:set_val_internal(get(this),'ls_ls_VirusScannerInterface',[])),
     %% Scale2.abs:41--41
    put(this, C:set_val_internal(get(this),'ls_VirusScannerInterface',[])),
     %% Scale2.abs:42--42
    put(this, C:set_val_internal(get(this),'ls_ls_LinkAnalyserInterface',[])),
     %% Scale2.abs:43--43
    put(this, C:set_val_internal(get(this),'ls_LinkAnalyserInterface',[])),
     %% Scale2.abs:44--44
    put(this, C:set_val_internal(get(this),'ls_ls_HeaderAnalyserInterface',[])),
     %% Scale2.abs:45--45
    put(this, C:set_val_internal(get(this),'ls_HeaderAnalyserInterface',[])),
     %% Scale2.abs:46--46
    put(this, C:set_val_internal(get(this),'ls_ls_MessageAnalyserInterface',[])),
     %% Scale2.abs:47--47
    put(this, C:set_val_internal(get(this),'ls_MessageAnalyserInterface',[])),
     %% Scale2.abs:48--48
    put(this, C:set_val_internal(get(this),'ls_ls_SentimentAnalyserInterface',[])),
     %% Scale2.abs:49--49
    put(this, C:set_val_internal(get(this),'ls_SentimentAnalyserInterface',[])),
     %% Scale2.abs:50--50
    put(this, C:set_val_internal(get(this),'ls_ls_DeploymentComponent',[])),
     %% Scale2.abs:51--51
    put(this, C:set_val_internal(get(this),'ls_DeploymentComponent',[])),
     %% Scale2.abs:52--52
    put(this, C:set_val_internal(get(this),'waiting_time',100)),
     %% Scale2.abs:54--61
    T_1 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,950}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,2000}, { dataPair,dataMemory,3000}, { dataPair,dataCores,16}, { dataPair,dataSpeed,80}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,950}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,2000}, { dataPair,dataMemory,3000}, { dataPair,dataCores,16}, { dataPair,dataSpeed,80}] ,[O,DC| Stack])},
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
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,950}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,2000}, { dataPair,dataMemory,3000}, { dataPair,dataCores,16}, { dataPair,dataSpeed,80}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog, true),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_1,
     %% Scale2.abs:62--69
    T_2 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
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
    T_2,
     %% Scale2.abs:70--77
    T_3 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
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
    T_3,
     %% Scale2.abs:78--85
    T_4 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
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
    T_4,
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% Scale2.abs:88
 %% Scale2.abs:88
'm_getMessageReceiverInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:88--88
        C:get_val_internal(get(this), 'ls_MessageReceiverInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getMessageReceiverInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:89
 %% Scale2.abs:89
'm_getTextAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:89--89
        C:get_val_internal(get(this), 'ls_TextAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getTextAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:90
 %% Scale2.abs:90
'm_getNSFWDetectorInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:90--90
        C:get_val_internal(get(this), 'ls_NSFWDetectorInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getNSFWDetectorInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:91
 %% Scale2.abs:91
'm_getImageRecognizerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:91--91
        C:get_val_internal(get(this), 'ls_ImageRecognizerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getImageRecognizerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:92
 %% Scale2.abs:92
'm_getMessageParserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:92--92
        C:get_val_internal(get(this), 'ls_MessageParserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getMessageParserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:93
 %% Scale2.abs:93
'm_getAttachmentsManagerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:93--93
        C:get_val_internal(get(this), 'ls_AttachmentsManagerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getAttachmentsManagerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:94
 %% Scale2.abs:94
'm_getImageAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:94--94
        C:get_val_internal(get(this), 'ls_ImageAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getImageAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:95
 %% Scale2.abs:95
'm_getVirusScannerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:95--95
        C:get_val_internal(get(this), 'ls_VirusScannerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getVirusScannerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:96
 %% Scale2.abs:96
'm_getLinkAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:96--96
        C:get_val_internal(get(this), 'ls_LinkAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getLinkAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:97
 %% Scale2.abs:97
'm_getHeaderAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:97--97
        C:get_val_internal(get(this), 'ls_HeaderAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getHeaderAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:98
 %% Scale2.abs:98
'm_getMessageAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:98--98
        C:get_val_internal(get(this), 'ls_MessageAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getMessageAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:99
 %% Scale2.abs:99
'm_getSentimentAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:99--99
        C:get_val_internal(get(this), 'ls_SentimentAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getSentimentAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:100
 %% Scale2.abs:100
'm_getDeploymentComponent'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:100--100
        C:get_val_internal(get(this), 'ls_DeploymentComponent')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getDeploymentComponent and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:102
 %% Scale2.abs:102
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:103--103
        put(this, C:set_val_internal(get(this), 'ls_ls_MessageReceiverInterface',[C:get_val_internal(get(this), 'ls_MessageReceiverInterface') | C:get_val_internal(get(this), 'ls_ls_MessageReceiverInterface')])),
         %% Scale2.abs:104--104
        put(this, C:set_val_internal(get(this), 'ls_MessageReceiverInterface',[])),
         %% Scale2.abs:105--105
        put(this, C:set_val_internal(get(this), 'ls_ls_TextAnalyserInterface',[C:get_val_internal(get(this), 'ls_TextAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_TextAnalyserInterface')])),
         %% Scale2.abs:106--106
        put(this, C:set_val_internal(get(this), 'ls_TextAnalyserInterface',[])),
         %% Scale2.abs:107--107
        put(this, C:set_val_internal(get(this), 'ls_ls_NSFWDetectorInterface',[C:get_val_internal(get(this), 'ls_NSFWDetectorInterface') | C:get_val_internal(get(this), 'ls_ls_NSFWDetectorInterface')])),
         %% Scale2.abs:108--108
        put(this, C:set_val_internal(get(this), 'ls_NSFWDetectorInterface',[])),
         %% Scale2.abs:109--109
        put(this, C:set_val_internal(get(this), 'ls_ls_ImageRecognizerInterface',[C:get_val_internal(get(this), 'ls_ImageRecognizerInterface') | C:get_val_internal(get(this), 'ls_ls_ImageRecognizerInterface')])),
         %% Scale2.abs:110--110
        put(this, C:set_val_internal(get(this), 'ls_ImageRecognizerInterface',[])),
         %% Scale2.abs:111--111
        put(this, C:set_val_internal(get(this), 'ls_ls_MessageParserInterface',[C:get_val_internal(get(this), 'ls_MessageParserInterface') | C:get_val_internal(get(this), 'ls_ls_MessageParserInterface')])),
         %% Scale2.abs:112--112
        put(this, C:set_val_internal(get(this), 'ls_MessageParserInterface',[])),
         %% Scale2.abs:113--113
        put(this, C:set_val_internal(get(this), 'ls_ls_AttachmentsManagerInterface',[C:get_val_internal(get(this), 'ls_AttachmentsManagerInterface') | C:get_val_internal(get(this), 'ls_ls_AttachmentsManagerInterface')])),
         %% Scale2.abs:114--114
        put(this, C:set_val_internal(get(this), 'ls_AttachmentsManagerInterface',[])),
         %% Scale2.abs:115--115
        put(this, C:set_val_internal(get(this), 'ls_ls_ImageAnalyserInterface',[C:get_val_internal(get(this), 'ls_ImageAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_ImageAnalyserInterface')])),
         %% Scale2.abs:116--116
        put(this, C:set_val_internal(get(this), 'ls_ImageAnalyserInterface',[])),
         %% Scale2.abs:117--117
        put(this, C:set_val_internal(get(this), 'ls_ls_VirusScannerInterface',[C:get_val_internal(get(this), 'ls_VirusScannerInterface') | C:get_val_internal(get(this), 'ls_ls_VirusScannerInterface')])),
         %% Scale2.abs:118--118
        put(this, C:set_val_internal(get(this), 'ls_VirusScannerInterface',[])),
         %% Scale2.abs:119--119
        put(this, C:set_val_internal(get(this), 'ls_ls_LinkAnalyserInterface',[C:get_val_internal(get(this), 'ls_LinkAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_LinkAnalyserInterface')])),
         %% Scale2.abs:120--120
        put(this, C:set_val_internal(get(this), 'ls_LinkAnalyserInterface',[])),
         %% Scale2.abs:121--121
        put(this, C:set_val_internal(get(this), 'ls_ls_HeaderAnalyserInterface',[C:get_val_internal(get(this), 'ls_HeaderAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_HeaderAnalyserInterface')])),
         %% Scale2.abs:122--122
        put(this, C:set_val_internal(get(this), 'ls_HeaderAnalyserInterface',[])),
         %% Scale2.abs:123--123
        put(this, C:set_val_internal(get(this), 'ls_ls_MessageAnalyserInterface',[C:get_val_internal(get(this), 'ls_MessageAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_MessageAnalyserInterface')])),
         %% Scale2.abs:124--124
        put(this, C:set_val_internal(get(this), 'ls_MessageAnalyserInterface',[])),
         %% Scale2.abs:125--125
        put(this, C:set_val_internal(get(this), 'ls_ls_SentimentAnalyserInterface',[C:get_val_internal(get(this), 'ls_SentimentAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_SentimentAnalyserInterface')])),
         %% Scale2.abs:126--126
        put(this, C:set_val_internal(get(this), 'ls_SentimentAnalyserInterface',[])),
         %% Scale2.abs:127--127
        put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',[C:get_val_internal(get(this), 'ls_DeploymentComponent') | C:get_val_internal(get(this), 'ls_ls_DeploymentComponent')])),
         %% Scale2.abs:128--128
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[])),
         %% Scale2.abs:129--129
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
 %% Scale2.abs:132
 %% Scale2.abs:132
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:133--133
        case (not cmp:eq(C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[])) of
            true ->  %% Scale2.abs:134--134
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
             %% Scale2.abs:135--135
            put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% Scale2.abs:136--136
            put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% Scale2.abs:137--137
            put(this, C:set_val_internal(get(this), 'ls_MessageReceiverInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_MessageReceiverInterface'),[O,DC| Stack]))),
             %% Scale2.abs:138--138
            put(this, C:set_val_internal(get(this), 'ls_TextAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_TextAnalyserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:139--139
            put(this, C:set_val_internal(get(this), 'ls_NSFWDetectorInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_NSFWDetectorInterface'),[O,DC| Stack]))),
             %% Scale2.abs:140--140
            put(this, C:set_val_internal(get(this), 'ls_ImageRecognizerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_ImageRecognizerInterface'),[O,DC| Stack]))),
             %% Scale2.abs:141--141
            put(this, C:set_val_internal(get(this), 'ls_MessageParserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_MessageParserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:142--142
            put(this, C:set_val_internal(get(this), 'ls_AttachmentsManagerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_AttachmentsManagerInterface'),[O,DC| Stack]))),
             %% Scale2.abs:143--143
            put(this, C:set_val_internal(get(this), 'ls_ImageAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_ImageAnalyserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:144--144
            put(this, C:set_val_internal(get(this), 'ls_VirusScannerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_VirusScannerInterface'),[O,DC| Stack]))),
             %% Scale2.abs:145--145
            put(this, C:set_val_internal(get(this), 'ls_LinkAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_LinkAnalyserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:146--146
            put(this, C:set_val_internal(get(this), 'ls_HeaderAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_HeaderAnalyserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:147--147
            put(this, C:set_val_internal(get(this), 'ls_MessageAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_MessageAnalyserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:148--148
            put(this, C:set_val_internal(get(this), 'ls_SentimentAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_SentimentAnalyserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:149--149
            put(this, C:set_val_internal(get(this), 'ls_ls_MessageReceiverInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_MessageReceiverInterface'),[O,DC| Stack]))),
             %% Scale2.abs:150--150
            put(this, C:set_val_internal(get(this), 'ls_ls_TextAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_TextAnalyserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:151--151
            put(this, C:set_val_internal(get(this), 'ls_ls_NSFWDetectorInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_NSFWDetectorInterface'),[O,DC| Stack]))),
             %% Scale2.abs:152--152
            put(this, C:set_val_internal(get(this), 'ls_ls_ImageRecognizerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_ImageRecognizerInterface'),[O,DC| Stack]))),
             %% Scale2.abs:153--153
            put(this, C:set_val_internal(get(this), 'ls_ls_MessageParserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_MessageParserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:154--154
            put(this, C:set_val_internal(get(this), 'ls_ls_AttachmentsManagerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_AttachmentsManagerInterface'),[O,DC| Stack]))),
             %% Scale2.abs:155--155
            put(this, C:set_val_internal(get(this), 'ls_ls_ImageAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_ImageAnalyserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:156--156
            put(this, C:set_val_internal(get(this), 'ls_ls_VirusScannerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_VirusScannerInterface'),[O,DC| Stack]))),
             %% Scale2.abs:157--157
            put(this, C:set_val_internal(get(this), 'ls_ls_LinkAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_LinkAnalyserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:158--158
            put(this, C:set_val_internal(get(this), 'ls_ls_HeaderAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_HeaderAnalyserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:159--159
            put(this, C:set_val_internal(get(this), 'ls_ls_MessageAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_MessageAnalyserInterface'),[O,DC| Stack]))),
             %% Scale2.abs:160--160
            put(this, C:set_val_internal(get(this), 'ls_ls_SentimentAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_SentimentAnalyserInterface'),[O,DC| Stack])));
            false ->         ok
        end,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method undeploy and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:165
 %% Scale2.abs:165
'm_deploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:166--166
        put(vars, (get(vars))#{'speedPatchMap' => m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack])}),
         %% Scale2.abs:167--167
        put(vars, (get(vars))#{'c4_4xlarge_1' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_4xlarge"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_4xlarge"/utf8>>,
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
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_4xlarge"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% Scale2.abs:168--168
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_4xlarge_1', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% Scale2.abs:169--169
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_1', get(vars)),0,[O,DC| Stack])}),
         %% Scale2.abs:170--170
        put(vars, (get(vars))#{'c4_4xlarge_0' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_4xlarge"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_4xlarge"/utf8>>,
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
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_4xlarge"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% Scale2.abs:171--171
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_4xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% Scale2.abs:172--172
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),0,[O,DC| Stack])}),
         %% Scale2.abs:173--173
        put(vars, (get(vars))#{'c4_xlarge_1' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_xlarge"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_xlarge"/utf8>>,
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
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_xlarge"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% Scale2.abs:174--174
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_xlarge_1', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% Scale2.abs:175--175
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_1', get(vars)),0,[O,DC| Stack])}),
         %% Scale2.abs:176--176
        put(vars, (get(vars))#{'c4_xlarge_0' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_xlarge"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_xlarge"/utf8>>,
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
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_xlarge"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% Scale2.abs:177--177
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% Scale2.abs:178--178
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_0', get(vars)),0,[O,DC| Stack])}),
         %% Scale2.abs:179--179
        put(vars, (get(vars))#{'c4_xlarge_3' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_xlarge"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_xlarge"/utf8>>,
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
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_xlarge"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% Scale2.abs:180--180
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_xlarge_3', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% Scale2.abs:181--181
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_3', get(vars)),0,[O,DC| Stack])}),
         %% Scale2.abs:182--182
        put(vars, (get(vars))#{'c4_xlarge_2' => (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_launchInstanceNamed'(Callee,<<"c4_xlarge"/utf8>>,[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_instancename = <<"c4_xlarge"/utf8>>,
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
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_xlarge"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% Scale2.abs:183--183
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_xlarge_2', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% Scale2.abs:184--184
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_2', get(vars)),0,[O,DC| Stack])}),
         %% Scale2.abs:185--185
        put(vars, (get(vars))#{'odefault___SentimentAnalyser_0_c4_xlarge_2' => object:new(cog:start(Cog,maps:get('c4_xlarge_2', get(vars))),class_EmailProcessingPipelineArchitecture_SentimentAnalyser,[[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:186--186
        put(vars, (get(vars))#{'coreRequired_odefault___SentimentAnalyser_0_c4_xlarge_2' => 4}),
         %% Scale2.abs:187--187
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_2', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_2', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___SentimentAnalyser_0_c4_xlarge_2', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:188--188
        put(this, C:set_val_internal(get(this), 'ls_SentimentAnalyserInterface',[maps:get('odefault___SentimentAnalyser_0_c4_xlarge_2', get(vars)) | C:get_val_internal(get(this), 'ls_SentimentAnalyserInterface')])),
         %% Scale2.abs:189--189
        put(vars, (get(vars))#{'odefault___ImageRecognizer_0_c4_4xlarge_0' => object:new(cog:start(Cog,maps:get('c4_4xlarge_0', get(vars))),class_EmailProcessingPipelineArchitecture_ImageRecognizer,[[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:190--190
        put(vars, (get(vars))#{'coreRequired_odefault___ImageRecognizer_0_c4_4xlarge_0' => 6}),
         %% Scale2.abs:191--191
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___ImageRecognizer_0_c4_4xlarge_0', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:192--192
        put(this, C:set_val_internal(get(this), 'ls_ImageRecognizerInterface',[maps:get('odefault___ImageRecognizer_0_c4_4xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_ImageRecognizerInterface')])),
         %% Scale2.abs:193--193
        put(vars, (get(vars))#{'odefault___ImageRecognizer_1_c4_4xlarge_0' => object:new(cog:start(Cog,maps:get('c4_4xlarge_0', get(vars))),class_EmailProcessingPipelineArchitecture_ImageRecognizer,[[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:194--194
        put(vars, (get(vars))#{'coreRequired_odefault___ImageRecognizer_1_c4_4xlarge_0' => 6}),
         %% Scale2.abs:195--195
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___ImageRecognizer_1_c4_4xlarge_0', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:196--196
        put(this, C:set_val_internal(get(this), 'ls_ImageRecognizerInterface',[maps:get('odefault___ImageRecognizer_1_c4_4xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_ImageRecognizerInterface')])),
         %% Scale2.abs:197--197
        put(vars, (get(vars))#{'odefault___NSFWDetector_1_c4_4xlarge_1' => object:new(cog:start(Cog,maps:get('c4_4xlarge_1', get(vars))),class_EmailProcessingPipelineArchitecture_NSFWDetector,[[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:198--198
        put(vars, (get(vars))#{'coreRequired_odefault___NSFWDetector_1_c4_4xlarge_1' => 6}),
         %% Scale2.abs:199--199
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_1', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_1', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___NSFWDetector_1_c4_4xlarge_1', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:200--200
        put(this, C:set_val_internal(get(this), 'ls_NSFWDetectorInterface',[maps:get('odefault___NSFWDetector_1_c4_4xlarge_1', get(vars)) | C:get_val_internal(get(this), 'ls_NSFWDetectorInterface')])),
         %% Scale2.abs:201--201
        put(vars, (get(vars))#{'odefault___SentimentAnalyser_0_c4_xlarge_0' => object:new(cog:start(Cog,maps:get('c4_xlarge_0', get(vars))),class_EmailProcessingPipelineArchitecture_SentimentAnalyser,[[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:202--202
        put(vars, (get(vars))#{'coreRequired_odefault___SentimentAnalyser_0_c4_xlarge_0' => 4}),
         %% Scale2.abs:203--203
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___SentimentAnalyser_0_c4_xlarge_0', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:204--204
        put(this, C:set_val_internal(get(this), 'ls_SentimentAnalyserInterface',[maps:get('odefault___SentimentAnalyser_0_c4_xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_SentimentAnalyserInterface')])),
         %% Scale2.abs:205--205
        put(vars, (get(vars))#{'odefault___NSFWDetector_0_c4_4xlarge_1' => object:new(cog:start(Cog,maps:get('c4_4xlarge_1', get(vars))),class_EmailProcessingPipelineArchitecture_NSFWDetector,[[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:206--206
        put(vars, (get(vars))#{'coreRequired_odefault___NSFWDetector_0_c4_4xlarge_1' => 6}),
         %% Scale2.abs:207--207
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_1', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_1', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___NSFWDetector_0_c4_4xlarge_1', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:208--208
        put(this, C:set_val_internal(get(this), 'ls_NSFWDetectorInterface',[maps:get('odefault___NSFWDetector_0_c4_4xlarge_1', get(vars)) | C:get_val_internal(get(this), 'ls_NSFWDetectorInterface')])),
         %% Scale2.abs:209--209
        put(vars, (get(vars))#{'odefault___SentimentAnalyser_0_c4_xlarge_1' => object:new(cog:start(Cog,maps:get('c4_xlarge_1', get(vars))),class_EmailProcessingPipelineArchitecture_SentimentAnalyser,[[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:210--210
        put(vars, (get(vars))#{'coreRequired_odefault___SentimentAnalyser_0_c4_xlarge_1' => 4}),
         %% Scale2.abs:211--211
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_1', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_1', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___SentimentAnalyser_0_c4_xlarge_1', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:212--212
        put(this, C:set_val_internal(get(this), 'ls_SentimentAnalyserInterface',[maps:get('odefault___SentimentAnalyser_0_c4_xlarge_1', get(vars)) | C:get_val_internal(get(this), 'ls_SentimentAnalyserInterface')])),
         %% Scale2.abs:213--213
        put(vars, (get(vars))#{'odefault___MessageAnalyser_1_c4_4xlarge_0' => object:new(cog:start(Cog,maps:get('c4_4xlarge_0', get(vars))),class_EmailProcessingPipelineArchitecture_MessageAnalyser,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:214--214
        put(vars, (get(vars))#{'coreRequired_odefault___MessageAnalyser_1_c4_4xlarge_0' => 1}),
         %% Scale2.abs:215--215
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___MessageAnalyser_1_c4_4xlarge_0', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:216--216
        put(this, C:set_val_internal(get(this), 'ls_MessageAnalyserInterface',[maps:get('odefault___MessageAnalyser_1_c4_4xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_MessageAnalyserInterface')])),
         %% Scale2.abs:217--217
        put(vars, (get(vars))#{'odefault___MessageAnalyser_0_c4_4xlarge_0' => object:new(cog:start(Cog,maps:get('c4_4xlarge_0', get(vars))),class_EmailProcessingPipelineArchitecture_MessageAnalyser,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:218--218
        put(vars, (get(vars))#{'coreRequired_odefault___MessageAnalyser_0_c4_4xlarge_0' => 1}),
         %% Scale2.abs:219--219
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___MessageAnalyser_0_c4_4xlarge_0', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:220--220
        put(this, C:set_val_internal(get(this), 'ls_MessageAnalyserInterface',[maps:get('odefault___MessageAnalyser_0_c4_4xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_MessageAnalyserInterface')])),
         %% Scale2.abs:221--221
        put(vars, (get(vars))#{'odefault___ImageAnalyser_0_c4_4xlarge_0' => object:new(cog:start(Cog,maps:get('c4_4xlarge_0', get(vars))),class_EmailProcessingPipelineArchitecture_ImageAnalyser,[C:get_val_internal(get(this), 'nsfwDetector_LoadBalancerObj'),C:get_val_internal(get(this), 'imageRecognizer_LoadBalancerObj'),C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj'),[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:222--222
        put(vars, (get(vars))#{'coreRequired_odefault___ImageAnalyser_0_c4_4xlarge_0' => 1}),
         %% Scale2.abs:223--223
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___ImageAnalyser_0_c4_4xlarge_0', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:224--224
        put(this, C:set_val_internal(get(this), 'ls_ImageAnalyserInterface',[maps:get('odefault___ImageAnalyser_0_c4_4xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_ImageAnalyserInterface')])),
         %% Scale2.abs:225--225
        put(vars, (get(vars))#{'odefault___AttachmentsManager_0_c4_4xlarge_0' => object:new(cog:start(Cog,maps:get('c4_4xlarge_0', get(vars))),class_EmailProcessingPipelineArchitecture_AttachmentsManager,[C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerObj'),[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:226--226
        put(vars, (get(vars))#{'coreRequired_odefault___AttachmentsManager_0_c4_4xlarge_0' => 1}),
         %% Scale2.abs:227--227
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___AttachmentsManager_0_c4_4xlarge_0', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:228--228
        put(this, C:set_val_internal(get(this), 'ls_AttachmentsManagerInterface',[maps:get('odefault___AttachmentsManager_0_c4_4xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_AttachmentsManagerInterface')])),
         %% Scale2.abs:229--229
        put(vars, (get(vars))#{'odefault___VirusScanner_0_c4_xlarge_3' => object:new(cog:start(Cog,maps:get('c4_xlarge_3', get(vars))),class_EmailProcessingPipelineArchitecture_VirusScanner,[C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerObj'),C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj'),[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:230--230
        put(vars, (get(vars))#{'coreRequired_odefault___VirusScanner_0_c4_xlarge_3' => 4}),
         %% Scale2.abs:231--231
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_3', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_3', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___VirusScanner_0_c4_xlarge_3', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:232--232
        put(this, C:set_val_internal(get(this), 'ls_VirusScannerInterface',[maps:get('odefault___VirusScanner_0_c4_xlarge_3', get(vars)) | C:get_val_internal(get(this), 'ls_VirusScannerInterface')])),
         %% Scale2.abs:233--233
        put(vars, (get(vars))#{'odefault___VirusScanner_0_c4_4xlarge_1' => object:new(cog:start(Cog,maps:get('c4_4xlarge_1', get(vars))),class_EmailProcessingPipelineArchitecture_VirusScanner,[C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerObj'),C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj'),[]],Cog,[O,DC| Stack])}),
         %% Scale2.abs:234--234
        put(vars, (get(vars))#{'coreRequired_odefault___VirusScanner_0_c4_4xlarge_1' => 4}),
         %% Scale2.abs:235--235
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_1', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_4xlarge_1', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___VirusScanner_0_c4_4xlarge_1', get(vars)))) ,[O,DC| Stack])}),
         %% Scale2.abs:236--236
        put(this, C:set_val_internal(get(this), 'ls_VirusScannerInterface',[maps:get('odefault___VirusScanner_0_c4_4xlarge_1', get(vars)) | C:get_val_internal(get(this), 'ls_VirusScannerInterface')])),
         %% Scale2.abs:237--237
        T_1 = cog:create_task(O,'m_patchSpeed',[maps:get('speedPatchMap', get(vars)),[]],#task_info{method= <<"patchSpeed"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,false),
        T_1,
         %% Scale2.abs:238--238
        cog:suspend_current_task_for_duration(Cog,C:get_val_internal(get(this), 'waiting_time'),C:get_val_internal(get(this), 'waiting_time'),[O,DC| Stack]),
        ok,
         %% Scale2.abs:239--239
        T_2 = (fun() -> case C:get_val_internal(get(this), 'nsfwDetector_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___NSFWDetector_0_c4_4xlarge_1', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___NSFWDetector_0_c4_4xlarge_1', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___NSFWDetector_0_c4_4xlarge_1', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
         %% Scale2.abs:240--240
        T_3 = (fun() -> case C:get_val_internal(get(this), 'nsfwDetector_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___NSFWDetector_1_c4_4xlarge_1', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___NSFWDetector_1_c4_4xlarge_1', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___NSFWDetector_1_c4_4xlarge_1', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_3,
         %% Scale2.abs:241--241
        T_4 = (fun() -> case C:get_val_internal(get(this), 'sentimentAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___SentimentAnalyser_0_c4_xlarge_1', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___SentimentAnalyser_0_c4_xlarge_1', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___SentimentAnalyser_0_c4_xlarge_1', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_4,
         %% Scale2.abs:242--242
        T_5 = (fun() -> case C:get_val_internal(get(this), 'sentimentAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___SentimentAnalyser_0_c4_xlarge_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___SentimentAnalyser_0_c4_xlarge_0', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___SentimentAnalyser_0_c4_xlarge_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_5,
         %% Scale2.abs:243--243
        T_6 = (fun() -> case C:get_val_internal(get(this), 'sentimentAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___SentimentAnalyser_0_c4_xlarge_2', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___SentimentAnalyser_0_c4_xlarge_2', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___SentimentAnalyser_0_c4_xlarge_2', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_6,
         %% Scale2.abs:244--244
        T_7 = (fun() -> case C:get_val_internal(get(this), 'imageRecognizer_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___ImageRecognizer_0_c4_4xlarge_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___ImageRecognizer_0_c4_4xlarge_0', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___ImageRecognizer_0_c4_4xlarge_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_7,
         %% Scale2.abs:245--245
        T_8 = (fun() -> case C:get_val_internal(get(this), 'imageRecognizer_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___ImageRecognizer_1_c4_4xlarge_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___ImageRecognizer_1_c4_4xlarge_0', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___ImageRecognizer_1_c4_4xlarge_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_8,
         %% Scale2.abs:246--246
        T_9 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___MessageAnalyser_0_c4_4xlarge_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___MessageAnalyser_0_c4_4xlarge_0', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___MessageAnalyser_0_c4_4xlarge_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_9,
         %% Scale2.abs:247--247
        T_10 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___MessageAnalyser_1_c4_4xlarge_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___MessageAnalyser_1_c4_4xlarge_0', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___MessageAnalyser_1_c4_4xlarge_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_10,
         %% Scale2.abs:248--248
        T_11 = (fun() -> case C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___ImageAnalyser_0_c4_4xlarge_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___ImageAnalyser_0_c4_4xlarge_0', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___ImageAnalyser_0_c4_4xlarge_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_11,
         %% Scale2.abs:249--249
        T_12 = (fun() -> case C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___AttachmentsManager_0_c4_4xlarge_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___AttachmentsManager_0_c4_4xlarge_0', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___AttachmentsManager_0_c4_4xlarge_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_12,
         %% Scale2.abs:250--250
        T_13 = (fun() -> case C:get_val_internal(get(this), 'virusScanner_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___VirusScanner_0_c4_xlarge_3', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___VirusScanner_0_c4_xlarge_3', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___VirusScanner_0_c4_xlarge_3', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_13,
         %% Scale2.abs:251--251
        T_14 = (fun() -> case C:get_val_internal(get(this), 'virusScanner_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___VirusScanner_0_c4_4xlarge_1', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___VirusScanner_0_c4_4xlarge_1', get(vars)),
                State=get(this),
                Vars=get(vars),
                cog:object_state_changed(Cog, O, State),
                put(this,cog:get_object_state(Callee#object.cog, Callee)),
                put(task_info,(get(task_info))#task_info{this=Callee}),
                T=object:get_class_from_state(get(this)), % it's the callee state already
                Result=T:'m_connectInstance'(Callee, V_newInstance,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___VirusScanner_0_c4_4xlarge_1', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_14,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy_aux and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% Scale2.abs:254
 %% Scale2.abs:254
'm_undeploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% Scale2.abs:255--255
        put(vars, (get(vars))#{'odefault___SentimentAnalyser_0_c4_xlarge_2' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_SentimentAnalyserInterface'),0,[O,DC| Stack])}),
         %% Scale2.abs:256--256
        put(vars, (get(vars))#{'odefault___ImageRecognizer_0_c4_4xlarge_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_ImageRecognizerInterface'),0,[O,DC| Stack])}),
         %% Scale2.abs:257--257
        put(vars, (get(vars))#{'odefault___ImageRecognizer_1_c4_4xlarge_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_ImageRecognizerInterface'),1,[O,DC| Stack])}),
         %% Scale2.abs:258--258
        put(vars, (get(vars))#{'odefault___NSFWDetector_1_c4_4xlarge_1' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_NSFWDetectorInterface'),0,[O,DC| Stack])}),
         %% Scale2.abs:259--259
        put(vars, (get(vars))#{'odefault___SentimentAnalyser_0_c4_xlarge_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_SentimentAnalyserInterface'),1,[O,DC| Stack])}),
         %% Scale2.abs:260--260
        put(vars, (get(vars))#{'odefault___NSFWDetector_0_c4_4xlarge_1' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_NSFWDetectorInterface'),1,[O,DC| Stack])}),
         %% Scale2.abs:261--261
        put(vars, (get(vars))#{'odefault___SentimentAnalyser_0_c4_xlarge_1' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_SentimentAnalyserInterface'),2,[O,DC| Stack])}),
         %% Scale2.abs:262--262
        put(vars, (get(vars))#{'odefault___MessageAnalyser_1_c4_4xlarge_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_MessageAnalyserInterface'),0,[O,DC| Stack])}),
         %% Scale2.abs:263--263
        put(vars, (get(vars))#{'odefault___MessageAnalyser_0_c4_4xlarge_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_MessageAnalyserInterface'),1,[O,DC| Stack])}),
         %% Scale2.abs:264--264
        put(vars, (get(vars))#{'odefault___ImageAnalyser_0_c4_4xlarge_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_ImageAnalyserInterface'),0,[O,DC| Stack])}),
         %% Scale2.abs:265--265
        put(vars, (get(vars))#{'odefault___AttachmentsManager_0_c4_4xlarge_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_AttachmentsManagerInterface'),0,[O,DC| Stack])}),
         %% Scale2.abs:266--266
        put(vars, (get(vars))#{'odefault___VirusScanner_0_c4_xlarge_3' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_VirusScannerInterface'),0,[O,DC| Stack])}),
         %% Scale2.abs:267--267
        put(vars, (get(vars))#{'odefault___VirusScanner_0_c4_4xlarge_1' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_VirusScannerInterface'),1,[O,DC| Stack])}),
         %% Scale2.abs:268--268
        T_1 = (fun() -> case C:get_val_internal(get(this), 'nsfwDetector_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% Scale2.abs:269--269
        T_2 = (fun() -> case C:get_val_internal(get(this), 'nsfwDetector_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
         %% Scale2.abs:270--270
        T_3 = (fun() -> case C:get_val_internal(get(this), 'sentimentAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_3,
         %% Scale2.abs:271--271
        T_4 = (fun() -> case C:get_val_internal(get(this), 'sentimentAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_4,
         %% Scale2.abs:272--272
        T_5 = (fun() -> case C:get_val_internal(get(this), 'sentimentAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_5,
         %% Scale2.abs:273--273
        T_6 = (fun() -> case C:get_val_internal(get(this), 'imageRecognizer_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_6,
         %% Scale2.abs:274--274
        T_7 = (fun() -> case C:get_val_internal(get(this), 'imageRecognizer_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_7,
         %% Scale2.abs:275--275
        T_8 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_8,
         %% Scale2.abs:276--276
        T_9 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_9,
         %% Scale2.abs:277--277
        T_10 = (fun() -> case C:get_val_internal(get(this), 'imageAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_10,
         %% Scale2.abs:278--278
        T_11 = (fun() -> case C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_11,
         %% Scale2.abs:279--279
        T_12 = (fun() -> case C:get_val_internal(get(this), 'virusScanner_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_12,
         %% Scale2.abs:280--280
        T_13 = (fun() -> case C:get_val_internal(get(this), 'virusScanner_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_disconnectInstance'(Callee,[O,DC,Vars| Stack]),
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
                Result=T:'m_disconnectInstance'(Callee,[O,DC,Vars,State| Stack]),
                cog:object_state_changed(Callee#object.cog, Callee, get(this)),
                put(task_info,(get(task_info))#task_info{this=O}),
                put(this, cog:get_object_state(Cog, O)),
                put(vars, Vars),
                Result;
            Callee ->
                %% remote call
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog, true),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_13,
         %% Scale2.abs:281--281
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
                 %% Scale2.abs:282--282
                T_14 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
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
                T_14,
                 %% Scale2.abs:283--283
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
 %% Scale2.abs:287
 %% Scale2.abs:287
'm_patchSpeed'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_dcs_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'dcs' => V_dcs_0 }),
    try
         %% Scale2.abs:288--301
        put(vars, (get(vars))#{'tmp85102332' => m_ABS_StdLib_funs:f_entries(Cog,maps:get('dcs', get(vars)),[O,DC| Stack])}),
         %% Scale2.abs:288--301
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp85102332', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% Scale2.abs:288--301
                put(vars, (get(vars))#{'entry' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp85102332', get(vars)),[O,DC| Stack])}),
                 %% Scale2.abs:288--301
                put(vars, (get(vars))#{'tmp85102332' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp85102332', get(vars)),[O,DC| Stack])}),
                 %% Scale2.abs:289--289
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_fst(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% Scale2.abs:290--290
                put(vars, (get(vars))#{'coreUsed' => m_ABS_StdLib_funs:f_snd(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% Scale2.abs:291--291
                put(vars, (get(vars))#{'tmp1046286588' => cog:create_task(maps:get('dc', get(vars)),'m_total',[dataSpeed,[]],#task_info{method= <<"total"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
                 %% Scale2.abs:291--291
                future:await(maps:get('tmp1046286588', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% Scale2.abs:291--291
                put(vars, (get(vars))#{'speed_aux' => future:get_blocking(maps:get('tmp1046286588', get(vars)), Cog, [O,DC| Stack])}),
                 %% Scale2.abs:292--295
                put(vars, (get(vars))#{'total_speed' => begin
                    case maps:get('speed_aux', get(vars)) of
                        
                        {dataFin,V_x_0}->V_x_0;
                        _->-1
                    end
                end}),
                 %% Scale2.abs:296--296
                case (not cmp:eq(maps:get('total_speed', get(vars)),-1)) of
                    true ->  %% Scale2.abs:297--297
                    put(vars, (get(vars))#{'tmp1570803354' => cog:create_task(maps:get('dc', get(vars)),'m_getNumberOfCores',[[]],#task_info{method= <<"getNumberOfCores"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog,true)}),
                     %% Scale2.abs:297--297
                    future:await(maps:get('tmp1570803354', get(vars)), Cog, [O,DC| Stack]),
                    ok,
                     %% Scale2.abs:297--297
                    put(vars, (get(vars))#{'totalCore' => future:get_blocking(maps:get('tmp1570803354', get(vars)), Cog, [O,DC| Stack])}),
                     %% Scale2.abs:298--298
                    put(vars, (get(vars))#{'speedPerCore' =>  rationals:rdiv(maps:get('total_speed', get(vars)),maps:get('totalCore', get(vars))) }),
                     %% Scale2.abs:299--299
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
