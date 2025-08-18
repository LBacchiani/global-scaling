-module(class_Scale3_Scale3).
-include_lib("../include/abs_types.hrl").
-behaviour(object).
-export([get_val_internal/2,set_val_internal/3,init_internal/0,get_state_for_modelapi/1,implemented_interfaces/0,exported/0]).
-compile(export_all).

implemented_interfaces() -> [ <<"Scale3">>, <<"Object">> ].

exported() -> #{  }.

%% --- Internal state and low-level accessors

-record(state,{'class'=class_Scale3_Scale3,'cloudProvider'=null,'messageParser_LoadBalancerObj'=null,'headerAnalyser_LoadBalancerObj'=null,'linkAnalyser_LoadBalancerObj'=null,'textAnalyser_LoadBalancerObj'=null,'virusScanner_LoadBalancerObj'=null,'attachmentsManager_LoadBalancerObj'=null,'imageAnalyser_LoadBalancerObj'=null,'messageAnalyser_LoadBalancerObj'=null,'dbObj'=null,'ls_ls_HeaderAnalyser_LoadBalancerInterface'=null,'ls_HeaderAnalyser_LoadBalancerInterface'=null,'ls_ls_TextAnalyserInterface'=null,'ls_TextAnalyserInterface'=null,'ls_ls_VirusScanner_LoadBalancerInterface'=null,'ls_VirusScanner_LoadBalancerInterface'=null,'ls_ls_MessageAnalyser_LoadBalancerInterface'=null,'ls_MessageAnalyser_LoadBalancerInterface'=null,'ls_ls_AttachmentsManager_LoadBalancerInterface'=null,'ls_AttachmentsManager_LoadBalancerInterface'=null,'ls_ls_AttachmentsManagerInterface'=null,'ls_AttachmentsManagerInterface'=null,'ls_ls_MessageParser_LoadBalancerInterface'=null,'ls_MessageParser_LoadBalancerInterface'=null,'ls_ls_ImageAnalyserInterface'=null,'ls_ImageAnalyserInterface'=null,'ls_ls_VirusScannerInterface'=null,'ls_VirusScannerInterface'=null,'ls_ls_TextAnalyser_LoadBalancerInterface'=null,'ls_TextAnalyser_LoadBalancerInterface'=null,'ls_ls_LinkAnalyserInterface'=null,'ls_LinkAnalyserInterface'=null,'ls_ls_HeaderAnalyserInterface'=null,'ls_HeaderAnalyserInterface'=null,'ls_ls_MessageAnalyserInterface'=null,'ls_MessageAnalyserInterface'=null,'ls_ls_MessageParserInterface'=null,'ls_MessageParserInterface'=null,'ls_ls_ImageAnalyser_LoadBalancerInterface'=null,'ls_ImageAnalyser_LoadBalancerInterface'=null,'ls_ls_LinkAnalyser_LoadBalancerInterface'=null,'ls_LinkAnalyser_LoadBalancerInterface'=null,'ls_ls_DeploymentComponent'=null,'ls_DeploymentComponent'=null,'waiting_time'=null}).
'init_internal'()->
    #state{}.

 %% timesmartdel-orchs/Scale3.abs:29
'get_val_internal'(#state{'cloudProvider'=G},'cloudProvider')->
    object:register_read('cloudProvider'),
    G;
 %% timesmartdel-orchs/Scale3.abs:29
'get_val_internal'(#state{'messageParser_LoadBalancerObj'=G},'messageParser_LoadBalancerObj')->
    object:register_read('messageParser_LoadBalancerObj'),
    G;
 %% timesmartdel-orchs/Scale3.abs:29
'get_val_internal'(#state{'headerAnalyser_LoadBalancerObj'=G},'headerAnalyser_LoadBalancerObj')->
    object:register_read('headerAnalyser_LoadBalancerObj'),
    G;
 %% timesmartdel-orchs/Scale3.abs:29
'get_val_internal'(#state{'linkAnalyser_LoadBalancerObj'=G},'linkAnalyser_LoadBalancerObj')->
    object:register_read('linkAnalyser_LoadBalancerObj'),
    G;
 %% timesmartdel-orchs/Scale3.abs:29
'get_val_internal'(#state{'textAnalyser_LoadBalancerObj'=G},'textAnalyser_LoadBalancerObj')->
    object:register_read('textAnalyser_LoadBalancerObj'),
    G;
 %% timesmartdel-orchs/Scale3.abs:29
'get_val_internal'(#state{'virusScanner_LoadBalancerObj'=G},'virusScanner_LoadBalancerObj')->
    object:register_read('virusScanner_LoadBalancerObj'),
    G;
 %% timesmartdel-orchs/Scale3.abs:29
'get_val_internal'(#state{'attachmentsManager_LoadBalancerObj'=G},'attachmentsManager_LoadBalancerObj')->
    object:register_read('attachmentsManager_LoadBalancerObj'),
    G;
 %% timesmartdel-orchs/Scale3.abs:29
'get_val_internal'(#state{'imageAnalyser_LoadBalancerObj'=G},'imageAnalyser_LoadBalancerObj')->
    object:register_read('imageAnalyser_LoadBalancerObj'),
    G;
 %% timesmartdel-orchs/Scale3.abs:29
'get_val_internal'(#state{'messageAnalyser_LoadBalancerObj'=G},'messageAnalyser_LoadBalancerObj')->
    object:register_read('messageAnalyser_LoadBalancerObj'),
    G;
 %% timesmartdel-orchs/Scale3.abs:29
'get_val_internal'(#state{'dbObj'=G},'dbObj')->
    object:register_read('dbObj'),
    G;
 %% timesmartdel-orchs/Scale3.abs:31
'get_val_internal'(#state{'ls_ls_HeaderAnalyser_LoadBalancerInterface'=G},'ls_ls_HeaderAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ls_HeaderAnalyser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:32
'get_val_internal'(#state{'ls_HeaderAnalyser_LoadBalancerInterface'=G},'ls_HeaderAnalyser_LoadBalancerInterface')->
    object:register_read('ls_HeaderAnalyser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:33
'get_val_internal'(#state{'ls_ls_TextAnalyserInterface'=G},'ls_ls_TextAnalyserInterface')->
    object:register_read('ls_ls_TextAnalyserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:34
'get_val_internal'(#state{'ls_TextAnalyserInterface'=G},'ls_TextAnalyserInterface')->
    object:register_read('ls_TextAnalyserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:35
'get_val_internal'(#state{'ls_ls_VirusScanner_LoadBalancerInterface'=G},'ls_ls_VirusScanner_LoadBalancerInterface')->
    object:register_read('ls_ls_VirusScanner_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:36
'get_val_internal'(#state{'ls_VirusScanner_LoadBalancerInterface'=G},'ls_VirusScanner_LoadBalancerInterface')->
    object:register_read('ls_VirusScanner_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:37
'get_val_internal'(#state{'ls_ls_MessageAnalyser_LoadBalancerInterface'=G},'ls_ls_MessageAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ls_MessageAnalyser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:38
'get_val_internal'(#state{'ls_MessageAnalyser_LoadBalancerInterface'=G},'ls_MessageAnalyser_LoadBalancerInterface')->
    object:register_read('ls_MessageAnalyser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:39
'get_val_internal'(#state{'ls_ls_AttachmentsManager_LoadBalancerInterface'=G},'ls_ls_AttachmentsManager_LoadBalancerInterface')->
    object:register_read('ls_ls_AttachmentsManager_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:40
'get_val_internal'(#state{'ls_AttachmentsManager_LoadBalancerInterface'=G},'ls_AttachmentsManager_LoadBalancerInterface')->
    object:register_read('ls_AttachmentsManager_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:41
'get_val_internal'(#state{'ls_ls_AttachmentsManagerInterface'=G},'ls_ls_AttachmentsManagerInterface')->
    object:register_read('ls_ls_AttachmentsManagerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:42
'get_val_internal'(#state{'ls_AttachmentsManagerInterface'=G},'ls_AttachmentsManagerInterface')->
    object:register_read('ls_AttachmentsManagerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:43
'get_val_internal'(#state{'ls_ls_MessageParser_LoadBalancerInterface'=G},'ls_ls_MessageParser_LoadBalancerInterface')->
    object:register_read('ls_ls_MessageParser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:44
'get_val_internal'(#state{'ls_MessageParser_LoadBalancerInterface'=G},'ls_MessageParser_LoadBalancerInterface')->
    object:register_read('ls_MessageParser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:45
'get_val_internal'(#state{'ls_ls_ImageAnalyserInterface'=G},'ls_ls_ImageAnalyserInterface')->
    object:register_read('ls_ls_ImageAnalyserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:46
'get_val_internal'(#state{'ls_ImageAnalyserInterface'=G},'ls_ImageAnalyserInterface')->
    object:register_read('ls_ImageAnalyserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:47
'get_val_internal'(#state{'ls_ls_VirusScannerInterface'=G},'ls_ls_VirusScannerInterface')->
    object:register_read('ls_ls_VirusScannerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:48
'get_val_internal'(#state{'ls_VirusScannerInterface'=G},'ls_VirusScannerInterface')->
    object:register_read('ls_VirusScannerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:49
'get_val_internal'(#state{'ls_ls_TextAnalyser_LoadBalancerInterface'=G},'ls_ls_TextAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ls_TextAnalyser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:50
'get_val_internal'(#state{'ls_TextAnalyser_LoadBalancerInterface'=G},'ls_TextAnalyser_LoadBalancerInterface')->
    object:register_read('ls_TextAnalyser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:51
'get_val_internal'(#state{'ls_ls_LinkAnalyserInterface'=G},'ls_ls_LinkAnalyserInterface')->
    object:register_read('ls_ls_LinkAnalyserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:52
'get_val_internal'(#state{'ls_LinkAnalyserInterface'=G},'ls_LinkAnalyserInterface')->
    object:register_read('ls_LinkAnalyserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:53
'get_val_internal'(#state{'ls_ls_HeaderAnalyserInterface'=G},'ls_ls_HeaderAnalyserInterface')->
    object:register_read('ls_ls_HeaderAnalyserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:54
'get_val_internal'(#state{'ls_HeaderAnalyserInterface'=G},'ls_HeaderAnalyserInterface')->
    object:register_read('ls_HeaderAnalyserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:55
'get_val_internal'(#state{'ls_ls_MessageAnalyserInterface'=G},'ls_ls_MessageAnalyserInterface')->
    object:register_read('ls_ls_MessageAnalyserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:56
'get_val_internal'(#state{'ls_MessageAnalyserInterface'=G},'ls_MessageAnalyserInterface')->
    object:register_read('ls_MessageAnalyserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:57
'get_val_internal'(#state{'ls_ls_MessageParserInterface'=G},'ls_ls_MessageParserInterface')->
    object:register_read('ls_ls_MessageParserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:58
'get_val_internal'(#state{'ls_MessageParserInterface'=G},'ls_MessageParserInterface')->
    object:register_read('ls_MessageParserInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:59
'get_val_internal'(#state{'ls_ls_ImageAnalyser_LoadBalancerInterface'=G},'ls_ls_ImageAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ls_ImageAnalyser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:60
'get_val_internal'(#state{'ls_ImageAnalyser_LoadBalancerInterface'=G},'ls_ImageAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ImageAnalyser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:61
'get_val_internal'(#state{'ls_ls_LinkAnalyser_LoadBalancerInterface'=G},'ls_ls_LinkAnalyser_LoadBalancerInterface')->
    object:register_read('ls_ls_LinkAnalyser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:62
'get_val_internal'(#state{'ls_LinkAnalyser_LoadBalancerInterface'=G},'ls_LinkAnalyser_LoadBalancerInterface')->
    object:register_read('ls_LinkAnalyser_LoadBalancerInterface'),
    G;
 %% timesmartdel-orchs/Scale3.abs:63
'get_val_internal'(#state{'ls_ls_DeploymentComponent'=G},'ls_ls_DeploymentComponent')->
    object:register_read('ls_ls_DeploymentComponent'),
    G;
 %% timesmartdel-orchs/Scale3.abs:64
'get_val_internal'(#state{'ls_DeploymentComponent'=G},'ls_DeploymentComponent')->
    object:register_read('ls_DeploymentComponent'),
    G;
 %% timesmartdel-orchs/Scale3.abs:65
'get_val_internal'(#state{'waiting_time'=G},'waiting_time')->
    object:register_read('waiting_time'),
    G;
'get_val_internal'(_,_)->
    %% Invalid return value; handled by HTTP API when querying for non-existant field.
    %% Will never occur in generated code.
    none.

 %% timesmartdel-orchs/Scale3.abs:29
'set_val_internal'(S,'cloudProvider',V)->
    object:register_write('cloudProvider'),
    S#state{'cloudProvider'=V};
 %% timesmartdel-orchs/Scale3.abs:29
'set_val_internal'(S,'messageParser_LoadBalancerObj',V)->
    object:register_write('messageParser_LoadBalancerObj'),
    S#state{'messageParser_LoadBalancerObj'=V};
 %% timesmartdel-orchs/Scale3.abs:29
'set_val_internal'(S,'headerAnalyser_LoadBalancerObj',V)->
    object:register_write('headerAnalyser_LoadBalancerObj'),
    S#state{'headerAnalyser_LoadBalancerObj'=V};
 %% timesmartdel-orchs/Scale3.abs:29
'set_val_internal'(S,'linkAnalyser_LoadBalancerObj',V)->
    object:register_write('linkAnalyser_LoadBalancerObj'),
    S#state{'linkAnalyser_LoadBalancerObj'=V};
 %% timesmartdel-orchs/Scale3.abs:29
'set_val_internal'(S,'textAnalyser_LoadBalancerObj',V)->
    object:register_write('textAnalyser_LoadBalancerObj'),
    S#state{'textAnalyser_LoadBalancerObj'=V};
 %% timesmartdel-orchs/Scale3.abs:29
'set_val_internal'(S,'virusScanner_LoadBalancerObj',V)->
    object:register_write('virusScanner_LoadBalancerObj'),
    S#state{'virusScanner_LoadBalancerObj'=V};
 %% timesmartdel-orchs/Scale3.abs:29
'set_val_internal'(S,'attachmentsManager_LoadBalancerObj',V)->
    object:register_write('attachmentsManager_LoadBalancerObj'),
    S#state{'attachmentsManager_LoadBalancerObj'=V};
 %% timesmartdel-orchs/Scale3.abs:29
'set_val_internal'(S,'imageAnalyser_LoadBalancerObj',V)->
    object:register_write('imageAnalyser_LoadBalancerObj'),
    S#state{'imageAnalyser_LoadBalancerObj'=V};
 %% timesmartdel-orchs/Scale3.abs:29
'set_val_internal'(S,'messageAnalyser_LoadBalancerObj',V)->
    object:register_write('messageAnalyser_LoadBalancerObj'),
    S#state{'messageAnalyser_LoadBalancerObj'=V};
 %% timesmartdel-orchs/Scale3.abs:29
'set_val_internal'(S,'dbObj',V)->
    object:register_write('dbObj'),
    S#state{'dbObj'=V};
 %% timesmartdel-orchs/Scale3.abs:31
'set_val_internal'(S,'ls_ls_HeaderAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_HeaderAnalyser_LoadBalancerInterface'),
    S#state{'ls_ls_HeaderAnalyser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:32
'set_val_internal'(S,'ls_HeaderAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_HeaderAnalyser_LoadBalancerInterface'),
    S#state{'ls_HeaderAnalyser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:33
'set_val_internal'(S,'ls_ls_TextAnalyserInterface',V)->
    object:register_write('ls_ls_TextAnalyserInterface'),
    S#state{'ls_ls_TextAnalyserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:34
'set_val_internal'(S,'ls_TextAnalyserInterface',V)->
    object:register_write('ls_TextAnalyserInterface'),
    S#state{'ls_TextAnalyserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:35
'set_val_internal'(S,'ls_ls_VirusScanner_LoadBalancerInterface',V)->
    object:register_write('ls_ls_VirusScanner_LoadBalancerInterface'),
    S#state{'ls_ls_VirusScanner_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:36
'set_val_internal'(S,'ls_VirusScanner_LoadBalancerInterface',V)->
    object:register_write('ls_VirusScanner_LoadBalancerInterface'),
    S#state{'ls_VirusScanner_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:37
'set_val_internal'(S,'ls_ls_MessageAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_MessageAnalyser_LoadBalancerInterface'),
    S#state{'ls_ls_MessageAnalyser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:38
'set_val_internal'(S,'ls_MessageAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_MessageAnalyser_LoadBalancerInterface'),
    S#state{'ls_MessageAnalyser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:39
'set_val_internal'(S,'ls_ls_AttachmentsManager_LoadBalancerInterface',V)->
    object:register_write('ls_ls_AttachmentsManager_LoadBalancerInterface'),
    S#state{'ls_ls_AttachmentsManager_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:40
'set_val_internal'(S,'ls_AttachmentsManager_LoadBalancerInterface',V)->
    object:register_write('ls_AttachmentsManager_LoadBalancerInterface'),
    S#state{'ls_AttachmentsManager_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:41
'set_val_internal'(S,'ls_ls_AttachmentsManagerInterface',V)->
    object:register_write('ls_ls_AttachmentsManagerInterface'),
    S#state{'ls_ls_AttachmentsManagerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:42
'set_val_internal'(S,'ls_AttachmentsManagerInterface',V)->
    object:register_write('ls_AttachmentsManagerInterface'),
    S#state{'ls_AttachmentsManagerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:43
'set_val_internal'(S,'ls_ls_MessageParser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_MessageParser_LoadBalancerInterface'),
    S#state{'ls_ls_MessageParser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:44
'set_val_internal'(S,'ls_MessageParser_LoadBalancerInterface',V)->
    object:register_write('ls_MessageParser_LoadBalancerInterface'),
    S#state{'ls_MessageParser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:45
'set_val_internal'(S,'ls_ls_ImageAnalyserInterface',V)->
    object:register_write('ls_ls_ImageAnalyserInterface'),
    S#state{'ls_ls_ImageAnalyserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:46
'set_val_internal'(S,'ls_ImageAnalyserInterface',V)->
    object:register_write('ls_ImageAnalyserInterface'),
    S#state{'ls_ImageAnalyserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:47
'set_val_internal'(S,'ls_ls_VirusScannerInterface',V)->
    object:register_write('ls_ls_VirusScannerInterface'),
    S#state{'ls_ls_VirusScannerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:48
'set_val_internal'(S,'ls_VirusScannerInterface',V)->
    object:register_write('ls_VirusScannerInterface'),
    S#state{'ls_VirusScannerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:49
'set_val_internal'(S,'ls_ls_TextAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_TextAnalyser_LoadBalancerInterface'),
    S#state{'ls_ls_TextAnalyser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:50
'set_val_internal'(S,'ls_TextAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_TextAnalyser_LoadBalancerInterface'),
    S#state{'ls_TextAnalyser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:51
'set_val_internal'(S,'ls_ls_LinkAnalyserInterface',V)->
    object:register_write('ls_ls_LinkAnalyserInterface'),
    S#state{'ls_ls_LinkAnalyserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:52
'set_val_internal'(S,'ls_LinkAnalyserInterface',V)->
    object:register_write('ls_LinkAnalyserInterface'),
    S#state{'ls_LinkAnalyserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:53
'set_val_internal'(S,'ls_ls_HeaderAnalyserInterface',V)->
    object:register_write('ls_ls_HeaderAnalyserInterface'),
    S#state{'ls_ls_HeaderAnalyserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:54
'set_val_internal'(S,'ls_HeaderAnalyserInterface',V)->
    object:register_write('ls_HeaderAnalyserInterface'),
    S#state{'ls_HeaderAnalyserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:55
'set_val_internal'(S,'ls_ls_MessageAnalyserInterface',V)->
    object:register_write('ls_ls_MessageAnalyserInterface'),
    S#state{'ls_ls_MessageAnalyserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:56
'set_val_internal'(S,'ls_MessageAnalyserInterface',V)->
    object:register_write('ls_MessageAnalyserInterface'),
    S#state{'ls_MessageAnalyserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:57
'set_val_internal'(S,'ls_ls_MessageParserInterface',V)->
    object:register_write('ls_ls_MessageParserInterface'),
    S#state{'ls_ls_MessageParserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:58
'set_val_internal'(S,'ls_MessageParserInterface',V)->
    object:register_write('ls_MessageParserInterface'),
    S#state{'ls_MessageParserInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:59
'set_val_internal'(S,'ls_ls_ImageAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_ImageAnalyser_LoadBalancerInterface'),
    S#state{'ls_ls_ImageAnalyser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:60
'set_val_internal'(S,'ls_ImageAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ImageAnalyser_LoadBalancerInterface'),
    S#state{'ls_ImageAnalyser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:61
'set_val_internal'(S,'ls_ls_LinkAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_ls_LinkAnalyser_LoadBalancerInterface'),
    S#state{'ls_ls_LinkAnalyser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:62
'set_val_internal'(S,'ls_LinkAnalyser_LoadBalancerInterface',V)->
    object:register_write('ls_LinkAnalyser_LoadBalancerInterface'),
    S#state{'ls_LinkAnalyser_LoadBalancerInterface'=V};
 %% timesmartdel-orchs/Scale3.abs:63
'set_val_internal'(S,'ls_ls_DeploymentComponent',V)->
    object:register_write('ls_ls_DeploymentComponent'),
    S#state{'ls_ls_DeploymentComponent'=V};
 %% timesmartdel-orchs/Scale3.abs:64
'set_val_internal'(S,'ls_DeploymentComponent',V)->
    object:register_write('ls_DeploymentComponent'),
    S#state{'ls_DeploymentComponent'=V};
 %% timesmartdel-orchs/Scale3.abs:65
'set_val_internal'(S,'waiting_time',V)->
    object:register_write('waiting_time'),
    S#state{'waiting_time'=V}.

'get_state_for_modelapi'(S)->
    [
        { 'cloudProvider', S#state.'cloudProvider' }
        , { 'messageParser_LoadBalancerObj', S#state.'messageParser_LoadBalancerObj' }
        , { 'headerAnalyser_LoadBalancerObj', S#state.'headerAnalyser_LoadBalancerObj' }
        , { 'linkAnalyser_LoadBalancerObj', S#state.'linkAnalyser_LoadBalancerObj' }
        , { 'textAnalyser_LoadBalancerObj', S#state.'textAnalyser_LoadBalancerObj' }
        , { 'virusScanner_LoadBalancerObj', S#state.'virusScanner_LoadBalancerObj' }
        , { 'attachmentsManager_LoadBalancerObj', S#state.'attachmentsManager_LoadBalancerObj' }
        , { 'imageAnalyser_LoadBalancerObj', S#state.'imageAnalyser_LoadBalancerObj' }
        , { 'messageAnalyser_LoadBalancerObj', S#state.'messageAnalyser_LoadBalancerObj' }
        , { 'dbObj', S#state.'dbObj' }
        , { 'ls_ls_HeaderAnalyser_LoadBalancerInterface', S#state.'ls_ls_HeaderAnalyser_LoadBalancerInterface' }
        , { 'ls_HeaderAnalyser_LoadBalancerInterface', S#state.'ls_HeaderAnalyser_LoadBalancerInterface' }
        , { 'ls_ls_TextAnalyserInterface', S#state.'ls_ls_TextAnalyserInterface' }
        , { 'ls_TextAnalyserInterface', S#state.'ls_TextAnalyserInterface' }
        , { 'ls_ls_VirusScanner_LoadBalancerInterface', S#state.'ls_ls_VirusScanner_LoadBalancerInterface' }
        , { 'ls_VirusScanner_LoadBalancerInterface', S#state.'ls_VirusScanner_LoadBalancerInterface' }
        , { 'ls_ls_MessageAnalyser_LoadBalancerInterface', S#state.'ls_ls_MessageAnalyser_LoadBalancerInterface' }
        , { 'ls_MessageAnalyser_LoadBalancerInterface', S#state.'ls_MessageAnalyser_LoadBalancerInterface' }
        , { 'ls_ls_AttachmentsManager_LoadBalancerInterface', S#state.'ls_ls_AttachmentsManager_LoadBalancerInterface' }
        , { 'ls_AttachmentsManager_LoadBalancerInterface', S#state.'ls_AttachmentsManager_LoadBalancerInterface' }
        , { 'ls_ls_AttachmentsManagerInterface', S#state.'ls_ls_AttachmentsManagerInterface' }
        , { 'ls_AttachmentsManagerInterface', S#state.'ls_AttachmentsManagerInterface' }
        , { 'ls_ls_MessageParser_LoadBalancerInterface', S#state.'ls_ls_MessageParser_LoadBalancerInterface' }
        , { 'ls_MessageParser_LoadBalancerInterface', S#state.'ls_MessageParser_LoadBalancerInterface' }
        , { 'ls_ls_ImageAnalyserInterface', S#state.'ls_ls_ImageAnalyserInterface' }
        , { 'ls_ImageAnalyserInterface', S#state.'ls_ImageAnalyserInterface' }
        , { 'ls_ls_VirusScannerInterface', S#state.'ls_ls_VirusScannerInterface' }
        , { 'ls_VirusScannerInterface', S#state.'ls_VirusScannerInterface' }
        , { 'ls_ls_TextAnalyser_LoadBalancerInterface', S#state.'ls_ls_TextAnalyser_LoadBalancerInterface' }
        , { 'ls_TextAnalyser_LoadBalancerInterface', S#state.'ls_TextAnalyser_LoadBalancerInterface' }
        , { 'ls_ls_LinkAnalyserInterface', S#state.'ls_ls_LinkAnalyserInterface' }
        , { 'ls_LinkAnalyserInterface', S#state.'ls_LinkAnalyserInterface' }
        , { 'ls_ls_HeaderAnalyserInterface', S#state.'ls_ls_HeaderAnalyserInterface' }
        , { 'ls_HeaderAnalyserInterface', S#state.'ls_HeaderAnalyserInterface' }
        , { 'ls_ls_MessageAnalyserInterface', S#state.'ls_ls_MessageAnalyserInterface' }
        , { 'ls_MessageAnalyserInterface', S#state.'ls_MessageAnalyserInterface' }
        , { 'ls_ls_MessageParserInterface', S#state.'ls_ls_MessageParserInterface' }
        , { 'ls_MessageParserInterface', S#state.'ls_MessageParserInterface' }
        , { 'ls_ls_ImageAnalyser_LoadBalancerInterface', S#state.'ls_ls_ImageAnalyser_LoadBalancerInterface' }
        , { 'ls_ImageAnalyser_LoadBalancerInterface', S#state.'ls_ImageAnalyser_LoadBalancerInterface' }
        , { 'ls_ls_LinkAnalyser_LoadBalancerInterface', S#state.'ls_ls_LinkAnalyser_LoadBalancerInterface' }
        , { 'ls_LinkAnalyser_LoadBalancerInterface', S#state.'ls_LinkAnalyser_LoadBalancerInterface' }
        , { 'ls_ls_DeploymentComponent', S#state.'ls_ls_DeploymentComponent' }
        , { 'ls_DeploymentComponent', S#state.'ls_DeploymentComponent' }
        , { 'waiting_time', S#state.'waiting_time' }
    ].
%% --- Constructor: field initializers and init block

'init'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},[P_cloudProvider,P_messageParser_LoadBalancerObj,P_headerAnalyser_LoadBalancerObj,P_linkAnalyser_LoadBalancerObj,P_textAnalyser_LoadBalancerObj,P_virusScanner_LoadBalancerObj,P_attachmentsManager_LoadBalancerObj,P_imageAnalyser_LoadBalancerObj,P_messageAnalyser_LoadBalancerObj,P_dbObj,Stack])->
    C=(get(this))#state.class,
    put(vars, #{}),
    put(this, C:set_val_internal(get(this),'cloudProvider',P_cloudProvider)),
    put(this, C:set_val_internal(get(this),'messageParser_LoadBalancerObj',P_messageParser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'headerAnalyser_LoadBalancerObj',P_headerAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'linkAnalyser_LoadBalancerObj',P_linkAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'textAnalyser_LoadBalancerObj',P_textAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'virusScanner_LoadBalancerObj',P_virusScanner_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'attachmentsManager_LoadBalancerObj',P_attachmentsManager_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'imageAnalyser_LoadBalancerObj',P_imageAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'messageAnalyser_LoadBalancerObj',P_messageAnalyser_LoadBalancerObj)),
    put(this, C:set_val_internal(get(this),'dbObj',P_dbObj)),
     %% timesmartdel-orchs/Scale3.abs:31--31
    put(this, C:set_val_internal(get(this),'ls_ls_HeaderAnalyser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:32--32
    put(this, C:set_val_internal(get(this),'ls_HeaderAnalyser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:33--33
    put(this, C:set_val_internal(get(this),'ls_ls_TextAnalyserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:34--34
    put(this, C:set_val_internal(get(this),'ls_TextAnalyserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:35--35
    put(this, C:set_val_internal(get(this),'ls_ls_VirusScanner_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:36--36
    put(this, C:set_val_internal(get(this),'ls_VirusScanner_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:37--37
    put(this, C:set_val_internal(get(this),'ls_ls_MessageAnalyser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:38--38
    put(this, C:set_val_internal(get(this),'ls_MessageAnalyser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:39--39
    put(this, C:set_val_internal(get(this),'ls_ls_AttachmentsManager_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:40--40
    put(this, C:set_val_internal(get(this),'ls_AttachmentsManager_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:41--41
    put(this, C:set_val_internal(get(this),'ls_ls_AttachmentsManagerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:42--42
    put(this, C:set_val_internal(get(this),'ls_AttachmentsManagerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:43--43
    put(this, C:set_val_internal(get(this),'ls_ls_MessageParser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:44--44
    put(this, C:set_val_internal(get(this),'ls_MessageParser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:45--45
    put(this, C:set_val_internal(get(this),'ls_ls_ImageAnalyserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:46--46
    put(this, C:set_val_internal(get(this),'ls_ImageAnalyserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:47--47
    put(this, C:set_val_internal(get(this),'ls_ls_VirusScannerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:48--48
    put(this, C:set_val_internal(get(this),'ls_VirusScannerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:49--49
    put(this, C:set_val_internal(get(this),'ls_ls_TextAnalyser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:50--50
    put(this, C:set_val_internal(get(this),'ls_TextAnalyser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:51--51
    put(this, C:set_val_internal(get(this),'ls_ls_LinkAnalyserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:52--52
    put(this, C:set_val_internal(get(this),'ls_LinkAnalyserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:53--53
    put(this, C:set_val_internal(get(this),'ls_ls_HeaderAnalyserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:54--54
    put(this, C:set_val_internal(get(this),'ls_HeaderAnalyserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:55--55
    put(this, C:set_val_internal(get(this),'ls_ls_MessageAnalyserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:56--56
    put(this, C:set_val_internal(get(this),'ls_MessageAnalyserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:57--57
    put(this, C:set_val_internal(get(this),'ls_ls_MessageParserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:58--58
    put(this, C:set_val_internal(get(this),'ls_MessageParserInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:59--59
    put(this, C:set_val_internal(get(this),'ls_ls_ImageAnalyser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:60--60
    put(this, C:set_val_internal(get(this),'ls_ImageAnalyser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:61--61
    put(this, C:set_val_internal(get(this),'ls_ls_LinkAnalyser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:62--62
    put(this, C:set_val_internal(get(this),'ls_LinkAnalyser_LoadBalancerInterface',[])),
     %% timesmartdel-orchs/Scale3.abs:63--63
    put(this, C:set_val_internal(get(this),'ls_ls_DeploymentComponent',[])),
     %% timesmartdel-orchs/Scale3.abs:64--64
    put(this, C:set_val_internal(get(this),'ls_DeploymentComponent',[])),
     %% timesmartdel-orchs/Scale3.abs:65--65
    put(this, C:set_val_internal(get(this),'waiting_time',10)),
     %% timesmartdel-orchs/Scale3.abs:67--74
    T_1 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,796}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,2000}, { dataPair,dataMemory,3000}, { dataPair,dataCores,16}, { dataPair,dataSpeed,80}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,796}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,2000}, { dataPair,dataMemory,3000}, { dataPair,dataCores,16}, { dataPair,dataSpeed,80}] ,[O,DC| Stack])},
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
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_4xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,796}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,2000}, { dataPair,dataMemory,3000}, { dataPair,dataCores,16}, { dataPair,dataSpeed,80}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_1,
     %% timesmartdel-orchs/Scale3.abs:75--82
    T_2 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,199}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,750}, { dataPair,dataMemory,750}, { dataPair,dataCores,4}, { dataPair,dataSpeed,20}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,199}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,750}, { dataPair,dataMemory,750}, { dataPair,dataCores,4}, { dataPair,dataSpeed,20}] ,[O,DC| Stack])},
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
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,199}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,750}, { dataPair,dataMemory,750}, { dataPair,dataCores,4}, { dataPair,dataSpeed,20}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_2,
     %% timesmartdel-orchs/Scale3.abs:83--90
    T_3 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,100}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,500}, { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,100}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,500}, { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},
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
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_large"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,100}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,500}, { dataPair,dataMemory,375}, { dataPair,dataCores,2}, { dataPair,dataSpeed,10}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_3,
     %% timesmartdel-orchs/Scale3.abs:91--98
    T_4 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
        null -> throw(dataNullPointerException);
        Callee=#object{oid=Oid,cog=Cog} ->
            %% self-call
            Vars=get(vars),
            Result=C:'m_addInstanceDescription'(Callee,{ dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,398}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,1000}, { dataPair,dataMemory,1500}, { dataPair,dataCores,8}, { dataPair,dataSpeed,40}] ,[O,DC| Stack])},[O,DC,Vars| Stack]),
            put(vars, Vars),
            Result;
        Callee=#object{oid=ObjRef,cog=Cog} ->
            %% cog-local call
            V_instanceDescription = { dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,398}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,1000}, { dataPair,dataMemory,1500}, { dataPair,dataCores,8}, { dataPair,dataSpeed,40}] ,[O,DC| Stack])},
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
            TempFuture = cog:create_task(Callee,'m_addInstanceDescription',[{ dataPair,<<"c4_2xlarge"/utf8>>,m_ABS_StdLib_funs:f_map(Cog,[ { dataPair,dataCostPerInterval,398}, { dataPair,dataPaymentInterval,1}, { dataPair,dataBandwidth,1000}, { dataPair,dataMemory,1500}, { dataPair,dataCores,8}, { dataPair,dataSpeed,40}] ,[O,DC| Stack])},[]],#task_info{method= <<"addInstanceDescription"/utf8>>},Cog),
            future:get_blocking(TempFuture, Cog, [O,DC| Stack])
    end end)(),
    T_4,
    gc:register_object(O),
    O.
%% --- Class has no recovery block

%% --- Methods

 %% timesmartdel-orchs/Scale3.abs:101
 %% timesmartdel-orchs/Scale3.abs:101
'm_getHeaderAnalyser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:101--101
        C:get_val_internal(get(this), 'ls_HeaderAnalyser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getHeaderAnalyser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:102
 %% timesmartdel-orchs/Scale3.abs:102
'm_getTextAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:102--102
        C:get_val_internal(get(this), 'ls_TextAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getTextAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:103
 %% timesmartdel-orchs/Scale3.abs:103
'm_getVirusScanner_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:103--103
        C:get_val_internal(get(this), 'ls_VirusScanner_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getVirusScanner_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:104
 %% timesmartdel-orchs/Scale3.abs:104
'm_getMessageAnalyser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:104--104
        C:get_val_internal(get(this), 'ls_MessageAnalyser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getMessageAnalyser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:105
 %% timesmartdel-orchs/Scale3.abs:105
'm_getAttachmentsManager_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:105--105
        C:get_val_internal(get(this), 'ls_AttachmentsManager_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getAttachmentsManager_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:106
 %% timesmartdel-orchs/Scale3.abs:106
'm_getAttachmentsManagerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:106--106
        C:get_val_internal(get(this), 'ls_AttachmentsManagerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getAttachmentsManagerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:107
 %% timesmartdel-orchs/Scale3.abs:107
'm_getMessageParser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:107--107
        C:get_val_internal(get(this), 'ls_MessageParser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getMessageParser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:108
 %% timesmartdel-orchs/Scale3.abs:108
'm_getImageAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:108--108
        C:get_val_internal(get(this), 'ls_ImageAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getImageAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:109
 %% timesmartdel-orchs/Scale3.abs:109
'm_getVirusScannerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:109--109
        C:get_val_internal(get(this), 'ls_VirusScannerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getVirusScannerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:110
 %% timesmartdel-orchs/Scale3.abs:110
'm_getTextAnalyser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:110--110
        C:get_val_internal(get(this), 'ls_TextAnalyser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getTextAnalyser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:111
 %% timesmartdel-orchs/Scale3.abs:111
'm_getLinkAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:111--111
        C:get_val_internal(get(this), 'ls_LinkAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getLinkAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:112
 %% timesmartdel-orchs/Scale3.abs:112
'm_getHeaderAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:112--112
        C:get_val_internal(get(this), 'ls_HeaderAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getHeaderAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:113
 %% timesmartdel-orchs/Scale3.abs:113
'm_getMessageAnalyserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:113--113
        C:get_val_internal(get(this), 'ls_MessageAnalyserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getMessageAnalyserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:114
 %% timesmartdel-orchs/Scale3.abs:114
'm_getMessageParserInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:114--114
        C:get_val_internal(get(this), 'ls_MessageParserInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getMessageParserInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:115
 %% timesmartdel-orchs/Scale3.abs:115
'm_getImageAnalyser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:115--115
        C:get_val_internal(get(this), 'ls_ImageAnalyser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getImageAnalyser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:116
 %% timesmartdel-orchs/Scale3.abs:116
'm_getLinkAnalyser_LoadBalancerInterface'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:116--116
        C:get_val_internal(get(this), 'ls_LinkAnalyser_LoadBalancerInterface')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getLinkAnalyser_LoadBalancerInterface and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:117
 %% timesmartdel-orchs/Scale3.abs:117
'm_getDeploymentComponent'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:117--117
        C:get_val_internal(get(this), 'ls_DeploymentComponent')
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method getDeploymentComponent and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:119
 %% timesmartdel-orchs/Scale3.abs:119
'm_deploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:120--120
        put(this, C:set_val_internal(get(this), 'ls_ls_HeaderAnalyser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_HeaderAnalyser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_HeaderAnalyser_LoadBalancerInterface')])),
         %% timesmartdel-orchs/Scale3.abs:121--121
        put(this, C:set_val_internal(get(this), 'ls_HeaderAnalyser_LoadBalancerInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:122--122
        put(this, C:set_val_internal(get(this), 'ls_ls_TextAnalyserInterface',[C:get_val_internal(get(this), 'ls_TextAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_TextAnalyserInterface')])),
         %% timesmartdel-orchs/Scale3.abs:123--123
        put(this, C:set_val_internal(get(this), 'ls_TextAnalyserInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:124--124
        put(this, C:set_val_internal(get(this), 'ls_ls_VirusScanner_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_VirusScanner_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_VirusScanner_LoadBalancerInterface')])),
         %% timesmartdel-orchs/Scale3.abs:125--125
        put(this, C:set_val_internal(get(this), 'ls_VirusScanner_LoadBalancerInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:126--126
        put(this, C:set_val_internal(get(this), 'ls_ls_MessageAnalyser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_MessageAnalyser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_MessageAnalyser_LoadBalancerInterface')])),
         %% timesmartdel-orchs/Scale3.abs:127--127
        put(this, C:set_val_internal(get(this), 'ls_MessageAnalyser_LoadBalancerInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:128--128
        put(this, C:set_val_internal(get(this), 'ls_ls_AttachmentsManager_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_AttachmentsManager_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_AttachmentsManager_LoadBalancerInterface')])),
         %% timesmartdel-orchs/Scale3.abs:129--129
        put(this, C:set_val_internal(get(this), 'ls_AttachmentsManager_LoadBalancerInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:130--130
        put(this, C:set_val_internal(get(this), 'ls_ls_AttachmentsManagerInterface',[C:get_val_internal(get(this), 'ls_AttachmentsManagerInterface') | C:get_val_internal(get(this), 'ls_ls_AttachmentsManagerInterface')])),
         %% timesmartdel-orchs/Scale3.abs:131--131
        put(this, C:set_val_internal(get(this), 'ls_AttachmentsManagerInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:132--132
        put(this, C:set_val_internal(get(this), 'ls_ls_MessageParser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_MessageParser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_MessageParser_LoadBalancerInterface')])),
         %% timesmartdel-orchs/Scale3.abs:133--133
        put(this, C:set_val_internal(get(this), 'ls_MessageParser_LoadBalancerInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:134--134
        put(this, C:set_val_internal(get(this), 'ls_ls_ImageAnalyserInterface',[C:get_val_internal(get(this), 'ls_ImageAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_ImageAnalyserInterface')])),
         %% timesmartdel-orchs/Scale3.abs:135--135
        put(this, C:set_val_internal(get(this), 'ls_ImageAnalyserInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:136--136
        put(this, C:set_val_internal(get(this), 'ls_ls_VirusScannerInterface',[C:get_val_internal(get(this), 'ls_VirusScannerInterface') | C:get_val_internal(get(this), 'ls_ls_VirusScannerInterface')])),
         %% timesmartdel-orchs/Scale3.abs:137--137
        put(this, C:set_val_internal(get(this), 'ls_VirusScannerInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:138--138
        put(this, C:set_val_internal(get(this), 'ls_ls_TextAnalyser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_TextAnalyser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_TextAnalyser_LoadBalancerInterface')])),
         %% timesmartdel-orchs/Scale3.abs:139--139
        put(this, C:set_val_internal(get(this), 'ls_TextAnalyser_LoadBalancerInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:140--140
        put(this, C:set_val_internal(get(this), 'ls_ls_LinkAnalyserInterface',[C:get_val_internal(get(this), 'ls_LinkAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_LinkAnalyserInterface')])),
         %% timesmartdel-orchs/Scale3.abs:141--141
        put(this, C:set_val_internal(get(this), 'ls_LinkAnalyserInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:142--142
        put(this, C:set_val_internal(get(this), 'ls_ls_HeaderAnalyserInterface',[C:get_val_internal(get(this), 'ls_HeaderAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_HeaderAnalyserInterface')])),
         %% timesmartdel-orchs/Scale3.abs:143--143
        put(this, C:set_val_internal(get(this), 'ls_HeaderAnalyserInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:144--144
        put(this, C:set_val_internal(get(this), 'ls_ls_MessageAnalyserInterface',[C:get_val_internal(get(this), 'ls_MessageAnalyserInterface') | C:get_val_internal(get(this), 'ls_ls_MessageAnalyserInterface')])),
         %% timesmartdel-orchs/Scale3.abs:145--145
        put(this, C:set_val_internal(get(this), 'ls_MessageAnalyserInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:146--146
        put(this, C:set_val_internal(get(this), 'ls_ls_MessageParserInterface',[C:get_val_internal(get(this), 'ls_MessageParserInterface') | C:get_val_internal(get(this), 'ls_ls_MessageParserInterface')])),
         %% timesmartdel-orchs/Scale3.abs:147--147
        put(this, C:set_val_internal(get(this), 'ls_MessageParserInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:148--148
        put(this, C:set_val_internal(get(this), 'ls_ls_ImageAnalyser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_ImageAnalyser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_ImageAnalyser_LoadBalancerInterface')])),
         %% timesmartdel-orchs/Scale3.abs:149--149
        put(this, C:set_val_internal(get(this), 'ls_ImageAnalyser_LoadBalancerInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:150--150
        put(this, C:set_val_internal(get(this), 'ls_ls_LinkAnalyser_LoadBalancerInterface',[C:get_val_internal(get(this), 'ls_LinkAnalyser_LoadBalancerInterface') | C:get_val_internal(get(this), 'ls_ls_LinkAnalyser_LoadBalancerInterface')])),
         %% timesmartdel-orchs/Scale3.abs:151--151
        put(this, C:set_val_internal(get(this), 'ls_LinkAnalyser_LoadBalancerInterface',[])),
         %% timesmartdel-orchs/Scale3.abs:152--152
        put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',[C:get_val_internal(get(this), 'ls_DeploymentComponent') | C:get_val_internal(get(this), 'ls_ls_DeploymentComponent')])),
         %% timesmartdel-orchs/Scale3.abs:153--153
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[])),
         %% timesmartdel-orchs/Scale3.abs:154--154
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
                TempFuture = cog:create_task(Callee,'m_deploy_aux',[[]],#task_info{method= <<"deploy_aux"/utf8>>},Cog),
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
 %% timesmartdel-orchs/Scale3.abs:157
 %% timesmartdel-orchs/Scale3.abs:157
'm_undeploy'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:158--158
        case (not cmp:eq(C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[])) of
            true ->  %% timesmartdel-orchs/Scale3.abs:159--159
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
                    TempFuture = cog:create_task(Callee,'m_undeploy_aux',[[]],#task_info{method= <<"undeploy_aux"/utf8>>},Cog),
                    future:get_blocking(TempFuture, Cog, [O,DC| Stack])
            end end)(),
            T_1,
             %% timesmartdel-orchs/Scale3.abs:160--160
            put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:161--161
            put(this, C:set_val_internal(get(this), 'ls_ls_DeploymentComponent',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_DeploymentComponent'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:162--162
            put(this, C:set_val_internal(get(this), 'ls_HeaderAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_HeaderAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:163--163
            put(this, C:set_val_internal(get(this), 'ls_TextAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_TextAnalyserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:164--164
            put(this, C:set_val_internal(get(this), 'ls_VirusScanner_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_VirusScanner_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:165--165
            put(this, C:set_val_internal(get(this), 'ls_MessageAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_MessageAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:166--166
            put(this, C:set_val_internal(get(this), 'ls_AttachmentsManager_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_AttachmentsManager_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:167--167
            put(this, C:set_val_internal(get(this), 'ls_AttachmentsManagerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_AttachmentsManagerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:168--168
            put(this, C:set_val_internal(get(this), 'ls_MessageParser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_MessageParser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:169--169
            put(this, C:set_val_internal(get(this), 'ls_ImageAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_ImageAnalyserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:170--170
            put(this, C:set_val_internal(get(this), 'ls_VirusScannerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_VirusScannerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:171--171
            put(this, C:set_val_internal(get(this), 'ls_TextAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_TextAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:172--172
            put(this, C:set_val_internal(get(this), 'ls_LinkAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_LinkAnalyserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:173--173
            put(this, C:set_val_internal(get(this), 'ls_HeaderAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_HeaderAnalyserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:174--174
            put(this, C:set_val_internal(get(this), 'ls_MessageAnalyserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_MessageAnalyserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:175--175
            put(this, C:set_val_internal(get(this), 'ls_MessageParserInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_MessageParserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:176--176
            put(this, C:set_val_internal(get(this), 'ls_ImageAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_ImageAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:177--177
            put(this, C:set_val_internal(get(this), 'ls_LinkAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_ls_LinkAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:178--178
            put(this, C:set_val_internal(get(this), 'ls_ls_HeaderAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_HeaderAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:179--179
            put(this, C:set_val_internal(get(this), 'ls_ls_TextAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_TextAnalyserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:180--180
            put(this, C:set_val_internal(get(this), 'ls_ls_VirusScanner_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_VirusScanner_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:181--181
            put(this, C:set_val_internal(get(this), 'ls_ls_MessageAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_MessageAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:182--182
            put(this, C:set_val_internal(get(this), 'ls_ls_AttachmentsManager_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_AttachmentsManager_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:183--183
            put(this, C:set_val_internal(get(this), 'ls_ls_AttachmentsManagerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_AttachmentsManagerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:184--184
            put(this, C:set_val_internal(get(this), 'ls_ls_MessageParser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_MessageParser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:185--185
            put(this, C:set_val_internal(get(this), 'ls_ls_ImageAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_ImageAnalyserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:186--186
            put(this, C:set_val_internal(get(this), 'ls_ls_VirusScannerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_VirusScannerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:187--187
            put(this, C:set_val_internal(get(this), 'ls_ls_TextAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_TextAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:188--188
            put(this, C:set_val_internal(get(this), 'ls_ls_LinkAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_LinkAnalyserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:189--189
            put(this, C:set_val_internal(get(this), 'ls_ls_HeaderAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_HeaderAnalyserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:190--190
            put(this, C:set_val_internal(get(this), 'ls_ls_MessageAnalyserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_MessageAnalyserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:191--191
            put(this, C:set_val_internal(get(this), 'ls_ls_MessageParserInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_MessageParserInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:192--192
            put(this, C:set_val_internal(get(this), 'ls_ls_ImageAnalyser_LoadBalancerInterface',m_ABS_StdLib_funs:f_tail(Cog,C:get_val_internal(get(this), 'ls_ls_ImageAnalyser_LoadBalancerInterface'),[O,DC| Stack]))),
             %% timesmartdel-orchs/Scale3.abs:193--193
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
 %% timesmartdel-orchs/Scale3.abs:198
 %% timesmartdel-orchs/Scale3.abs:198
'm_deploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:199--199
        put(vars, (get(vars))#{'speedPatchMap' => m_ABS_StdLib_funs:f_map(Cog,[],[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:200--200
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
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_xlarge"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% timesmartdel-orchs/Scale3.abs:201--201
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_xlarge_1', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% timesmartdel-orchs/Scale3.abs:202--202
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_1', get(vars)),0,[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:203--203
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
                TempFuture = cog:create_task(Callee,'m_launchInstanceNamed',[<<"c4_xlarge"/utf8>>,[]],#task_info{method= <<"launchInstanceNamed"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)()}),
         %% timesmartdel-orchs/Scale3.abs:204--204
        put(this, C:set_val_internal(get(this), 'ls_DeploymentComponent',[maps:get('c4_xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_DeploymentComponent')])),
         %% timesmartdel-orchs/Scale3.abs:205--205
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_0', get(vars)),0,[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:206--206
        put(vars, (get(vars))#{'odefault___MessageAnalyser_0_c4_xlarge_0' => object:new(cog:start(Cog,maps:get('c4_xlarge_0', get(vars))),class_Architecture_MessageAnalyser,[C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:207--207
        put(vars, (get(vars))#{'coreRequired_odefault___MessageAnalyser_0_c4_xlarge_0' => 1}),
         %% timesmartdel-orchs/Scale3.abs:208--208
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___MessageAnalyser_0_c4_xlarge_0', get(vars)))) ,[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:209--209
        put(this, C:set_val_internal(get(this), 'ls_MessageAnalyserInterface',[maps:get('odefault___MessageAnalyser_0_c4_xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_MessageAnalyserInterface')])),
         %% timesmartdel-orchs/Scale3.abs:210--210
        put(vars, (get(vars))#{'odefault___VirusScanner_0_c4_xlarge_1' => object:new(cog:start(Cog,maps:get('c4_xlarge_1', get(vars))),class_Architecture_VirusScanner,[C:get_val_internal(get(this), 'attachmentsManager_LoadBalancerObj'),C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj'),[]],Cog,[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:211--211
        put(vars, (get(vars))#{'coreRequired_odefault___VirusScanner_0_c4_xlarge_1' => 4}),
         %% timesmartdel-orchs/Scale3.abs:212--212
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_1', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_1', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___VirusScanner_0_c4_xlarge_1', get(vars)))) ,[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:213--213
        put(this, C:set_val_internal(get(this), 'ls_VirusScannerInterface',[maps:get('odefault___VirusScanner_0_c4_xlarge_1', get(vars)) | C:get_val_internal(get(this), 'ls_VirusScannerInterface')])),
         %% timesmartdel-orchs/Scale3.abs:214--214
        put(vars, (get(vars))#{'odefault___MessageParser_0_c4_xlarge_0' => object:new(cog:start(Cog,maps:get('c4_xlarge_0', get(vars))),class_Architecture_MessageParser,[C:get_val_internal(get(this), 'headerAnalyser_LoadBalancerObj'),C:get_val_internal(get(this), 'linkAnalyser_LoadBalancerObj'),C:get_val_internal(get(this), 'textAnalyser_LoadBalancerObj'),C:get_val_internal(get(this), 'virusScanner_LoadBalancerObj'),C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj'),C:get_val_internal(get(this), 'dbObj'),[]],Cog,[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:215--215
        put(vars, (get(vars))#{'coreRequired_odefault___MessageParser_0_c4_xlarge_0' => 1}),
         %% timesmartdel-orchs/Scale3.abs:216--216
        put(vars, (get(vars))#{'speedPatchMap' := m_ABS_StdLib_funs:f_put(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_0', get(vars)),( rationals:add(m_ABS_StdLib_funs:f_fromJust(Cog,m_ABS_StdLib_funs:f_lookup(Cog,maps:get('speedPatchMap', get(vars)),maps:get('c4_xlarge_0', get(vars)),[O,DC| Stack]),[O,DC| Stack]),maps:get('coreRequired_odefault___MessageParser_0_c4_xlarge_0', get(vars)))) ,[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:217--217
        put(this, C:set_val_internal(get(this), 'ls_MessageParserInterface',[maps:get('odefault___MessageParser_0_c4_xlarge_0', get(vars)) | C:get_val_internal(get(this), 'ls_MessageParserInterface')])),
         %% timesmartdel-orchs/Scale3.abs:218--218
        T_1 = cog:create_task(O,'m_patchSpeed',[maps:get('speedPatchMap', get(vars)),[]],#task_info{method= <<"patchSpeed"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
        T_1,
         %% timesmartdel-orchs/Scale3.abs:219--219
        cog:suspend_current_task_for_duration(Cog,C:get_val_internal(get(this), 'waiting_time'),C:get_val_internal(get(this), 'waiting_time'),[O,DC| Stack]),
        ok,
         %% timesmartdel-orchs/Scale3.abs:220--220
        T_2 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___MessageAnalyser_0_c4_xlarge_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___MessageAnalyser_0_c4_xlarge_0', get(vars)),
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
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___MessageAnalyser_0_c4_xlarge_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
         %% timesmartdel-orchs/Scale3.abs:221--221
        T_3 = (fun() -> case C:get_val_internal(get(this), 'virusScanner_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___VirusScanner_0_c4_xlarge_1', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___VirusScanner_0_c4_xlarge_1', get(vars)),
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
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___VirusScanner_0_c4_xlarge_1', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_3,
         %% timesmartdel-orchs/Scale3.abs:222--222
        T_4 = (fun() -> case C:get_val_internal(get(this), 'messageParser_LoadBalancerObj') of
            null -> throw(dataNullPointerException);
            Callee=#object{oid=Oid,cog=Cog} ->
                %% self-call
                Vars=get(vars),
                Result=C:'m_connectInstance'(Callee,maps:get('odefault___MessageParser_0_c4_xlarge_0', get(vars)),[O,DC,Vars| Stack]),
                put(vars, Vars),
                Result;
            Callee=#object{oid=ObjRef,cog=Cog} ->
                %% cog-local call
                V_newInstance = maps:get('odefault___MessageParser_0_c4_xlarge_0', get(vars)),
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
                TempFuture = cog:create_task(Callee,'m_connectInstance',[maps:get('odefault___MessageParser_0_c4_xlarge_0', get(vars)),[]],#task_info{method= <<"connectInstance"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_4,
        dataUnit
        
    catch
        _:Exception:Stacktrace ->
            io:format(standard_error, "Uncaught ~s in method deploy_aux and no recovery block in class definition, killing object ~s~n", [builtin:toString(Cog, Exception), builtin:toString(Cog, O)]),
            io:format(standard_error, "stacktrace: ~tp~n", [Stacktrace]),
            object:die(O, Exception), exit(Exception)
    end.
 %% timesmartdel-orchs/Scale3.abs:225
 %% timesmartdel-orchs/Scale3.abs:225
'm_undeploy_aux'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O }),
    try
         %% timesmartdel-orchs/Scale3.abs:226--226
        put(vars, (get(vars))#{'odefault___MessageAnalyser_0_c4_xlarge_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_MessageAnalyserInterface'),0,[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:227--227
        put(vars, (get(vars))#{'odefault___VirusScanner_0_c4_xlarge_1' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_VirusScannerInterface'),0,[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:228--228
        put(vars, (get(vars))#{'odefault___MessageParser_0_c4_xlarge_0' => m_ABS_StdLib_funs:f_nth(Cog,C:get_val_internal(get(this), 'ls_MessageParserInterface'),0,[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:229--229
        T_1 = (fun() -> case C:get_val_internal(get(this), 'messageAnalyser_LoadBalancerObj') of
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
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_1,
         %% timesmartdel-orchs/Scale3.abs:230--230
        T_2 = (fun() -> case C:get_val_internal(get(this), 'virusScanner_LoadBalancerObj') of
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
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_2,
         %% timesmartdel-orchs/Scale3.abs:231--231
        T_3 = (fun() -> case C:get_val_internal(get(this), 'messageParser_LoadBalancerObj') of
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
                TempFuture = cog:create_task(Callee,'m_disconnectInstance',[[]],#task_info{method= <<"disconnectInstance"/utf8>>},Cog),
                future:get_blocking(TempFuture, Cog, [O,DC| Stack])
        end end)(),
        T_3,
         %% timesmartdel-orchs/Scale3.abs:232--232
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
                 %% timesmartdel-orchs/Scale3.abs:233--233
                T_4 = (fun() -> case C:get_val_internal(get(this), 'cloudProvider') of
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
                        TempFuture = cog:create_task(Callee,'m_shutdownInstance',[m_ABS_StdLib_funs:f_head(Cog,C:get_val_internal(get(this), 'ls_DeploymentComponent'),[O,DC| Stack]),[]],#task_info{method= <<"shutdownInstance"/utf8>>},Cog),
                        future:get_blocking(TempFuture, Cog, [O,DC| Stack])
                end end)(),
                T_4,
                 %% timesmartdel-orchs/Scale3.abs:234--234
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
 %% timesmartdel-orchs/Scale3.abs:238
 %% timesmartdel-orchs/Scale3.abs:238
'm_patchSpeed'(O=#object{oid=Oid,cog=Cog=#cog{ref=CogRef,dcobj=DC}},V_dcs_0,Stack)->
    C=(get(this))#state.class,
    put(vars, #{ 'this' => O,
 'dcs' => V_dcs_0 }),
    try
         %% timesmartdel-orchs/Scale3.abs:239--252
        put(vars, (get(vars))#{'tmp1434106728' => m_ABS_StdLib_funs:f_entries(Cog,maps:get('dcs', get(vars)),[O,DC| Stack])}),
         %% timesmartdel-orchs/Scale3.abs:239--252
        []=(fun Loop ([])->
            case not (m_ABS_StdLib_funs:f_isEmpty(Cog,maps:get('tmp1434106728', get(vars)),[O,DC| Stack])) of
            false -> [];
            true -> receive
                    {stop_world, CogRef} ->
                        cog:task_is_blocked_for_gc(Cog, self(), get(task_info), get(this)),
                        cog:task_is_runnable(Cog,self()),
                        task:wait_for_token(Cog,[O,DC| Stack])
                    after 0 -> ok
                end,
                 %% timesmartdel-orchs/Scale3.abs:239--252
                put(vars, (get(vars))#{'entry' => m_ABS_StdLib_funs:f_head(Cog,maps:get('tmp1434106728', get(vars)),[O,DC| Stack])}),
                 %% timesmartdel-orchs/Scale3.abs:239--252
                put(vars, (get(vars))#{'tmp1434106728' := m_ABS_StdLib_funs:f_tail(Cog,maps:get('tmp1434106728', get(vars)),[O,DC| Stack])}),
                 %% timesmartdel-orchs/Scale3.abs:240--240
                put(vars, (get(vars))#{'dc' => m_ABS_StdLib_funs:f_fst(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% timesmartdel-orchs/Scale3.abs:241--241
                put(vars, (get(vars))#{'coreUsed' => m_ABS_StdLib_funs:f_snd(Cog,maps:get('entry', get(vars)),[O,DC| Stack])}),
                 %% timesmartdel-orchs/Scale3.abs:242--242
                put(vars, (get(vars))#{'tmp1181708889' => cog:create_task(maps:get('dc', get(vars)),'m_total',[dataSpeed,[]],#task_info{method= <<"total"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                 %% timesmartdel-orchs/Scale3.abs:242--242
                future:await(maps:get('tmp1181708889', get(vars)), Cog, [O,DC| Stack]),
                ok,
                 %% timesmartdel-orchs/Scale3.abs:242--242
                put(vars, (get(vars))#{'speed_aux' => future:get_blocking(maps:get('tmp1181708889', get(vars)), Cog, [O,DC| Stack])}),
                 %% timesmartdel-orchs/Scale3.abs:243--246
                put(vars, (get(vars))#{'total_speed' => begin
                    case maps:get('speed_aux', get(vars)) of
                        
                        {dataFin,V_x_0}->V_x_0;
                        _->-1
                    end
                end}),
                 %% timesmartdel-orchs/Scale3.abs:247--247
                case (not cmp:eq(maps:get('total_speed', get(vars)),-1)) of
                    true ->  %% timesmartdel-orchs/Scale3.abs:248--248
                    put(vars, (get(vars))#{'tmp323494753' => cog:create_task(maps:get('dc', get(vars)),'m_getNumberOfCores',[[]],#task_info{method= <<"getNumberOfCores"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog)}),
                     %% timesmartdel-orchs/Scale3.abs:248--248
                    future:await(maps:get('tmp323494753', get(vars)), Cog, [O,DC| Stack]),
                    ok,
                     %% timesmartdel-orchs/Scale3.abs:248--248
                    put(vars, (get(vars))#{'totalCore' => future:get_blocking(maps:get('tmp323494753', get(vars)), Cog, [O,DC| Stack])}),
                     %% timesmartdel-orchs/Scale3.abs:249--249
                    put(vars, (get(vars))#{'speedPerCore' =>  rationals:rdiv(maps:get('total_speed', get(vars)),maps:get('totalCore', get(vars))) }),
                     %% timesmartdel-orchs/Scale3.abs:250--250
                    T_1 = cog:create_task(maps:get('dc', get(vars)),'m_decrementResources',[( rationals:sub(maps:get('total_speed', get(vars)),( rationals:mul(maps:get('speedPerCore', get(vars)),maps:get('coreUsed', get(vars)))) )) ,dataSpeed,[]],#task_info{method= <<"decrementResources"/utf8>>, creation={dataTime,builtin:currentms(Cog)}, proc_deadline=dataInfDuration},Cog),
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
