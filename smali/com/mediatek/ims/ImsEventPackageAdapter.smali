.class public Lcom/mediatek/ims/ImsEventPackageAdapter;
.super Ljava/lang/Object;
.source "ImsEventPackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_IMS_DIALOG_INDICATION:I = 0x1

.field static final EVENT_LTE_MESSAGE_WAITING:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ImsEventPackageAdapter"

.field private static final TAG_DOUBLE_QUOTE:Ljava/lang/String; = "<ascii_34>"

.field private static final TAG_NEXT_LINE:Ljava/lang/String; = "<ascii_10>"

.field private static final TAG_RETURN:Ljava/lang/String; = "<ascii_13>"

.field private static final TYPE_CONFERENCE_EVT_PKG:I = 0x1

.field private static final TYPE_DIALOG_EVT_PKG:I = 0x2

.field private static final TYPE_MWI:I = 0x3

.field static sImsExternalCallStateConstructfunc:Ljava/lang/reflect/Constructor;


# instance fields
.field private mCEPData:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDEPData:Ljava/lang/String;

.field private mHandler:Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

.field private mImsRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mMWIData:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/ImsEventPackageAdapter;->sImsExternalCallStateConstructfunc:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p4, "phoneId"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string v0, "ImsEventPackageAdapter"

    const-string v1, "ImsEventPackageAdapter()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;-><init>(Lcom/mediatek/ims/ImsEventPackageAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mHandler:Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

    .line 93
    iput-object p3, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mImsRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 94
    iput-object p1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mContext:Landroid/content/Context;

    .line 95
    iput p4, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mPhoneId:I

    .line 96
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p3, v0, v1, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForLteMsgWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mImsRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mHandler:Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsDialog(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lcom/mediatek/ims/ImsEventPackageAdapter;->needToReportMoreInfo()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsEventPackageAdapter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEventPackageAdapter;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsEventPackageAdapter;->handleLetMessageWaiting([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsEventPackageAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEventPackageAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsEventPackageAdapter;->handleDialogEventPackage(Ljava/util/ArrayList;)V

    return-void
.end method

.method private concatData(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "isFirst"    # Z
    .param p2, "origData"    # Ljava/lang/String;
    .param p3, "appendData"    # Ljava/lang/String;

    .line 149
    if-eqz p1, :cond_0

    .line 150
    return-object p3

    .line 152
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDialogEventPackage(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;>;"
    const-string v1, "ImsEventPackageAdapter"

    const-string v0, "handleDialogEventPackage()"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 167
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/ims/ImsExternalCallState;>;"
    sget-object v0, Lcom/mediatek/ims/ImsEventPackageAdapter;->sImsExternalCallStateConstructfunc:Ljava/lang/reflect/Constructor;

    const-string v3, "handleDialogEventPackage exCallState:"

    if-nez v0, :cond_1

    .line 168
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;

    .line 169
    .local v4, "dialog":Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;
    iget-object v5, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->address:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 170
    .local v5, "localAddr":Landroid/net/Uri;
    iget-object v6, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->remoteAddress:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 171
    .local v14, "addr":Landroid/net/Uri;
    new-instance v15, Landroid/telephony/ims/ImsExternalCallState;

    iget v7, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->dialogId:I

    iget-boolean v10, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isPullable:Z

    iget v11, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->callState:I

    iget v12, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->callType:I

    iget-boolean v13, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isCallHeld:Z

    move-object v6, v15

    move-object v8, v14

    move-object v9, v5

    invoke-direct/range {v6 .. v13}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;Landroid/net/Uri;ZIIZ)V

    .line 174
    .local v6, "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->dialogId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->remoteAddress:Ljava/lang/String;

    .line 176
    invoke-static {v8}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->address:Ljava/lang/String;

    .line 177
    invoke-static {v8}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isPullable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget v8, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->callState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v8, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->callType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v8, v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isCallHeld:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-static {v1, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v4    # "dialog":Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;
    .end local v5    # "localAddr":Landroid/net/Uri;
    .end local v6    # "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    .end local v14    # "addr":Landroid/net/Uri;
    goto :goto_0

    :cond_0
    goto/16 :goto_3

    .line 181
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;

    .line 182
    .local v5, "dialog":Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;
    iget-object v0, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 183
    .local v14, "localAddr":Landroid/net/Uri;
    iget-object v0, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->remoteAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 184
    .local v15, "addr":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 186
    .local v16, "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/ImsEventPackageAdapter;->sImsExternalCallStateConstructfunc:Ljava/lang/reflect/Constructor;

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->dialogId:I

    .line 188
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v15, v6, v7

    const/4 v7, 0x2

    aput-object v14, v6, v7

    const/4 v7, 0x3

    iget-boolean v8, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isPullable:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget v8, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->callState:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget v8, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->callType:I

    .line 189
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-boolean v8, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isCallHeld:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-boolean v8, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isMt:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    .line 187
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsExternalCallState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v16    # "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    .local v0, "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    goto :goto_2

    .line 190
    .end local v0    # "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    .restart local v16    # "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Use AOSP default ImsExternalCallState."

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v17, Landroid/telephony/ims/ImsExternalCallState;

    iget v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->dialogId:I

    iget-boolean v10, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isPullable:Z

    iget v11, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->callState:I

    iget v12, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->callType:I

    iget-boolean v13, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isCallHeld:Z

    move-object/from16 v6, v17

    move-object v8, v15

    move-object v9, v14

    invoke-direct/range {v6 .. v13}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;Landroid/net/Uri;ZIIZ)V

    move-object v0, v6

    .line 196
    .end local v16    # "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    .local v0, "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->dialogId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->remoteAddress:Ljava/lang/String;

    .line 198
    invoke-static {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->address:Ljava/lang/String;

    .line 199
    invoke-static {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isPullable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->callState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->callType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isCallHeld:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;->isMt:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "exCallState":Landroid/telephony/ims/ImsExternalCallState;
    .end local v5    # "dialog":Lvendor/mediatek/hardware/mtkradioex/V2_0/Dialog;
    .end local v14    # "localAddr":Landroid/net/Uri;
    .end local v15    # "addr":Landroid/net/Uri;
    goto/16 :goto_1

    .line 204
    :cond_2
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.intent.action.ims.dialogEventPackage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.intent.extra.DEP_CONTENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 206
    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/mediatek/ims/ImsEventPackageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 207
    return-void
.end method

.method private handleLetMessageWaiting([Ljava/lang/String;)V
    .locals 10
    .param p1, "msg"    # [Ljava/lang/String;

    .line 107
    const-string v0, "ImsEventPackageAdapter"

    const-string v1, "handleLetMessageWaiting()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x4

    .line 109
    .local v1, "intDataCount":I
    new-array v2, v1, [I

    .line 111
    .local v2, "intData":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 112
    :try_start_0
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v3    # "i":I
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "handleLetMessageWaiting failed: invalid params"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 117
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    nop

    .line 119
    const/4 v3, 0x0

    aget v4, v2, v3

    .line 120
    .local v4, "callId":I
    const/4 v5, 0x2

    aget v5, v2, v5

    .line 121
    .local v5, "urcIdx":I
    const/4 v6, 0x3

    aget v6, v2, v6

    .line 122
    .local v6, "totalUrcCount":I
    const/4 v7, 0x4

    aget-object v7, p1, v7

    .line 124
    .local v7, "rawData":Ljava/lang/String;
    array-length v8, p1

    const/4 v9, 0x6

    if-lt v8, v9, :cond_1

    .line 125
    const/4 v8, 0x5

    aget-object v8, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 126
    .local v8, "phoneId":I
    iget v9, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mPhoneId:I

    if-eq v9, v8, :cond_1

    .line 127
    const-string v3, "handleLetMessageWaiting ignore, not the correct phone id"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 132
    .end local v8    # "phoneId":I
    :cond_1
    const/4 v0, 0x1

    if-ne v5, v0, :cond_2

    move v3, v0

    :cond_2
    move v0, v3

    .line 133
    .local v0, "isFirstPkt":Z
    iget-object v3, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mMWIData:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v7}, Lcom/mediatek/ims/ImsEventPackageAdapter;->concatData(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mMWIData:Ljava/lang/String;

    .line 134
    if-ne v5, v6, :cond_4

    iget-object v8, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mContext:Landroid/content/Context;

    if-nez v8, :cond_3

    goto :goto_1

    .line 138
    :cond_3
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsEventPackageAdapter;->recoverDataFromAsciiTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mMWIData:Ljava/lang/String;

    .line 140
    new-instance v3, Landroid/content/Intent;

    const-string v8, "mediatek.intent.action.lte.mwi"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mMWIData:Ljava/lang/String;

    const-string v9, "lte_mwi_body"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget v8, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mPhoneId:I

    const-string v9, "phone.id"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const/high16 v8, 0x1000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    iget-object v8, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mContext:Landroid/content/Context;

    const-string v9, "com.mediatek.permission.READ_LTE_MESSAGE_WAITING_INDICATION"

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 146
    return-void

    .line 136
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    return-void
.end method

.method private needToReportMoreInfo()V
    .locals 5

    .line 210
    const-string v0, "ImsEventPackageAdapter"

    sget-object v1, Lcom/mediatek/ims/ImsEventPackageAdapter;->sImsExternalCallStateConstructfunc:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 212
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    .line 213
    .local v1, "cParam":[Ljava/lang/Class;
    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 214
    const/4 v2, 0x1

    const-class v3, Landroid/net/Uri;

    aput-object v3, v1, v2

    .line 215
    const/4 v2, 0x2

    const-class v3, Landroid/net/Uri;

    aput-object v3, v1, v2

    .line 216
    const/4 v2, 0x3

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 217
    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 218
    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 219
    const/4 v2, 0x6

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 220
    const/4 v2, 0x7

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 223
    :try_start_0
    const-class v2, Landroid/telephony/ims/ImsExternalCallState;

    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 225
    .local v2, "sImsExternalCallStateConstructfunc":Ljava/lang/reflect/Constructor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructor function = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .end local v2    # "sImsExternalCallStateConstructfunc":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 226
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Use AOSP default ImsExternalCallState."

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v1    # "cParam":[Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private recoverDataFromAsciiTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 156
    const-string v0, "<ascii_13>"

    const-string v1, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    const-string v0, "<ascii_34>"

    const-string v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    const-string v0, "<ascii_10>"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mImsRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mHandler:Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForLteMsgWaiting(Landroid/os/Handler;)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mImsRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget-object v1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter;->mHandler:Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForImsDialog(Landroid/os/Handler;)V

    .line 104
    return-void
.end method
