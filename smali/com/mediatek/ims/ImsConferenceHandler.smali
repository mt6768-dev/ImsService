.class public Lcom/mediatek/ims/ImsConferenceHandler;
.super Lcom/mediatek/ims/DefaultConferenceHandler;
.source "ImsConferenceHandler.java"


# static fields
.field private static final ANONYMOUS_URI:Ljava/lang/String; = "sip:anonymous@anonymous.invalid"

.field private static final CEP_TIMEOUT:I = 0x1388

.field private static final CONFERENCE_STATE_ACTIVE:I = 0x1

.field private static final CONFERENCE_STATE_CLOSED:I = 0x0

.field private static final CONF_HOST:Ljava/lang/String; = "host"

.field private static final DBG:Z = true

.field private static final EVENT_CLOSE_CONFERENCE:I = 0x1

.field private static final EVENT_HANDLE_CACHED_CONFERENCE_DATA:I = 0x2

.field private static final EVENT_TRY_UPDATE_WITH_LOCAL_CACHE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConferenceHandler"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TELDBG:Z

.field private static final USER_ENTITY:Ljava/lang/String; = "user-entity"

.field private static final VDBG:Z = false

.field private static mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

.field private static mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;


# instance fields
.field private mAddingParticipant:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedConferenceData:Ljava/lang/String;

.field private mCepVersion:I

.field private mConfCallId:I

.field private mConfParticipants:Ljava/util/LinkedHashMap;

.field private mConfParticipantsAddr:Ljava/util/LinkedHashMap;

.field private mConfState:I

.field private mContext:Landroid/content/Context;

.field private mFirstMergeParticipants:Ljava/util/LinkedHashMap;

.field private mHandler:Landroid/os/Handler;

.field private mHaveUpdateConferenceWithMember:Z

.field private mHostAddr:Ljava/lang/String;

.field private mIsCepNotified:Z

.field private mIsFirstCep:Z

.field private mLatestRemovedParticipant:Ljava/lang/String;

.field private mLocalParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mRemoveParticipantsByUserEntity:Z

.field private mRemovingParticipant:Ljava/lang/String;

.field private mRestoreParticipantsAddr:Z

.field private mSupportConferenceManagement:Z

.field private mUnknowParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsConferenceHandler;->SENLOG:Z

    .line 90
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/mediatek/ims/ImsConferenceHandler;->TELDBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/mediatek/ims/DefaultConferenceHandler;-><init>()V

    .line 102
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 112
    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    .line 113
    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    .line 119
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    .line 120
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    .line 121
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    .line 122
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    .line 123
    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mSupportConferenceManagement:Z

    .line 134
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    .line 135
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    .line 137
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConferenceHandler$1;-><init>(Lcom/mediatek/ims/ImsConferenceHandler;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    .line 407
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConferenceHandler$2;-><init>(Lcom/mediatek/ims/ImsConferenceHandler;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    const-string v0, "ImsConferenceHandler"

    const-string v1, "ImsConferenceHandler()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsConferenceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 81
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/ImsConferenceHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsConferenceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 81
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateConferenceStateWithLocalCache()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsConferenceHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->closeConferenceInternal(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 81
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsConferenceHandler;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConferenceHandler;->handleImsConfCallMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 81
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 81
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    return-object v0
.end method

.method private closeConferenceInternal(I)V
    .locals 4
    .param p1, "callId"    # I

    .line 211
    const-string v0, "ImsConferenceHandler"

    const-string v1, "closeConferenceInternal()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 213
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    .line 214
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 215
    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 220
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 222
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 223
    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    .line 224
    iput v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 225
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 227
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 228
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 229
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 230
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    .line 231
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 233
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    .line 234
    iput-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    .line 235
    return-void
.end method

.method private createFakeInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;

    .line 374
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    .local v0, "userInfo":Landroid/os/Bundle;
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "display-text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v1, "endpoint"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "status"

    const-string v2, "connected"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-object v0
.end method

.method private fullUpdateParticipants(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;",
            ">;)V"
        }
    .end annotation

    .line 463
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    const-string v0, "ImsConferenceHandler"

    const-string v1, "reset all users as participants"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 465
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 467
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 468
    .local v2, "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "entity":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "userAddr":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v5

    .line 471
    .local v5, "userInfo":Landroid/os/Bundle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " addr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 471
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 475
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    const-string v6, "add unknow participants"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v2    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v3    # "entity":Ljava/lang/String;
    .end local v4    # "userAddr":Ljava/lang/String;
    .end local v5    # "userInfo":Landroid/os/Bundle;
    :goto_2
    goto :goto_0

    .line 481
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;
    .locals 1

    .line 165
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    if-nez v0, :cond_1

    .line 166
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/mediatek/ims/DefaultConferenceHandler;

    invoke-direct {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-direct {v0}, Lcom/mediatek/ims/ImsConferenceHandler;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    .line 172
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfHdler:Lcom/mediatek/ims/DefaultConferenceHandler;

    return-object v0
.end method

.method private getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "addr"    # Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ImsConferenceHandler"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 633
    .local v1, "cache":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPairedAddressFromCache: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-object v1

    .line 638
    .end local v1    # "cache":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 642
    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPairedAddressFromLatestRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 644
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    return-object v0

    .line 647
    :cond_2
    return-object p1
.end method

.method private getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "uriString"    # Ljava/lang/String;

    .line 759
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 760
    return-object v0

    .line 763
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 768
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, "address":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 770
    return-object v0

    .line 775
    :cond_1
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, "userName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 777
    return-object v0

    .line 782
    :cond_2
    const/16 v0, 0x3b

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 783
    .local v0, "pIndex":I
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 785
    .local v4, "wIndex":I
    const/4 v5, 0x0

    if-ltz v0, :cond_3

    if-ltz v4, :cond_3

    .line 786
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 787
    :cond_3
    if-ltz v0, :cond_4

    .line 788
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 789
    :cond_4
    if-ltz v4, :cond_5

    .line 790
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 792
    :cond_5
    return-object v3
.end method

.method private handleImsConfCallMessage(ILjava/lang/String;)V
    .locals 11
    .param p1, "len"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 548
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    const/4 v1, -0x1

    const-string v2, "ImsConferenceHandler"

    if-ne v0, v1, :cond_0

    .line 549
    const-string v0, "ImsConference is closed"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-void

    .line 553
    :cond_0
    if-eqz p2, :cond_d

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 558
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoLteConfCallMessage, data length = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConferenceHandler;->parseXmlPackage(ILjava/lang/String;)Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;

    move-result-object v0

    .line 561
    .local v0, "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    if-nez v0, :cond_2

    .line 562
    const-string v1, "can\'t create xmlData object, update conf state with local cache"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateConferenceStateWithLocalCache()V

    .line 564
    return-void

    .line 568
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 569
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getHostInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    .line 573
    :cond_3
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getCEPState()I

    move-result v3

    .line 574
    .local v3, "cepState":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    move v7, v4

    goto :goto_0

    :cond_4
    move v7, v5

    .line 575
    .local v7, "isPartialCEP":Z
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPartialCEP: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getVersion()I

    move-result v8

    .line 579
    .local v8, "version":I
    if-nez v7, :cond_6

    .line 580
    iget v9, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    if-le v9, v8, :cond_5

    if-eq v9, v1, :cond_5

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version is less than local version"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void

    .line 585
    :cond_5
    iput v8, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCepVersion:I

    .line 589
    :cond_6
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 592
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;->getUserCount()I

    move-result v10

    .line 596
    .local v10, "userCount":I
    if-eq v3, v4, :cond_a

    if-eq v3, v6, :cond_9

    .line 604
    if-eq v10, v1, :cond_8

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ne v10, v1, :cond_7

    goto :goto_1

    .line 607
    :cond_7
    invoke-direct {p0, v9}, Lcom/mediatek/ims/ImsConferenceHandler;->partialUpdateParticipants(Ljava/util/List;)V

    goto :goto_2

    .line 605
    :cond_8
    :goto_1
    invoke-direct {p0, v9}, Lcom/mediatek/ims/ImsConferenceHandler;->fullUpdateParticipants(Ljava/util/List;)V

    goto :goto_2

    .line 601
    :cond_9
    invoke-direct {p0, v9}, Lcom/mediatek/ims/ImsConferenceHandler;->partialUpdateParticipants(Ljava/util/List;)V

    .line 602
    goto :goto_2

    .line 598
    :cond_a
    invoke-direct {p0, v9}, Lcom/mediatek/ims/ImsConferenceHandler;->fullUpdateParticipants(Ljava/util/List;)V

    .line 599
    nop

    .line 614
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->isEmptyConference()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->shouldAutoTerminateConf()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    if-eqz v1, :cond_b

    .line 616
    const-string v1, "no participants, terminate the conference"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v1, :cond_b

    .line 618
    invoke-virtual {v1}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onAutoTerminate()V

    .line 622
    :cond_b
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    if-eqz v1, :cond_c

    .line 623
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->restoreParticipantsAddressByLocalCache()V

    .line 626
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->notifyConfStateUpdate()V

    .line 627
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateLocalCache()V

    .line 628
    iput-boolean v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    .line 629
    return-void

    .line 554
    .end local v0    # "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    .end local v3    # "cepState":I
    .end local v7    # "isPartialCEP":Z
    .end local v8    # "version":I
    .end local v9    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    .end local v10    # "userCount":I
    :cond_d
    :goto_3
    const-string v0, "Failed to handleImsConfCallMessage due to data is empty"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method private isEmptyConference()Z
    .locals 7

    .line 517
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 519
    .local v0, "userCount":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 520
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 522
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 523
    .local v3, "userHandle":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 524
    .local v4, "confInfo":Landroid/os/Bundle;
    const-string v5, "status"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 525
    .local v5, "status":Ljava/lang/String;
    const-string v6, "disconnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 526
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->isSelfAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 529
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v3    # "userHandle":Ljava/lang/String;
    .end local v4    # "confInfo":Landroid/os/Bundle;
    .end local v5    # "status":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 531
    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 532
    return v2

    .line 534
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    if-nez v3, :cond_4

    .line 535
    const-string v3, "ImsConferenceHandler"

    const-string v4, "Set mHaveUpdateConferenceWithMember = true"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iput-boolean v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHaveUpdateConferenceWithMember:Z

    .line 538
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private isSelfAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;

    .line 801
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHostAddr:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    const-string v0, "ImsConferenceHandler"

    const-string v1, "isSelfAddress(): true, meet host info in xml"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v0, 0x1

    return v0

    .line 805
    :cond_0
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isSelfAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 242
    const-string v0, "*31#"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "#31#"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyConfStateUpdate()V
    .locals 8

    .line 383
    const-string v0, "ImsConferenceHandler"

    const-string v1, "notifyConfStateUpdate()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v1, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v1}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 387
    .local v1, "confState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 388
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 390
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v4, v1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit participants: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    goto :goto_0

    .line 394
    :cond_0
    const/4 v3, 0x0

    .line 395
    .local v3, "key":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 396
    .local v5, "userInfo":Landroid/os/Bundle;
    iget-object v6, v1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "submit unknow participants: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 397
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    nop

    .end local v5    # "userInfo":Landroid/os/Bundle;
    add-int/lit8 v3, v3, 0x1

    .line 400
    goto :goto_1

    .line 402
    :cond_1
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onParticipantsUpdate(Landroid/telephony/ims/ImsConferenceState;)V

    .line 405
    :cond_2
    return-void
.end method

.method private packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;
    .locals 5
    .param p1, "user"    # Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 451
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "entity":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "userAddr":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v2, "userInfo":Landroid/os/Bundle;
    const-string v3, "user"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "display-text"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEndPoint()Ljava/lang/String;

    move-result-object v3

    const-string v4, "endpoint"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v3, "user-entity"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-object v2
.end method

.method private parseXmlPackage(ILjava/lang/String;)Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    .locals 4
    .param p1, "len"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 433
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 434
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 435
    .local v0, "inStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 436
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 437
    .local v2, "saxParse":Ljavax/xml/parsers/SAXParser;
    new-instance v3, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;

    invoke-direct {v3}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;-><init>()V

    .line 438
    .local v3, "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    nop

    .line 441
    invoke-virtual {v2, v0, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    return-object v3

    .line 443
    .end local v0    # "inStream":Ljava/io/InputStream;
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "saxParse":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "xmlData":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler;
    :catch_0
    move-exception v0

    .line 444
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConferenceHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->updateConferenceStateWithLocalCache()V

    .line 446
    const/4 v1, 0x0

    return-object v1
.end method

.method private partialUpdateParticipants(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;",
            ">;)V"
        }
    .end annotation

    .line 484
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;>;"
    const-string v0, "ImsConferenceHandler"

    const-string v1, "partial update participants"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;

    .line 486
    .local v2, "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "entity":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->getUserNameFromSipTelUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "userAddr":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    if-eqz v5, :cond_0

    .line 489
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 491
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->packUserInfo(Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;)Landroid/os/Bundle;

    move-result-object v5

    .line 492
    .local v5, "userInfo":Landroid/os/Bundle;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " addr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 492
    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v6

    .line 497
    .local v6, "status":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 509
    :cond_1
    const-string v7, "dialing-out"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 510
    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 498
    :cond_2
    :goto_1
    const-string v7, "connected"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 499
    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    const-string v7, "add unknow participants"

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 501
    :cond_3
    const-string v7, "disconnected"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 503
    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 504
    iget-object v7, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 505
    const-string v7, "remove unknow participants"

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v2    # "user":Lcom/mediatek/ims/internal/ConferenceCallMessageHandler$User;
    .end local v3    # "entity":Ljava/lang/String;
    .end local v4    # "userAddr":Ljava/lang/String;
    .end local v5    # "userInfo":Landroid/os/Bundle;
    .end local v6    # "status":Ljava/lang/String;
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 514
    :cond_5
    return-void
.end method

.method private restoreParticipantsAddressByLocalCache()V
    .locals 19

    .line 664
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 665
    .local v1, "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 668
    .local v2, "restoreList":Ljava/util/LinkedHashMap;
    new-instance v3, Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 671
    .local v3, "participants":Ljava/util/LinkedHashMap;
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 672
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, " to: "

    const-string v7, "restore participant: "

    const-string v8, "user"

    const-string v9, "ImsConferenceHandler"

    if-eqz v5, :cond_1

    .line 673
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 674
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 675
    .local v10, "userHandle":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 676
    .local v11, "confInfo":Landroid/os/Bundle;
    invoke-direct {v0, v10}, Lcom/mediatek/ims/ImsConferenceHandler;->getPairedAddressFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 677
    .local v12, "restoreAddr":Ljava/lang/String;
    invoke-direct {v0, v10}, Lcom/mediatek/ims/ImsConferenceHandler;->isSelfAddress(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 678
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 680
    invoke-virtual {v2, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait for restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 683
    :cond_0
    invoke-virtual {v11, v8, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v8, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-direct {v0, v10}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 686
    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v10    # "userHandle":Ljava/lang/String;
    .end local v11    # "confInfo":Landroid/os/Bundle;
    .end local v12    # "restoreAddr":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 693
    .local v5, "resIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 694
    .local v10, "restoreUnknowCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 695
    .local v11, "restoreIndex":I
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 696
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v12, v11, :cond_2

    .line 697
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No candidate to restore, size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_4

    .line 701
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 702
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 703
    .local v13, "userHandle":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .line 704
    .local v14, "confInfo":Landroid/os/Bundle;
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 706
    .local v15, "restoreAddr":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_3

    .line 707
    move-object/from16 v16, v1

    .end local v1    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v16, "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 706
    .end local v16    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v16, v1

    .line 709
    .end local v1    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    const-string v1, "status"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "status":Ljava/lang/String;
    move-object/from16 v17, v2

    .end local v2    # "restoreList":Ljava/util/LinkedHashMap;
    .local v17, "restoreList":Ljava/util/LinkedHashMap;
    const-string v2, "disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 713
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_2

    .line 715
    :cond_4
    iget-object v2, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v15, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    invoke-virtual {v14, v8, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v2, v0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v13, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    move-object/from16 v18, v1

    .end local v1    # "status":Ljava/lang/String;
    .local v18, "status":Ljava/lang/String;
    invoke-direct {v0, v13}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-static {v9, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    nop

    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v13    # "userHandle":Ljava/lang/String;
    .end local v14    # "confInfo":Landroid/os/Bundle;
    .end local v15    # "restoreAddr":Ljava/lang/String;
    .end local v18    # "status":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    .line 721
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_2

    .line 695
    .end local v16    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "restoreList":Ljava/util/LinkedHashMap;
    .local v1, "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "restoreList":Ljava/util/LinkedHashMap;
    :cond_5
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 724
    .end local v1    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "restoreList":Ljava/util/LinkedHashMap;
    .restart local v16    # "restoreCandidate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "restoreList":Ljava/util/LinkedHashMap;
    :goto_4
    invoke-direct {v0, v10}, Lcom/mediatek/ims/ImsConferenceHandler;->restoreUnknowParticipants(Ljava/util/ArrayList;)V

    .line 725
    return-void
.end method

.method private restoreUnknowParticipants(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 728
    .local p1, "restoreUnknowCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 729
    .local v0, "restoredUnknowParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 730
    .local v1, "restoreIndex":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 731
    .local v3, "userInfo":Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v1, :cond_0

    .line 732
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    goto :goto_0

    .line 735
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 736
    .local v4, "restoreAddr":Ljava/lang/String;
    const-string v5, "user"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 740
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 742
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restore unknow participants("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 742
    const-string v6, "ImsConferenceHandler"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    nop

    .end local v3    # "userInfo":Landroid/os/Bundle;
    .end local v4    # "restoreAddr":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 746
    goto :goto_0

    .line 748
    :cond_2
    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mUnknowParticipants:Ljava/util/List;

    .line 749
    return-void
.end method

.method private sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 797
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldAutoTerminateConf()Z
    .locals 3

    .line 753
    const/4 v0, 0x1

    .line 754
    .local v0, "shouldTerminate":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldTerminate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConferenceHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return v0
.end method

.method private updateConferenceStateWithLocalCache()V
    .locals 7

    .line 350
    const-string v0, "ImsConferenceHandler"

    const-string v1, "updateConferenceStateWithLocalCache()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->shouldAutoTerminateConf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    sget-object v1, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v1}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onAutoTerminate()V

    .line 356
    :cond_0
    const-string v1, "no participants"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void

    .line 360
    :cond_1
    new-instance v1, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v1}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 362
    .local v1, "confState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 363
    .local v3, "addr":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->createFakeInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 364
    .local v4, "userInfo":Landroid/os/Bundle;
    iget-object v5, v1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "submit participants:  uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v3    # "addr":Ljava/lang/String;
    .end local v4    # "userInfo":Landroid/os/Bundle;
    goto :goto_0

    .line 368
    :cond_2
    sget-object v0, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/DefaultConferenceHandler$Listener;->onParticipantsUpdate(Landroid/telephony/ims/ImsConferenceState;)V

    .line 371
    :cond_3
    return-void
.end method

.method private updateLocalCache()V
    .locals 6

    .line 651
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 652
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 654
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 655
    .local v2, "confInfo":Landroid/os/Bundle;
    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "status":Ljava/lang/String;
    const-string v4, "user"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "addr":Ljava/lang/String;
    const-string v5, "disconnected"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 658
    iget-object v5, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 660
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v2    # "confInfo":Landroid/os/Bundle;
    .end local v3    # "status":Ljava/lang/String;
    .end local v4    # "addr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 661
    :cond_1
    return-void
.end method


# virtual methods
.method public addFirstMergeParticipant(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, "num":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFirstMergeParticipant() callId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    const-string v2, "ImsConferenceHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_0
    return-void
.end method

.method public addLocalCache([Ljava/lang/String;)V
    .locals 5
    .param p1, "participants"    # [Ljava/lang/String;

    .line 263
    if-nez p1, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 267
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 268
    .local v2, "participant":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v2    # "participant":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_1
    return-void
.end method

.method public closeConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeConference() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConferenceHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void

    .line 204
    :cond_1
    :goto_0
    return-void
.end method

.method public firstMerge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callId_1"    # Ljava/lang/String;
    .param p2, "callId_2"    # Ljava/lang/String;
    .param p3, "num_1"    # Ljava/lang/String;
    .param p4, "num_2"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 248
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p3}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mFirstMergeParticipants:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p4}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public getConfParticipantUri(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "isRetry"    # Z

    .line 322
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRestoreParticipantsAddr:Z

    const-string v1, " addr: "

    const-string v2, "ImsConferenceHandler"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    if-eq v0, p2, :cond_0

    .line 323
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipantsAddr:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    .local v0, "confParticipantUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeParticipants confParticipantUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object p1, v0

    .line 331
    .end local v0    # "confParticipantUri":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfParticipants:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 332
    .local v0, "confInfo":Landroid/os/Bundle;
    if-nez v0, :cond_3

    .line 333
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 336
    :cond_1
    return-object p1

    .line 334
    :cond_2
    :goto_0
    const-string v1, "sip:anonymous@anonymous.invalid"

    return-object v1

    .line 338
    :cond_3
    const-string v3, "user-entity"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "participantUri":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v4, "sip:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 340
    :cond_4
    move-object v3, p1

    .line 343
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeParticipants uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-object v3
.end method

.method public isConferenceActive()Z
    .locals 2

    .line 238
    iget v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public modifyParticipantComplete()V
    .locals 8

    .line 281
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 282
    .local v0, "isFirstMerge":Z
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 287
    iget-object v4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 290
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 291
    iput-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 292
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "ImsConferenceHandler"

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    .local v4, "addr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyParticipantComplete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v4    # "addr":Ljava/lang/String;
    goto :goto_1

    .line 295
    :cond_4
    iget-boolean v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mSupportConferenceManagement:Z

    if-eqz v3, :cond_5

    .line 296
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    :cond_5
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 300
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    :cond_6
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsCepNotified:Z

    if-ne v1, v2, :cond_7

    if-ne v0, v2, :cond_7

    .line 304
    const-string v1, "CEP is notify before merge complete, notify again"

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConferenceHandler;->notifyConfStateUpdate()V

    .line 307
    :cond_7
    return-void
.end method

.method public modifyParticipantFailed()V
    .locals 4

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 311
    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 312
    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLatestRemovedParticipant:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mLocalParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    .local v1, "addr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyParticipantFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConferenceHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v1    # "addr":Ljava/lang/String;
    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mCachedConferenceData:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 319
    :cond_1
    return-void
.end method

.method public startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/ims/DefaultConferenceHandler$Listener;
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "phoneId"    # I

    .line 181
    iget-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    const-string v1, "ImsConferenceHandler"

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "startConference() failed, a conference is ongoing"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 185
    :cond_0
    const-string v0, "startConference()"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sput-object p2, Lcom/mediatek/ims/ImsConferenceHandler;->mListener:Lcom/mediatek/ims/DefaultConferenceHandler$Listener;

    .line 187
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ims.conference"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 191
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfCallId:I

    .line 192
    iput p4, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mIsFirstCep:Z

    .line 194
    iput v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mConfState:I

    .line 195
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP132_Peru:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 196
    invoke-static {v1, v2}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemoveParticipantsByUserEntity:Z

    .line 197
    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP151:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget v2, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mPhoneId:I

    .line 198
    invoke-static {v1, v2}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mSupportConferenceManagement:Z

    .line 199
    return-void
.end method

.method public tryAddParticipant(Ljava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .line 273
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mAddingParticipant:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public tryRemoveParticipant(Ljava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .line 277
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsConferenceHandler;->normalizeNumberFromCLIR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConferenceHandler;->mRemovingParticipant:Ljava/lang/String;

    .line 278
    return-void
.end method
