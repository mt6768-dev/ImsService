.class public Lcom/mediatek/ims/ImsAdapter$VaEvent;
.super Ljava/lang/Object;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VaEvent"
.end annotation


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0xa000


# instance fields
.field private data:[B

.field private data_len:I

.field private event_max_data_len:I

.field private mPhoneId:I

.field private read_offset:I

.field private request_id:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "rid"    # I

    .line 99
    const v0, 0xa000

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;-><init>(III)V

    .line 100
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "rid"    # I
    .param p3, "length"    # I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->mPhoneId:I

    .line 90
    const v0, 0xa000

    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 110
    iput p1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->mPhoneId:I

    .line 111
    iput p2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->request_id:I

    .line 112
    iput p3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    .line 113
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 115
    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 116
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 3

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "ret":I
    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 282
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 283
    monitor-exit p0

    .line 284
    return v0

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(I)[B
    .locals 4
    .param p1, "length"    # I

    .line 288
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 289
    const/4 v0, 0x0

    return-object v0

    .line 292
    :cond_0
    new-array v0, p1, [B

    .line 294
    .local v0, "ret":[B
    monitor-enter p0

    .line 295
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 297
    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return-object v0

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getData()[B
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    return-object v0
.end method

.method public getDataLen()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    return v0
.end method

.method public getDouble()D
    .locals 6

    .line 315
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 317
    .local v1, "buf":[B
    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v4, v3, 0x7

    aget-byte v4, v2, v4

    const/4 v5, 0x0

    aput-byte v4, v1, v5

    .line 318
    add-int/lit8 v4, v3, 0x6

    aget-byte v4, v2, v4

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    .line 319
    add-int/lit8 v4, v3, 0x5

    aget-byte v4, v2, v4

    const/4 v5, 0x2

    aput-byte v4, v1, v5

    .line 320
    add-int/lit8 v4, v3, 0x4

    aget-byte v4, v2, v4

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    .line 322
    add-int/lit8 v4, v3, 0x3

    aget-byte v4, v2, v4

    const/4 v5, 0x4

    aput-byte v4, v1, v5

    .line 323
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    const/4 v5, 0x5

    aput-byte v4, v1, v5

    .line 324
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    const/4 v5, 0x6

    aput-byte v4, v1, v5

    .line 325
    aget-byte v2, v2, v3

    const/4 v4, 0x7

    aput-byte v2, v1, v4

    .line 327
    add-int/2addr v3, v0

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 328
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method public getInt()I
    .locals 4

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "ret":I
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 263
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 264
    monitor-exit p0

    .line 265
    return v0

    .line 264
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPhoneId()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->mPhoneId:I

    return v0
.end method

.method public getRequestID()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->request_id:I

    return v0
.end method

.method public getShort()I
    .locals 4

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "ret":I
    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 272
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 273
    monitor-exit p0

    .line 274
    return v0

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I

    .line 304
    new-array v0, p1, [B

    .line 306
    .local v0, "buf":[B
    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->read_offset:I

    .line 309
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 309
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public putByte(I)I
    .locals 3
    .param p1, "value"    # I

    .line 148
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 149
    const/4 v0, -0x1

    return v0

    .line 152
    :cond_0
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 154
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 155
    monitor-exit p0

    .line 157
    const/4 v0, 0x0

    return v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putBytes([B)I
    .locals 4
    .param p1, "value"    # [B

    .line 185
    array-length v0, p1

    .line 187
    .local v0, "len":I
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    if-le v0, v1, :cond_0

    .line 188
    const/4 v1, -0x1

    return v1

    .line 191
    :cond_0
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 194
    monitor-exit p0

    .line 196
    return v3

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putDouble(D)I
    .locals 5
    .param p1, "value"    # D

    .line 200
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 201
    const/4 v0, -0x1

    return v0

    .line 204
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 205
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 209
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 210
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 211
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 213
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 214
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 215
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 216
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    aput-byte v4, v1, v2

    .line 217
    monitor-exit p0

    .line 218
    return v3

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putInt(I)I
    .locals 5
    .param p1, "value"    # I

    .line 119
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 120
    const/4 v0, -0x1

    return v0

    .line 123
    :cond_0
    monitor-enter p0

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    mul-int/lit8 v4, v0, 0x8

    shr-int v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 126
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 129
    const/4 v0, 0x0

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putLong(J)I
    .locals 5
    .param p1, "value"    # J

    .line 222
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 223
    const/4 v0, -0x1

    return v0

    .line 226
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 227
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 231
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 232
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 233
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 235
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 236
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 237
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 238
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v2, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    aput-byte v4, v1, v2

    .line 239
    monitor-exit p0

    .line 240
    return v3

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putShort(I)I
    .locals 5
    .param p1, "value"    # I

    .line 133
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 134
    const/4 v0, -0x1

    return v0

    .line 137
    :cond_0
    monitor-enter p0

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    mul-int/lit8 v4, v0, 0x8

    shr-int v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 140
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putString(Ljava/lang/String;I)I
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .line 161
    iget v0, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->event_max_data_len:I

    sub-int/2addr v1, p2

    if-le v0, v1, :cond_0

    .line 162
    const/4 v0, -0x1

    return v0

    .line 165
    :cond_0
    monitor-enter p0

    .line 166
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 167
    .local v0, "s":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge p2, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    invoke-static {v0, v2, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    .line 172
    .local v1, "remain":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 174
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 175
    iget-object v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data:[B

    iget v5, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    aput-byte v2, v4, v5

    .line 176
    iget v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mediatek/ims/ImsAdapter$VaEvent;->data_len:I

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "s":[B
    .end local v1    # "remain":I
    .end local v3    # "i":I
    :cond_2
    :goto_1
    monitor-exit p0

    .line 181
    return v2

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
