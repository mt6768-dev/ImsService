.class public Lcom/mediatek/ims/MtkImsRegistrationImpl;
.super Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.source "MtkImsRegistrationImpl.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkImsRegistrationImpl$ImsRegistrationState;
    }
.end annotation


# static fields
.field private static final DELAY_IMS_SERVICE_IMPL_QUERY_MS:I = 0x1388

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsRegImpl"

.field private static final MAXMUIM_IMS_SERVICE_IMPL_RETRY:I = 0x3

.field public static final REGISTRATION_STATE_DEREGISTERED:I = 0x3

.field public static final REGISTRATION_STATE_REGISTERED:I = 0x2

.field public static final REGISTRATION_STATE_REGISTERING:I = 0x1

.field public static final REGISTRATION_STATE_UNKNOWN:I


# instance fields
.field private mImsServiceImpl:Lcom/mediatek/ims/ImsService;

.field private mSlotId:I


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 90
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 91
    iput p1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "retry":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-nez v2, :cond_1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 95
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 97
    if-nez v2, :cond_0

    .line 98
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsService is not initialized yet. Query later - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->log(Ljava/lang/String;)V

    .line 99
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "er":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get ImsService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->loge(Ljava/lang/String;)V

    .line 104
    .end local v2    # "er":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_2

    .line 107
    iget v2, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v2, p0}, Lcom/mediatek/ims/ImsService;->setImsRegistration(ILcom/mediatek/ims/MtkImsRegistrationImpl;)V

    .line 109
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] MtkImsRegistrationImpl created"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->log(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 120
    const-string v0, "MtkImsRegImpl"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 128
    const-string v0, "MtkImsRegImpl"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 124
    const-string v0, "MtkImsRegImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 114
    iget v1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsService;->setImsRegistration(ILcom/mediatek/ims/MtkImsRegistrationImpl;)V

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] MtkImsRegistrationImpl closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->logi(Ljava/lang/String;)V

    .line 117
    return-void
.end method
