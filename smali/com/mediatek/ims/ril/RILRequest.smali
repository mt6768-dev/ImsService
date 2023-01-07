.class Lcom/mediatek/ims/ril/RILRequest;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IMS-RilRequest"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPool:Lcom/mediatek/ims/ril/RILRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sRandom:Ljava/util/Random;


# instance fields
.field mClientId:Ljava/lang/String;

.field mNext:Lcom/mediatek/ims/ril/RILRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mStartTimeMs:J

.field mWakeLockType:I

.field mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 162
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ril/RILRequest;->sRandom:Ljava/util/Random;

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mediatek/ims/ril/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ril/RILRequest;->sPoolSync:Ljava/lang/Object;

    .line 165
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/ril/RILRequest;->sPool:Lcom/mediatek/ims/ril/RILRequest;

    .line 166
    sput v1, Lcom/mediatek/ims/ril/RILRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RILRequest;
    .locals 4
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    sget-object v1, Lcom/mediatek/ims/ril/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    sget-object v2, Lcom/mediatek/ims/ril/RILRequest;->sPool:Lcom/mediatek/ims/ril/RILRequest;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 192
    sget-object v2, Lcom/mediatek/ims/ril/RILRequest;->sPool:Lcom/mediatek/ims/ril/RILRequest;

    move-object v0, v2

    .line 193
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mNext:Lcom/mediatek/ims/ril/RILRequest;

    sput-object v2, Lcom/mediatek/ims/ril/RILRequest;->sPool:Lcom/mediatek/ims/ril/RILRequest;

    .line 194
    iput-object v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mNext:Lcom/mediatek/ims/ril/RILRequest;

    .line 195
    sget v2, Lcom/mediatek/ims/ril/RILRequest;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/mediatek/ims/ril/RILRequest;->sPoolSize:I

    .line 197
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-nez v0, :cond_1

    .line 200
    new-instance v1, Lcom/mediatek/ims/ril/RILRequest;

    invoke-direct {v1}, Lcom/mediatek/ims/ril/RILRequest;-><init>()V

    move-object v0, v1

    .line 203
    :cond_1
    sget-object v1, Lcom/mediatek/ims/ril/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, v0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    .line 205
    iput p0, v0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 206
    iput-object p1, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    .line 209
    const/4 v1, -0x1

    iput v1, v0, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    .line 210
    iput-object v3, v0, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/ims/ril/RILRequest;->mStartTimeMs:J

    .line 212
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 213
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_3
    :goto_0
    return-object v0

    .line 197
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/mediatek/ims/ril/RILRequest;
    .locals 4
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    invoke-static {p0, p1}, Lcom/mediatek/ims/ril/RILRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 229
    if-eqz p2, :cond_0

    .line 230
    iput-object p2, v0, Lcom/mediatek/ims/ril/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/ims/ril/RILRequest;->mClientId:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null workSource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMS-RilRequest"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    return-object v0
.end method

.method static resetSerial()V
    .locals 2

    .line 268
    sget-object v0, Lcom/mediatek/ims/ril/RILRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/mediatek/ims/ril/RILRequest;->sRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 269
    return-void
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 296
    invoke-static {p1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 298
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 299
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 300
    invoke-static {v2, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    const-string v2, "IMS-RilRequest"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 303
    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 304
    iget-object v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 306
    :cond_0
    return-void
.end method

.method release()V
    .locals 4

    .line 245
    sget-object v0, Lcom/mediatek/ims/ril/RILRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    sget v1, Lcom/mediatek/ims/ril/RILRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 247
    sget-object v1, Lcom/mediatek/ims/ril/RILRequest;->sPool:Lcom/mediatek/ims/ril/RILRequest;

    iput-object v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mNext:Lcom/mediatek/ims/ril/RILRequest;

    .line 248
    sput-object p0, Lcom/mediatek/ims/ril/RILRequest;->sPool:Lcom/mediatek/ims/ril/RILRequest;

    .line 249
    sget v1, Lcom/mediatek/ims/ril/RILRequest;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/ims/ril/RILRequest;->sPoolSize:I

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    .line 251
    iget v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 252
    iget v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mWakeLockType:I

    if-nez v1, :cond_0

    .line 253
    const-string v1, "IMS-RilRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RILRequest releasing with held wake lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .locals 7

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 277
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    int-to-long v1, v1

    const-wide/32 v3, -0x80000000

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    rem-long/2addr v1, v3

    .line 279
    .local v1, "adjustedSerial":J
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "sn":Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "s":I
    :goto_0
    rsub-int/lit8 v6, v5, 0x4

    if-ge v4, v6, :cond_0

    .line 284
    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 287
    .end local v4    # "i":I
    .end local v5    # "s":I
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
