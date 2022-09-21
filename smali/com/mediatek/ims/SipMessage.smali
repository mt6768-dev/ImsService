.class public Lcom/mediatek/ims/SipMessage;
.super Ljava/lang/Object;
.source "SipMessage.java"


# static fields
.field public static final CALL_COMPLETED_BUSY_EVERYWHERE_HEADER:Ljava/lang/String; = "busy everywhere"

.field public static final CALL_COMPLETED_ELSEWHERE_HEADER:Ljava/lang/String; = "call completed elsewhere"

.field public static final CALL_DECLINED_HEADER:Ljava/lang/String; = "declined"

.field public static final CALL_MAXIMUM_ALREADY_REACHED:Ljava/lang/String; = "Simultaneous Call Limit Has Already Been Reached"

.field public static final CALL_REJECTED_HEADER:Ljava/lang/String; = "call rejected by"

.field public static final CODE_FOR_REQUEST:I = 0x0

.field public static final CODE_SESSION_INVITE_FAILED_REMOTE_BUSY:I = 0x1e6

.field public static final CODE_SESSION_PROGRESS:I = 0xb7

.field public static final COMPETION_ELSEWHERE_HEADER:Ljava/lang/String; = "Call Completion Elsewhere"

.field public static final DIR_RECEIVE:I = 0x1

.field public static final DIR_SEND:I = 0x0

.field public static final METHOD_BYE:I = 0x7

.field public static final METHOD_CANCEL:I = 0x4

.field public static final METHOD_INVITE:I = 0x1

.field public static final NO_RTP_TIMEOUT_HEADER:Ljava/lang/String; = "rtp-rtcp timeout"

.field public static final PULLED_AWAY_HEADER:Ljava/lang/String; = "Call Has Been Pulled by Another Device"

.field public static final REMOTE_DECLINE_HEADER:Ljava/lang/String; = "Another device sent All Devices Busy response"

.field public static final TYPE_REQUEST:I = 0x0

.field public static final TYPE_RESPONSE:I = 0x1

.field public static final VIDEO_CALL_NOT_AVAILABLE_HEADER:Ljava/lang/String; = "Video call is currently not available"

.field public static final VIDEO_CALL_UNAVAILABLE_HEADER:Ljava/lang/String; = "Video calling is unavailable"


# instance fields
.field private mCode:I

.field private mDir:I

.field private mMethod:I

.field private mReasonHeader:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # [Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/SipMessage;->mReasonHeader:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/SipMessage;->mDir:I

    .line 81
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/SipMessage;->mType:I

    .line 82
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/SipMessage;->mMethod:I

    .line 83
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/SipMessage;->mCode:I

    .line 84
    const/4 v0, 0x5

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/mediatek/ims/SipMessage;->mReasonHeader:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/mediatek/ims/SipMessage;->mCode:I

    return v0
.end method

.method public getDir()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/mediatek/ims/SipMessage;->mDir:I

    return v0
.end method

.method public getMethod()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/mediatek/ims/SipMessage;->mMethod:I

    return v0
.end method

.method public getReasonHeader()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/SipMessage;->mReasonHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/mediatek/ims/SipMessage;->mType:I

    return v0
.end method

.method public isRejectedByOthers()Z
    .locals 3

    .line 108
    iget v0, p0, Lcom/mediatek/ims/SipMessage;->mDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mediatek/ims/SipMessage;->mType:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/ims/SipMessage;->mMethod:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/mediatek/ims/SipMessage;->mCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/SipMessage;->mReasonHeader:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v2, "call rejected by"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    return v1

    .line 113
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
