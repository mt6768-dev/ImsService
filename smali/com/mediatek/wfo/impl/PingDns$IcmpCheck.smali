.class Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;
.super Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;
.source "PingDns.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/PingDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IcmpCheck"
.end annotation


# static fields
.field private static final ICMPV4_ECHO_REQUEST:I = 0x8

.field private static final ICMPV6_ECHO_REQUEST:I = 0x80

.field private static final MAX_BUFFER_LOGS:I = 0x64


# instance fields
.field private final mIcmpType:I

.field private final mProtocol:I

.field final synthetic this$0:Lcom/mediatek/wfo/impl/PingDns;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/impl/PingDns;Ljava/net/InetAddress;)V
    .locals 2
    .param p2, "target"    # Ljava/net/InetAddress;

    .line 339
    iput-object p1, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;-><init>(Lcom/mediatek/wfo/impl/PingDns;Ljava/net/InetAddress;)V

    .line 343
    iget v0, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_0

    .line 344
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mProtocol:I

    .line 345
    const/16 v0, 0x80

    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mIcmpType:I

    goto :goto_0

    .line 347
    :cond_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mProtocol:I

    .line 348
    const/16 v0, 0x8

    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mIcmpType:I

    .line 350
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IcmpCheck:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mAddressFamily:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": dst{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mTarget:Ljava/net/InetAddress;

    .line 351
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}, mProtocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {p1, v0}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method private retrySetupSocket()V
    .locals 10

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    const-string v1, "Reconnect setup"

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 358
    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    iget v4, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mProtocol:I

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x64

    iget-object v0, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/PingDns;->access$600(Lcom/mediatek/wfo/impl/PingDns;)I

    move-result v0

    add-int/lit16 v9, v0, 0x270f

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->setupSocket(IIJJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icmp setupSocket:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mTarget:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 37

    .line 366
    move-object/from16 v9, p0

    const-string v10, "icmp :"

    const-wide/16 v11, 0x0

    .line 367
    .local v11, "startTime":J
    const-wide/16 v13, 0x0

    .line 369
    .local v13, "elapsedTime":J
    const/4 v15, 0x0

    .line 370
    .local v15, "logFile":Ljava/io/File;
    const/16 v16, 0x0

    .line 371
    .local v16, "out":Ljava/io/BufferedWriter;
    const/16 v8, 0x28

    new-array v6, v8, [B

    .line 372
    .local v6, "icmpPacket":[B
    const/16 v17, 0x0

    .line 373
    .local v17, "count":I
    const/16 v18, 0x0

    .line 374
    .local v18, "buffer":Ljava/nio/ByteBuffer;
    new-array v7, v8, [B

    .line 375
    .local v7, "reply":[B
    const/16 v19, 0x0

    .line 376
    .local v19, "msg":Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 377
    .local v20, "ttl":D
    const/4 v0, 0x0

    .line 378
    .local v0, "retryCount":I
    const/4 v1, 0x0

    .line 379
    .local v1, "socketFlag":Z
    const-wide/16 v22, 0x0

    .line 380
    .local v22, "pingLatency":D
    const/16 v24, 0x0

    .line 382
    .local v24, "packetLost":I
    iget-object v2, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    const-string v3, "Run IcmpCheck"

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    move v4, v0

    move/from16 v25, v1

    .line 384
    .end local v0    # "retryCount":I
    .end local v1    # "socketFlag":Z
    .local v4, "retryCount":I
    .local v25, "socketFlag":Z
    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    if-nez v25, :cond_1

    .line 386
    :try_start_0
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    iget v3, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mProtocol:I

    const-wide/16 v26, 0x64

    const-wide/16 v28, 0x64

    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/PingDns;->access$600(Lcom/mediatek/wfo/impl/PingDns;)I

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit16 v0, v0, 0x270f

    move-object/from16 v1, p0

    move-wide/from16 v30, v11

    move v11, v4

    move v12, v5

    .end local v4    # "retryCount":I
    .local v11, "retryCount":I
    .local v30, "startTime":J
    move-wide/from16 v4, v26

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    .end local v6    # "icmpPacket":[B
    .end local v7    # "reply":[B
    .local v32, "icmpPacket":[B
    .local v33, "reply":[B
    move-wide/from16 v6, v28

    move v8, v0

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->setupSocket(IIJJI)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 387
    const/16 v25, 0x1

    .line 401
    move v4, v11

    move-wide/from16 v11, v30

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    const/16 v8, 0x28

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v30    # "startTime":J
    .end local v32    # "icmpPacket":[B
    .end local v33    # "reply":[B
    .restart local v4    # "retryCount":I
    .restart local v6    # "icmpPacket":[B
    .restart local v7    # "reply":[B
    .local v11, "startTime":J
    :catch_1
    move-exception v0

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-wide/from16 v30, v11

    move v11, v4

    move v12, v5

    .end local v4    # "retryCount":I
    .end local v6    # "icmpPacket":[B
    .end local v7    # "reply":[B
    .local v11, "retryCount":I
    .restart local v30    # "startTime":J
    .restart local v32    # "icmpPacket":[B
    .restart local v33    # "reply":[B
    :goto_1
    move-object v1, v0

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icmp setupSocket:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mTarget:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 390
    if-ge v11, v12, :cond_0

    .line 392
    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 395
    goto :goto_2

    .line 393
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 394
    .local v0, "ex1":Ljava/lang/Exception;
    iget-object v2, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    const-string v3, "Sleep Operation failed"

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 396
    .end local v0    # "ex1":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v4, v11, 0x1

    .line 397
    .end local v11    # "retryCount":I
    .restart local v4    # "retryCount":I
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry: icmp setupSocket: retryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 401
    .end local v1    # "e":Ljava/lang/Exception;
    move-wide/from16 v11, v30

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    const/16 v8, 0x28

    goto/16 :goto_0

    .line 399
    .end local v4    # "retryCount":I
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v11    # "retryCount":I
    :cond_0
    return-void

    .line 384
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v30    # "startTime":J
    .end local v32    # "icmpPacket":[B
    .end local v33    # "reply":[B
    .restart local v4    # "retryCount":I
    .restart local v6    # "icmpPacket":[B
    .restart local v7    # "reply":[B
    .local v11, "startTime":J
    :cond_1
    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-wide/from16 v30, v11

    move v11, v4

    move v12, v5

    .line 405
    .end local v4    # "retryCount":I
    .end local v6    # "icmpPacket":[B
    .end local v7    # "reply":[B
    .local v11, "retryCount":I
    .restart local v30    # "startTime":J
    .restart local v32    # "icmpPacket":[B
    .restart local v33    # "reply":[B
    const/16 v0, 0x8

    new-array v0, v0, [B

    iget v1, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mIcmpType:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    const/4 v3, 0x4

    aput-byte v2, v0, v3

    aput-byte v2, v0, v12

    const/4 v3, 0x6

    aput-byte v2, v0, v3

    const/4 v4, 0x7

    aput-byte v2, v0, v4

    move-object v4, v0

    .line 408
    .local v4, "icmpHeader":[B
    array-length v0, v4

    move-object/from16 v5, v32

    .end local v32    # "icmpPacket":[B
    .local v5, "icmpPacket":[B
    invoke-static {v4, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    :try_start_3
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mTarget:Ljava/net/InetAddress;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_20

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "writeFail":I
    const/4 v6, 0x0

    .line 414
    .local v6, "readFail":I
    const/4 v7, 0x0

    move v8, v7

    move v7, v6

    move v6, v0

    move/from16 v0, v17

    .line 415
    .end local v17    # "count":I
    .local v0, "count":I
    .local v6, "writeFail":I
    .local v7, "readFail":I
    .local v8, "ret":I
    :goto_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    if-ge v0, v12, :cond_9

    .line 416
    :try_start_4
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1c

    move-object/from16 v17, v0

    .line 417
    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .local v17, "buffer":Ljava/nio/ByteBuffer;
    int-to-short v0, v1

    move-object/from16 v12, v17

    .end local v17    # "buffer":Ljava/nio/ByteBuffer;
    .local v12, "buffer":Ljava/nio/ByteBuffer;
    :try_start_5
    invoke-virtual {v12, v3, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1b

    .line 421
    :try_start_6
    invoke-static {}, Lcom/mediatek/wfo/impl/PingDns;->access$700()J

    move-result-wide v17
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 423
    .end local v30    # "startTime":J
    .local v17, "startTime":J
    :try_start_7
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send request icmp.seq"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 424
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    array-length v2, v5

    const/4 v3, 0x0

    invoke-static {v0, v5, v3, v2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 429
    .end local v8    # "ret":I
    .local v0, "ret":I
    move v8, v0

    move-object/from16 v32, v4

    move-wide/from16 v30, v17

    goto :goto_5

    .line 503
    .end local v0    # "ret":I
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    :catch_3
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v36, v5

    move-wide/from16 v30, v17

    move/from16 v17, v1

    move-object/from16 v18, v12

    goto/16 :goto_b

    .line 426
    .restart local v6    # "writeFail":I
    .restart local v7    # "readFail":I
    .restart local v8    # "ret":I
    :catch_4
    move-exception v0

    goto :goto_4

    .line 503
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    .end local v8    # "ret":I
    .end local v17    # "startTime":J
    .restart local v30    # "startTime":J
    :catch_5
    move-exception v0

    move/from16 v17, v1

    move-object/from16 v32, v4

    move-object/from16 v36, v5

    move-object/from16 v18, v12

    goto/16 :goto_b

    .line 426
    .restart local v6    # "writeFail":I
    .restart local v7    # "readFail":I
    .restart local v8    # "ret":I
    :catch_6
    move-exception v0

    move-wide/from16 v17, v30

    .line 427
    .end local v30    # "startTime":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "startTime":J
    :goto_4
    :try_start_8
    iget-object v2, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1a

    move-object/from16 v32, v4

    .end local v4    # "icmpHeader":[B
    .local v32, "icmpHeader":[B
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_19

    .line 428
    const/4 v2, -0x1

    move v8, v2

    move-wide/from16 v30, v17

    .line 431
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "startTime":J
    .restart local v30    # "startTime":J
    :goto_5
    if-eqz v8, :cond_7

    const/4 v2, -0x1

    if-ne v8, v2, :cond_2

    move-object/from16 v36, v5

    const/4 v2, 0x1

    goto/16 :goto_9

    .line 442
    :cond_2
    :try_start_a
    new-instance v0, Landroid/system/StructPollfd;

    invoke-direct {v0}, Landroid/system/StructPollfd;-><init>()V

    move-object v3, v0

    .line 443
    .local v3, "pollfd":Landroid/system/StructPollfd;
    sget v0, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v0, v0

    iput-short v0, v3, Landroid/system/StructPollfd;->events:S

    .line 444
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    iput-object v0, v3, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_17

    .line 445
    const/4 v4, 0x0

    .line 447
    .end local v8    # "ret":I
    .local v4, "ret":I
    const/4 v8, 0x1

    :try_start_b
    new-array v0, v8, [Landroid/system/StructPollfd;

    const/16 v17, 0x0

    aput-object v3, v0, v17

    const/16 v8, 0x64

    invoke-static {v0, v8}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v0
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 450
    .end local v4    # "ret":I
    .local v0, "ret":I
    move v8, v0

    move-object/from16 v18, v3

    goto :goto_6

    .line 503
    .end local v0    # "ret":I
    .end local v3    # "pollfd":Landroid/system/StructPollfd;
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    :catch_7
    move-exception v0

    move/from16 v17, v1

    move-object/from16 v36, v5

    move-object/from16 v18, v12

    goto/16 :goto_b

    .line 448
    .restart local v3    # "pollfd":Landroid/system/StructPollfd;
    .restart local v4    # "ret":I
    .restart local v6    # "writeFail":I
    .restart local v7    # "readFail":I
    :catch_8
    move-exception v0

    .line 449
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_c
    iget-object v8, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    .end local v3    # "pollfd":Landroid/system/StructPollfd;
    .local v18, "pollfd":Landroid/system/StructPollfd;
    const-string v3, "Os.poll error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_17

    move v8, v4

    .line 451
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v4    # "ret":I
    .restart local v8    # "ret":I
    :goto_6
    const-string v0, ", ret"

    if-nez v8, :cond_3

    .line 452
    :try_start_d
    iget-object v4, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reply timeout: for icmp.seq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 453
    add-int/lit8 v24, v24, 0x1

    .line 454
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double v22, v22, v2

    move-object/from16 v36, v5

    goto/16 :goto_7

    .line 455
    :cond_3
    const/4 v2, -0x1

    if-ne v8, v2, :cond_4

    .line 456
    iget-object v2, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reply error: for icmp.seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 457
    add-int/lit8 v24, v24, 0x1

    .line 458
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double v22, v22, v2

    move-object/from16 v36, v5

    goto/16 :goto_7

    .line 462
    :cond_4
    :try_start_e
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_e} :catch_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_17

    move-object/from16 v2, v33

    const/16 v3, 0x28

    const/4 v4, 0x0

    .end local v33    # "reply":[B
    .local v2, "reply":[B
    :try_start_f
    invoke-static {v0, v2, v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 463
    .local v0, "readLen":I
    iget-object v4, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-virtual {v4, v3, v0}, Lcom/mediatek/wfo/impl/PingDns;->assertEquals(II)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_14

    .line 464
    if-gtz v0, :cond_5

    .line 465
    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icmp.seq="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " no response: packet lost"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 466
    .end local v19    # "msg":Ljava/lang/String;
    .local v3, "msg":Ljava/lang/String;
    add-int/lit8 v24, v24, 0x1

    .line 467
    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    add-double v22, v22, v34

    .line 468
    :try_start_11
    iget-object v4, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v4, v3}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 469
    iget-object v4, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    move/from16 v17, v0

    .end local v0    # "readLen":I
    .local v17, "readLen":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    move-object/from16 v33, v2

    .end local v2    # "reply":[B
    .restart local v33    # "reply":[B
    :try_start_12
    const-string v2, "Empty reply:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    .line 471
    move v0, v1

    move-object/from16 v19, v3

    move-object/from16 v18, v12

    move-object/from16 v4, v32

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v12, 0x5

    goto/16 :goto_3

    .line 503
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    .end local v8    # "ret":I
    .end local v17    # "readLen":I
    .end local v18    # "pollfd":Landroid/system/StructPollfd;
    :catch_9
    move-exception v0

    move/from16 v17, v1

    move-object/from16 v19, v3

    move-object/from16 v36, v5

    move-object/from16 v18, v12

    goto/16 :goto_b

    .line 479
    .restart local v6    # "writeFail":I
    .restart local v7    # "readFail":I
    .restart local v8    # "ret":I
    .restart local v18    # "pollfd":Landroid/system/StructPollfd;
    :catch_a
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v36, v5

    goto/16 :goto_8

    .line 503
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    .end local v8    # "ret":I
    .end local v18    # "pollfd":Landroid/system/StructPollfd;
    .end local v33    # "reply":[B
    .restart local v2    # "reply":[B
    :catch_b
    move-exception v0

    move-object/from16 v33, v2

    move/from16 v17, v1

    move-object/from16 v19, v3

    move-object/from16 v36, v5

    move-object/from16 v18, v12

    .end local v2    # "reply":[B
    .restart local v33    # "reply":[B
    goto/16 :goto_b

    .line 479
    .end local v33    # "reply":[B
    .restart local v2    # "reply":[B
    .restart local v6    # "writeFail":I
    .restart local v7    # "readFail":I
    .restart local v8    # "ret":I
    .restart local v18    # "pollfd":Landroid/system/StructPollfd;
    :catch_c
    move-exception v0

    move-object/from16 v33, v2

    move-object/from16 v19, v3

    move-object/from16 v36, v5

    .end local v2    # "reply":[B
    .restart local v33    # "reply":[B
    goto/16 :goto_8

    .line 503
    .end local v3    # "msg":Ljava/lang/String;
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    .end local v8    # "ret":I
    .end local v18    # "pollfd":Landroid/system/StructPollfd;
    .end local v33    # "reply":[B
    .restart local v2    # "reply":[B
    .restart local v19    # "msg":Ljava/lang/String;
    :catch_d
    move-exception v0

    move-object/from16 v33, v2

    move/from16 v17, v1

    move-object/from16 v36, v5

    move-object/from16 v18, v12

    .end local v2    # "reply":[B
    .restart local v33    # "reply":[B
    goto/16 :goto_b

    .line 479
    .end local v33    # "reply":[B
    .restart local v2    # "reply":[B
    .restart local v6    # "writeFail":I
    .restart local v7    # "readFail":I
    .restart local v8    # "ret":I
    .restart local v18    # "pollfd":Landroid/system/StructPollfd;
    :catch_e
    move-exception v0

    move-object/from16 v33, v2

    move-object/from16 v36, v5

    .end local v2    # "reply":[B
    .restart local v33    # "reply":[B
    goto/16 :goto_8

    .line 473
    .end local v33    # "reply":[B
    .restart local v0    # "readLen":I
    .restart local v2    # "reply":[B
    :cond_5
    move/from16 v17, v0

    move-object/from16 v33, v2

    .end local v0    # "readLen":I
    .end local v2    # "reply":[B
    .restart local v17    # "readLen":I
    .restart local v33    # "reply":[B
    :try_start_13
    invoke-static {}, Lcom/mediatek/wfo/impl/PingDns;->access$700()J

    move-result-wide v2
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_13 .. :try_end_13} :catch_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_17

    move-wide v13, v2

    .line 474
    sub-long v2, v13, v30

    .line 475
    .local v2, "ttlTime":J
    const-wide/32 v34, 0xf4240

    move-object/from16 v36, v5

    .end local v5    # "icmpPacket":[B
    .local v36, "icmpPacket":[B
    :try_start_14
    div-long v4, v2, v34
    :try_end_14
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_18

    long-to-double v4, v4

    .line 476
    .end local v20    # "ttl":D
    .local v4, "ttl":D
    add-double v22, v22, v4

    .line 477
    :try_start_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v34, v2

    .end local v2    # "ttlTime":J
    .local v34, "ttlTime":J
    const-string v2, "Receive reply icmp.seq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " TTL:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11

    move-object v2, v0

    .line 478
    .end local v19    # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    :try_start_16
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v0, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_16 .. :try_end_16} :catch_10
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    .line 488
    .end local v17    # "readLen":I
    move-object/from16 v19, v2

    move-wide/from16 v20, v4

    .line 491
    .end local v2    # "msg":Ljava/lang/String;
    .end local v4    # "ttl":D
    .end local v34    # "ttlTime":J
    .restart local v19    # "msg":Ljava/lang/String;
    .restart local v20    # "ttl":D
    :goto_7
    const-wide/16 v2, 0x64

    :try_start_17
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 492
    .end local v18    # "pollfd":Landroid/system/StructPollfd;
    move v0, v1

    move-object/from16 v18, v12

    move-object/from16 v4, v32

    move-object/from16 v5, v36

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v12, 0x5

    goto/16 :goto_3

    .line 503
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    .end local v8    # "ret":I
    .end local v19    # "msg":Ljava/lang/String;
    .end local v20    # "ttl":D
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v4    # "ttl":D
    :catch_f
    move-exception v0

    move/from16 v17, v1

    move-object/from16 v19, v2

    move-wide/from16 v20, v4

    move-object/from16 v18, v12

    goto/16 :goto_b

    .line 479
    .restart local v6    # "writeFail":I
    .restart local v7    # "readFail":I
    .restart local v8    # "ret":I
    .restart local v18    # "pollfd":Landroid/system/StructPollfd;
    :catch_10
    move-exception v0

    move-object/from16 v19, v2

    move-wide/from16 v20, v4

    goto :goto_8

    .line 503
    .end local v2    # "msg":Ljava/lang/String;
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    .end local v8    # "ret":I
    .end local v18    # "pollfd":Landroid/system/StructPollfd;
    .restart local v19    # "msg":Ljava/lang/String;
    :catch_11
    move-exception v0

    move/from16 v17, v1

    move-wide/from16 v20, v4

    move-object/from16 v18, v12

    goto/16 :goto_b

    .line 479
    .restart local v6    # "writeFail":I
    .restart local v7    # "readFail":I
    .restart local v8    # "ret":I
    .restart local v18    # "pollfd":Landroid/system/StructPollfd;
    :catch_12
    move-exception v0

    move-wide/from16 v20, v4

    goto :goto_8

    .end local v4    # "ttl":D
    .restart local v20    # "ttl":D
    :catch_13
    move-exception v0

    goto :goto_8

    .line 503
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    .end local v8    # "ret":I
    .end local v18    # "pollfd":Landroid/system/StructPollfd;
    .end local v33    # "reply":[B
    .end local v36    # "icmpPacket":[B
    .local v2, "reply":[B
    .restart local v5    # "icmpPacket":[B
    :catch_14
    move-exception v0

    move-object/from16 v33, v2

    move-object/from16 v36, v5

    move/from16 v17, v1

    move-object/from16 v18, v12

    .end local v2    # "reply":[B
    .end local v5    # "icmpPacket":[B
    .restart local v33    # "reply":[B
    .restart local v36    # "icmpPacket":[B
    goto/16 :goto_b

    .line 479
    .end local v33    # "reply":[B
    .end local v36    # "icmpPacket":[B
    .restart local v2    # "reply":[B
    .restart local v5    # "icmpPacket":[B
    .restart local v6    # "writeFail":I
    .restart local v7    # "readFail":I
    .restart local v8    # "ret":I
    .restart local v18    # "pollfd":Landroid/system/StructPollfd;
    :catch_15
    move-exception v0

    move-object/from16 v33, v2

    move-object/from16 v36, v5

    .end local v2    # "reply":[B
    .end local v5    # "icmpPacket":[B
    .restart local v33    # "reply":[B
    .restart local v36    # "icmpPacket":[B
    goto :goto_8

    .end local v36    # "icmpPacket":[B
    .restart local v5    # "icmpPacket":[B
    :catch_16
    move-exception v0

    move-object/from16 v36, v5

    .line 480
    .end local v5    # "icmpPacket":[B
    .local v0, "e":Landroid/system/ErrnoException;
    .restart local v36    # "icmpPacket":[B
    :goto_8
    iget-object v2, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replyerror icmp.seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 481
    const/4 v2, 0x5

    if-ge v7, v2, :cond_6

    .line 482
    add-int/lit8 v7, v7, 0x1

    .line 483
    move v0, v1

    move-object/from16 v18, v12

    move-object/from16 v4, v32

    move-object/from16 v5, v36

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v12, 0x5

    goto/16 :goto_3

    .line 485
    :cond_6
    iget-object v2, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    const-string v3, "Read Failed five times"

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 486
    move-object/from16 v18, v12

    goto/16 :goto_a

    .line 503
    .end local v0    # "e":Landroid/system/ErrnoException;
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    .end local v8    # "ret":I
    .end local v18    # "pollfd":Landroid/system/StructPollfd;
    .end local v36    # "icmpPacket":[B
    .restart local v5    # "icmpPacket":[B
    :catch_17
    move-exception v0

    move-object/from16 v36, v5

    move/from16 v17, v1

    move-object/from16 v18, v12

    .end local v5    # "icmpPacket":[B
    .restart local v36    # "icmpPacket":[B
    goto/16 :goto_b

    .line 431
    .end local v36    # "icmpPacket":[B
    .restart local v5    # "icmpPacket":[B
    .restart local v6    # "writeFail":I
    .restart local v7    # "readFail":I
    .restart local v8    # "ret":I
    :cond_7
    move-object/from16 v36, v5

    const/4 v2, 0x1

    .line 432
    .end local v5    # "icmpPacket":[B
    .restart local v36    # "icmpPacket":[B
    :goto_9
    const/4 v3, 0x5

    if-ge v6, v3, :cond_8

    .line 433
    add-int/lit8 v6, v6, 0x1

    .line 434
    move v0, v1

    move v1, v2

    move-object/from16 v18, v12

    move-object/from16 v4, v32

    move-object/from16 v5, v36

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v12, 0x5

    goto/16 :goto_3

    .line 436
    :cond_8
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    const-string v2, "Write Failed five times"

    invoke-static {v0, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_18

    .line 437
    move-object/from16 v18, v12

    goto :goto_a

    .line 503
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    .end local v8    # "ret":I
    :catch_18
    move-exception v0

    move/from16 v17, v1

    move-object/from16 v18, v12

    goto/16 :goto_b

    .end local v30    # "startTime":J
    .end local v36    # "icmpPacket":[B
    .restart local v5    # "icmpPacket":[B
    .local v17, "startTime":J
    :catch_19
    move-exception v0

    move-object/from16 v36, v5

    move-wide/from16 v30, v17

    move/from16 v17, v1

    move-object/from16 v18, v12

    .end local v5    # "icmpPacket":[B
    .restart local v36    # "icmpPacket":[B
    goto/16 :goto_b

    .end local v32    # "icmpHeader":[B
    .end local v36    # "icmpPacket":[B
    .local v4, "icmpHeader":[B
    .restart local v5    # "icmpPacket":[B
    :catch_1a
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v36, v5

    move-wide/from16 v30, v17

    move/from16 v17, v1

    move-object/from16 v18, v12

    .end local v4    # "icmpHeader":[B
    .end local v5    # "icmpPacket":[B
    .restart local v32    # "icmpHeader":[B
    .restart local v36    # "icmpPacket":[B
    goto/16 :goto_b

    .end local v17    # "startTime":J
    .end local v32    # "icmpHeader":[B
    .end local v36    # "icmpPacket":[B
    .restart local v4    # "icmpHeader":[B
    .restart local v5    # "icmpPacket":[B
    .restart local v30    # "startTime":J
    :catch_1b
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v36, v5

    move/from16 v17, v1

    move-object/from16 v18, v12

    .end local v4    # "icmpHeader":[B
    .end local v5    # "icmpPacket":[B
    .restart local v32    # "icmpHeader":[B
    .restart local v36    # "icmpPacket":[B
    goto/16 :goto_b

    .end local v12    # "buffer":Ljava/nio/ByteBuffer;
    .end local v32    # "icmpHeader":[B
    .end local v36    # "icmpPacket":[B
    .restart local v4    # "icmpHeader":[B
    .restart local v5    # "icmpPacket":[B
    .local v18, "buffer":Ljava/nio/ByteBuffer;
    :catch_1c
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v36, v5

    move/from16 v17, v1

    .end local v4    # "icmpHeader":[B
    .end local v5    # "icmpPacket":[B
    .restart local v32    # "icmpHeader":[B
    .restart local v36    # "icmpPacket":[B
    goto/16 :goto_b

    .line 415
    .end local v32    # "icmpHeader":[B
    .end local v36    # "icmpPacket":[B
    .restart local v4    # "icmpHeader":[B
    .restart local v5    # "icmpPacket":[B
    .restart local v6    # "writeFail":I
    .restart local v7    # "readFail":I
    .restart local v8    # "ret":I
    :cond_9
    move-object/from16 v32, v4

    move-object/from16 v36, v5

    .line 493
    .end local v4    # "icmpHeader":[B
    .end local v5    # "icmpPacket":[B
    .restart local v32    # "icmpHeader":[B
    .restart local v36    # "icmpPacket":[B
    :goto_a
    :try_start_18
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pingResult: writeFail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", readFail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1f

    .line 494
    if-gtz v6, :cond_a

    if-lez v7, :cond_b

    .line 495
    :cond_a
    add-int v0, v6, v7

    add-int v24, v24, v0

    .line 496
    mul-int/lit8 v0, v24, 0x64

    int-to-double v2, v0

    add-double v22, v22, v2

    .line 499
    :cond_b
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double v2, v22, v2

    .line 500
    .end local v22    # "pingLatency":D
    .local v2, "pingLatency":D
    mul-int/lit8 v0, v24, 0x64

    const/4 v4, 0x5

    :try_start_19
    div-int/2addr v0, v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1e

    move v4, v0

    .line 501
    .end local v24    # "packetLost":I
    .local v4, "packetLost":I
    :try_start_1a
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pingResult: mPingLatency = "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ", no. of packet lost = "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1d

    .line 505
    .end local v6    # "writeFail":I
    .end local v7    # "readFail":I
    .end local v8    # "ret":I
    goto :goto_c

    .line 503
    :catch_1d
    move-exception v0

    move/from16 v17, v1

    move-wide/from16 v22, v2

    move/from16 v24, v4

    goto :goto_b

    .end local v4    # "packetLost":I
    .restart local v24    # "packetLost":I
    :catch_1e
    move-exception v0

    move/from16 v17, v1

    move-wide/from16 v22, v2

    goto :goto_b

    .end local v2    # "pingLatency":D
    .restart local v22    # "pingLatency":D
    :catch_1f
    move-exception v0

    move/from16 v17, v1

    goto :goto_b

    .end local v1    # "count":I
    .end local v32    # "icmpHeader":[B
    .end local v36    # "icmpPacket":[B
    .local v4, "icmpHeader":[B
    .restart local v5    # "icmpPacket":[B
    .local v17, "count":I
    :catch_20
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v36, v5

    .line 504
    .end local v4    # "icmpHeader":[B
    .end local v5    # "icmpPacket":[B
    .local v0, "e":Ljava/lang/Exception;
    .restart local v32    # "icmpHeader":[B
    .restart local v36    # "icmpPacket":[B
    :goto_b
    iget-object v1, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    move/from16 v1, v17

    move-wide/from16 v2, v22

    move/from16 v4, v24

    .line 506
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "count":I
    .end local v22    # "pingLatency":D
    .end local v24    # "packetLost":I
    .restart local v1    # "count":I
    .restart local v2    # "pingLatency":D
    .local v4, "packetLost":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->close()V

    .line 507
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    const-string v5, "End of IcmpCheck"

    invoke-static {v0, v5}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 508
    iget-object v0, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/PingDns;->access$900(Lcom/mediatek/wfo/impl/PingDns;)Landroid/os/Handler;

    move-result-object v0

    const/16 v5, 0x47f

    iget-object v6, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    .line 509
    invoke-static {v6}, Lcom/mediatek/wfo/impl/PingDns;->access$600(Lcom/mediatek/wfo/impl/PingDns;)I

    move-result v6

    iget-object v7, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v7}, Lcom/mediatek/wfo/impl/PingDns;->access$800(Lcom/mediatek/wfo/impl/PingDns;)I

    move-result v7

    new-instance v8, Lcom/mediatek/wfo/impl/PingData;

    iget-object v10, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v10}, Lcom/mediatek/wfo/impl/PingDns;->access$600(Lcom/mediatek/wfo/impl/PingDns;)I

    move-result v10

    invoke-direct {v8, v10, v2, v3, v4}, Lcom/mediatek/wfo/impl/PingData;-><init>(IDI)V

    .line 508
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 510
    .local v0, "message":Landroid/os/Message;
    iget-object v5, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v5, v2, v3}, Lcom/mediatek/wfo/impl/PingDns;->access$1002(Lcom/mediatek/wfo/impl/PingDns;D)D

    .line 511
    iget-object v5, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v5, v4}, Lcom/mediatek/wfo/impl/PingDns;->access$1102(Lcom/mediatek/wfo/impl/PingDns;I)I

    .line 512
    iget-object v5, v9, Lcom/mediatek/wfo/impl/PingDns$IcmpCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v5}, Lcom/mediatek/wfo/impl/PingDns;->access$900(Lcom/mediatek/wfo/impl/PingDns;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 513
    return-void
.end method
