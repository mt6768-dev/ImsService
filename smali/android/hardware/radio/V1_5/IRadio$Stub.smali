.class public abstract Landroid/hardware/radio/V1_5/IRadio$Stub;
.super Landroid/os/HwBinder;
.source "IRadio.java"

# interfaces
.implements Landroid/hardware/radio/V1_5/IRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/IRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3652
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 3655
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3673
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 3715
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 3716
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 3717
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 3718
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 3719
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 3685
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x4ct
        0x54t
        -0x21t
        -0x7bt
        0x34t
        0x41t
        -0x3ft
        0x2ft
        0x6et
        0x42t
        0x5et
        -0x76t
        0x60t
        -0x23t
        0x29t
        -0x3t
        -0x5et
        0xft
        0x5et
        0x6et
        0x39t
        -0x47t
        0x3dt
        0x11t
        0x3t
        -0x1ct
        -0x4dt
        0x74t
        -0x6bt
        -0x25t
        0x38t
        -0x56t
    .end array-data

    :array_1
    .array-data 1
        -0x11t
        0x4at
        -0x49t
        0x41t
        -0x9t
        -0x19t
        0x76t
        0x2ft
        -0x4ct
        0x5et
        0x2et
        0x24t
        -0x36t
        -0x7dt
        -0x79t
        0x1ft
        0x72t
        0x0t
        0x6ct
        -0x20t
        0x5ft
        0x57t
        -0x56t
        -0x66t
        -0x23t
        -0x3bt
        0x74t
        -0x77t
        0x3dt
        -0x2et
        -0x68t
        0x72t
    .end array-data

    :array_2
    .array-data 1
        -0x5ft
        -0x3at
        -0x50t
        0x76t
        0x1bt
        -0x35t
        -0x77t
        -0x2at
        -0x41t
        0x15t
        -0x5ft
        0x56t
        -0x7t
        0x30t
        0x6bt
        -0x80t
        -0x70t
        -0x4dt
        -0x57t
        0x16t
        -0x5ft
        0x5ft
        -0x16t
        0x16t
        -0x77t
        -0x4ct
        -0x50t
        -0x3ft
        0x73t
        -0x72t
        0x38t
        0x2ft
    .end array-data

    :array_3
    .array-data 1
        0x1dt
        0x19t
        0x72t
        0xdt
        0x4ft
        -0x2dt
        -0x75t
        0x10t
        -0x6bt
        -0x10t
        -0xbt
        0x55t
        -0x5ct
        -0x43t
        -0x6et
        -0x4dt
        -0x4ft
        0x2ct
        -0x65t
        0x1dt
        0xft
        0x56t
        0xbt
        0xet
        -0x66t
        0x47t
        0x4ct
        -0x2at
        -0x24t
        -0x3et
        0xdt
        -0x4at
    .end array-data

    :array_4
    .array-data 1
        -0x9t
        -0x62t
        -0x21t
        0x50t
        -0x5dt
        0x78t
        -0x57t
        -0x37t
        -0x45t
        0x73t
        0x7ft
        -0x6dt
        -0xet
        0x5t
        -0x26t
        -0x47t
        0x1bt
        0x4ct
        0x63t
        -0x16t
        0x49t
        0x72t
        0x3at
        -0x4t
        0x6ft
        -0x7bt
        0x6ct
        0x13t
        -0x7et
        0x3t
        -0x16t
        -0x7ft
    .end array-data

    :array_5
    .array-data 1
        -0x65t
        0x5at
        -0x5ct
        -0x67t
        -0x14t
        0x3bt
        0x42t
        0x26t
        -0xft
        0x5ft
        0x48t
        -0xbt
        -0x13t
        0x8t
        -0x77t
        0x6et
        0x2ft
        -0x40t
        0x67t
        0x6ft
        -0x69t
        -0x74t
        -0x62t
        0x19t
        -0x64t
        0x1dt
        -0x5et
        0x1dt
        -0x56t
        -0x10t
        0x2t
        -0x5at
    .end array-data

    :array_6
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3660
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.radio@1.5::IRadio"

    const-string v2, "android.hardware.radio@1.4::IRadio"

    const-string v3, "android.hardware.radio@1.3::IRadio"

    const-string v4, "android.hardware.radio@1.2::IRadio"

    const-string v5, "android.hardware.radio@1.1::IRadio"

    const-string v6, "android.hardware.radio@1.0::IRadio"

    const-string v7, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 3679
    const-string v0, "android.hardware.radio@1.5::IRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 3703
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 3725
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 3727
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 22
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3755
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v0, "android.hardware.radio@1.3::IRadio"

    const-string v1, "android.hardware.radio@1.2::IRadio"

    const-string v2, "android.hardware.radio@1.1::IRadio"

    const/4 v3, 0x0

    const-string v4, "android.hardware.radio@1.4::IRadio"

    const-string v5, "android.hardware.radio@1.5::IRadio"

    const-string v6, "android.hardware.radio@1.0::IRadio"

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 5639
    :sswitch_0
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5641
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->notifySyspropsChanged()V

    .line 5642
    goto/16 :goto_1

    .line 5628
    :sswitch_1
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5630
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 5631
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5632
    invoke-virtual {v0, v12}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 5633
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5634
    goto/16 :goto_1

    .line 5618
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5620
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->ping()V

    .line 5621
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5622
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5623
    goto/16 :goto_1

    .line 5605
    :sswitch_3
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5607
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setHALInstrumentation()V

    .line 5608
    goto/16 :goto_1

    .line 5571
    :sswitch_4
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5573
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5574
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5576
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 5578
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5579
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 5580
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 5581
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 5582
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 5584
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 5585
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 5587
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 5591
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 5592
    nop

    .line 5582
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5588
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 5595
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 5597
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v12, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 5599
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5600
    goto/16 :goto_1

    .line 5560
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_5
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5562
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 5563
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5564
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 5565
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5566
    goto/16 :goto_1

    .line 5548
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5550
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 5551
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 5552
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 5553
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5555
    goto/16 :goto_1

    .line 5537
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5539
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 5540
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 5541
    invoke-virtual {v12, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 5542
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 5543
    goto/16 :goto_1

    .line 5526
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5529
    .local v0, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5530
    .local v1, "persoType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5531
    .local v2, "controlKey":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplySimDepersonalization(IILjava/lang/String;)V

    .line 5532
    goto/16 :goto_1

    .line 5515
    .end local v0    # "serial":I
    .end local v1    # "persoType":I
    .end local v2    # "controlKey":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5517
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5518
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 5519
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5520
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 5521
    goto/16 :goto_1

    .line 5504
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_2
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5506
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5507
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5508
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5509
    .local v2, "ran":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setNetworkSelectionModeManual_1_5(ILjava/lang/String;I)V

    .line 5510
    goto/16 :goto_1

    .line 5495
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    .end local v2    # "ran":I
    :pswitch_3
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5498
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getDataRegistrationState_1_5(I)V

    .line 5499
    goto/16 :goto_1

    .line 5486
    .end local v0    # "serial":I
    :pswitch_4
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5489
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getVoiceRegistrationState_1_5(I)V

    .line 5490
    goto/16 :goto_1

    .line 5477
    .end local v0    # "serial":I
    :pswitch_5
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5479
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5480
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getBarringInfo(I)V

    .line 5481
    goto/16 :goto_1

    .line 5467
    .end local v0    # "serial":I
    :pswitch_6
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5470
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5471
    .local v1, "indicationFilter":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setIndicationFilter_1_5(II)V

    .line 5472
    goto/16 :goto_1

    .line 5455
    .end local v0    # "serial":I
    .end local v1    # "indicationFilter":I
    :pswitch_7
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5458
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5459
    .local v1, "powerOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5460
    .local v2, "forEmergencyCall":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 5461
    .local v3, "preferredForEmergencyCall":Z
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setRadioPower_1_5(IZZZ)V

    .line 5462
    goto/16 :goto_1

    .line 5445
    .end local v0    # "serial":I
    .end local v1    # "powerOn":Z
    .end local v2    # "forEmergencyCall":Z
    .end local v3    # "preferredForEmergencyCall":Z
    :pswitch_8
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5447
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5448
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5449
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/DataProfileInfo;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setDataProfile_1_5(ILjava/util/ArrayList;)V

    .line 5450
    goto/16 :goto_1

    .line 5434
    .end local v0    # "serial":I
    .end local v1    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/DataProfileInfo;>;"
    :pswitch_9
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5437
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    .line 5438
    .local v1, "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5439
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setInitialAttachApn_1_5(ILandroid/hardware/radio/V1_5/DataProfileInfo;)V

    .line 5440
    goto/16 :goto_1

    .line 5418
    .end local v0    # "serial":I
    .end local v1    # "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    :pswitch_a
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5420
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5421
    .local v8, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5422
    .local v9, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_5/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/DataProfileInfo;-><init>()V

    move-object v13, v0

    .line 5423
    .local v13, "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    invoke-virtual {v13, v11}, Landroid/hardware/radio/V1_5/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 5425
    .local v14, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5426
    .local v15, "reason":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/LinkAddress;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v16

    .line 5427
    .local v16, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/LinkAddress;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v17

    .line 5428
    .local v17, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setupDataCall_1_5(IILandroid/hardware/radio/V1_5/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5429
    goto/16 :goto_1

    .line 5407
    .end local v8    # "serial":I
    .end local v9    # "accessNetwork":I
    .end local v13    # "dataProfileInfo":Landroid/hardware/radio/V1_5/DataProfileInfo;
    .end local v14    # "roamingAllowed":Z
    .end local v15    # "reason":I
    .end local v16    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/LinkAddress;>;"
    .end local v17    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_b
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5409
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5410
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/NetworkScanRequest;-><init>()V

    .line 5411
    .local v1, "request":Landroid/hardware/radio/V1_5/NetworkScanRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5412
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startNetworkScan_1_5(ILandroid/hardware/radio/V1_5/NetworkScanRequest;)V

    .line 5413
    goto/16 :goto_1

    .line 5396
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_5/NetworkScanRequest;
    :pswitch_c
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5398
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5399
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5400
    .local v1, "specifyChannels":Z
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5401
    .local v2, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSystemSelectionChannels_1_5(IZLjava/util/ArrayList;)V

    .line 5402
    goto/16 :goto_1

    .line 5387
    .end local v0    # "serial":I
    .end local v1    # "specifyChannels":Z
    .end local v2    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RadioAccessSpecifier;>;"
    :pswitch_d
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5389
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5390
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->areUiccApplicationsEnabled(I)V

    .line 5391
    goto/16 :goto_1

    .line 5377
    .end local v0    # "serial":I
    :pswitch_e
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5379
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5380
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5381
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->enableUiccApplications(IZ)V

    .line 5382
    goto/16 :goto_1

    .line 5362
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :pswitch_f
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5364
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5365
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5366
    .local v9, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 5367
    .local v13, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5368
    .local v14, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v15

    .line 5369
    .local v15, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 5370
    .local v16, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 5371
    .local v17, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v13

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setLinkCapacityReportingCriteria_1_5(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 5372
    goto/16 :goto_1

    .line 5350
    .end local v8    # "serial":I
    .end local v9    # "hysteresisMs":I
    .end local v13    # "hysteresisDlKbps":I
    .end local v14    # "hysteresisUlKbps":I
    .end local v15    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "accessNetwork":I
    :pswitch_10
    invoke-virtual {v11, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5353
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_5/SignalThresholdInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;-><init>()V

    .line 5354
    .local v1, "signalThresholdInfo":Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_5/SignalThresholdInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5356
    .local v2, "accessNetwork":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSignalStrengthReportingCriteria_1_5(ILandroid/hardware/radio/V1_5/SignalThresholdInfo;I)V

    .line 5357
    goto/16 :goto_1

    .line 5341
    .end local v0    # "serial":I
    .end local v1    # "signalThresholdInfo":Landroid/hardware/radio/V1_5/SignalThresholdInfo;
    .end local v2    # "accessNetwork":I
    :pswitch_11
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5344
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getSignalStrength_1_4(I)V

    .line 5345
    goto/16 :goto_1

    .line 5332
    .end local v0    # "serial":I
    :pswitch_12
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5334
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5335
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getAllowedCarriers_1_4(I)V

    .line 5336
    goto/16 :goto_1

    .line 5320
    .end local v0    # "serial":I
    :pswitch_13
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5323
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 5324
    .local v1, "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5326
    .local v2, "multiSimPolicy":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setAllowedCarriers_1_4(ILandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    .line 5327
    goto/16 :goto_1

    .line 5310
    .end local v0    # "serial":I
    .end local v1    # "carriers":Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;
    .end local v2    # "multiSimPolicy":I
    :pswitch_14
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5312
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5313
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5314
    .local v1, "networkTypeBitmap":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setPreferredNetworkTypeBitmap(II)V

    .line 5315
    goto/16 :goto_1

    .line 5301
    .end local v0    # "serial":I
    .end local v1    # "networkTypeBitmap":I
    :pswitch_15
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5304
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getPreferredNetworkTypeBitmap(I)V

    .line 5305
    goto/16 :goto_1

    .line 5290
    .end local v0    # "serial":I
    :pswitch_16
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5293
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 5294
    .local v1, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5295
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startNetworkScan_1_4(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 5296
    goto/16 :goto_1

    .line 5274
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_17
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5276
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5277
    .restart local v8    # "serial":I
    new-instance v0, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    move-object v9, v0

    .line 5278
    .local v9, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5279
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 5280
    .local v13, "categories":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v14

    .line 5281
    .local v14, "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5282
    .local v15, "routing":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 5283
    .local v16, "hasKnownUserIntentEmergency":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 5284
    .local v17, "isTesting":Z
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio$Stub;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 5285
    goto/16 :goto_1

    .line 5264
    .end local v8    # "serial":I
    .end local v9    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    .end local v13    # "categories":I
    .end local v14    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "routing":I
    .end local v16    # "hasKnownUserIntentEmergency":Z
    .end local v17    # "isTesting":Z
    :pswitch_18
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5266
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5267
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5268
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataProfileInfo;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setDataProfile_1_4(ILjava/util/ArrayList;)V

    .line 5269
    goto/16 :goto_1

    .line 5253
    .end local v0    # "serial":I
    .end local v1    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/DataProfileInfo;>;"
    :pswitch_19
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5255
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5256
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 5257
    .local v1, "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5258
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setInitialAttachApn_1_4(ILandroid/hardware/radio/V1_4/DataProfileInfo;)V

    .line 5259
    goto/16 :goto_1

    .line 5237
    .end local v0    # "serial":I
    .end local v1    # "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    :pswitch_1a
    invoke-virtual {v11, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5240
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5241
    .local v9, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    move-object v13, v0

    .line 5242
    .local v13, "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {v13, v11}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 5244
    .local v14, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 5245
    .local v15, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v16

    .line 5246
    .local v16, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v17

    .line 5247
    .local v17, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setupDataCall_1_4(IILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5248
    goto/16 :goto_1

    .line 5228
    .end local v8    # "serial":I
    .end local v9    # "accessNetwork":I
    .end local v13    # "dataProfileInfo":Landroid/hardware/radio/V1_4/DataProfileInfo;
    .end local v14    # "roamingAllowed":Z
    .end local v15    # "reason":I
    .end local v16    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1b
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5230
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5231
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getModemStackStatus(I)V

    .line 5232
    goto/16 :goto_1

    .line 5218
    .end local v0    # "serial":I
    :pswitch_1c
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5221
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5222
    .local v1, "on":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->enableModem(IZ)V

    .line 5223
    goto/16 :goto_1

    .line 5207
    .end local v0    # "serial":I
    .end local v1    # "on":Z
    :pswitch_1d
    invoke-virtual {v11, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5210
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5211
    .local v1, "specifyChannels":Z
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_1/RadioAccessSpecifier;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5212
    .local v2, "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSystemSelectionChannels(IZLjava/util/ArrayList;)V

    .line 5213
    goto/16 :goto_1

    .line 5196
    .end local v0    # "serial":I
    .end local v1    # "specifyChannels":Z
    .end local v2    # "specifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_1/RadioAccessSpecifier;>;"
    :pswitch_1e
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5199
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5200
    .local v1, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 5201
    .local v2, "reason":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->deactivateDataCall_1_2(III)V

    .line 5202
    goto/16 :goto_1

    .line 5178
    .end local v0    # "serial":I
    .end local v1    # "cid":I
    .end local v2    # "reason":I
    :pswitch_1f
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 5181
    .local v13, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5182
    .local v14, "accessNetwork":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v15, v0

    .line 5183
    .local v15, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v15, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 5185
    .local v16, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 5186
    .local v17, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v18

    .line 5187
    .local v18, "isRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    .line 5188
    .local v19, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v20

    .line 5189
    .local v20, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v21

    .line 5190
    .local v21, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setupDataCall_1_2(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5191
    goto/16 :goto_1

    .line 5163
    .end local v13    # "serial":I
    .end local v14    # "accessNetwork":I
    .end local v15    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v16    # "modemCognitive":Z
    .end local v17    # "roamingAllowed":Z
    .end local v18    # "isRoaming":Z
    .end local v19    # "reason":I
    .end local v20    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_20
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5165
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5166
    .restart local v8    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 5167
    .local v9, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 5168
    .local v13, "hysteresisDlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 5169
    .local v14, "hysteresisUlKbps":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v15

    .line 5170
    .local v15, "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v16

    .line 5171
    .local v16, "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v17

    .line 5172
    .local v17, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v13

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setLinkCapacityReportingCriteria(IIIILjava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 5173
    goto/16 :goto_1

    .line 5150
    .end local v8    # "serial":I
    .end local v9    # "hysteresisMs":I
    .end local v13    # "hysteresisDlKbps":I
    .end local v14    # "hysteresisUlKbps":I
    .end local v15    # "thresholdsDownlinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16    # "thresholdsUplinkKbps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "accessNetwork":I
    :pswitch_21
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 5153
    .local v6, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 5154
    .local v7, "hysteresisMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 5155
    .local v8, "hysteresisDb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v9

    .line 5156
    .local v9, "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 5157
    .local v13, "accessNetwork":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSignalStrengthReportingCriteria(IIILjava/util/ArrayList;I)V

    .line 5158
    goto/16 :goto_1

    .line 5140
    .end local v6    # "serial":I
    .end local v7    # "hysteresisMs":I
    .end local v8    # "hysteresisDb":I
    .end local v9    # "thresholdsDbm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "accessNetwork":I
    :pswitch_22
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5142
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5143
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5144
    .local v1, "indicationFilter":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setIndicationFilter_1_2(II)V

    .line 5145
    goto/16 :goto_1

    .line 5129
    .end local v0    # "serial":I
    .end local v1    # "indicationFilter":I
    :pswitch_23
    invoke-virtual {v11, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5131
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5132
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_2/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_2/NetworkScanRequest;-><init>()V

    .line 5133
    .local v1, "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_2/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5134
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startNetworkScan_1_2(ILandroid/hardware/radio/V1_2/NetworkScanRequest;)V

    .line 5135
    goto/16 :goto_1

    .line 5119
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_2/NetworkScanRequest;
    :pswitch_24
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5121
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5122
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5123
    .local v1, "sessionHandle":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->stopKeepalive(II)V

    .line 5124
    goto/16 :goto_1

    .line 5108
    .end local v0    # "serial":I
    .end local v1    # "sessionHandle":I
    :pswitch_25
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5110
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5111
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/KeepaliveRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/KeepaliveRequest;-><init>()V

    .line 5112
    .local v1, "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/KeepaliveRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5113
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startKeepalive(ILandroid/hardware/radio/V1_1/KeepaliveRequest;)V

    .line 5114
    goto/16 :goto_1

    .line 5099
    .end local v0    # "serial":I
    .end local v1    # "keepalive":Landroid/hardware/radio/V1_1/KeepaliveRequest;
    :pswitch_26
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5101
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5102
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->stopNetworkScan(I)V

    .line 5103
    goto/16 :goto_1

    .line 5088
    .end local v0    # "serial":I
    :pswitch_27
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5090
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5091
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/NetworkScanRequest;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/NetworkScanRequest;-><init>()V

    .line 5092
    .local v1, "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/NetworkScanRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5093
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startNetworkScan(ILandroid/hardware/radio/V1_1/NetworkScanRequest;)V

    .line 5094
    goto/16 :goto_1

    .line 5078
    .end local v0    # "serial":I
    .end local v1    # "request":Landroid/hardware/radio/V1_1/NetworkScanRequest;
    :pswitch_28
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5080
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5081
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5082
    .local v1, "powerUp":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSimCardPower_1_1(II)V

    .line 5083
    goto/16 :goto_1

    .line 5067
    .end local v0    # "serial":I
    .end local v1    # "powerUp":I
    :pswitch_29
    invoke-virtual {v11, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5070
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;-><init>()V

    .line 5071
    .local v1, "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5072
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCarrierInfoForImsiEncryption(ILandroid/hardware/radio/V1_1/ImsiEncryptionInfo;)V

    .line 5073
    goto/16 :goto_1

    .line 5059
    .end local v0    # "serial":I
    .end local v1    # "imsiEncryptionInfo":Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;
    :pswitch_2a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5061
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->responseAcknowledgement()V

    .line 5062
    goto/16 :goto_1

    .line 5049
    :pswitch_2b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5051
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5052
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5053
    .local v1, "powerUp":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSimCardPower(IZ)V

    .line 5054
    goto/16 :goto_1

    .line 5039
    .end local v0    # "serial":I
    .end local v1    # "powerUp":Z
    :pswitch_2c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5041
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5042
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5043
    .local v1, "indicationFilter":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setIndicationFilter(II)V

    .line 5044
    goto/16 :goto_1

    .line 5028
    .end local v0    # "serial":I
    .end local v1    # "indicationFilter":I
    :pswitch_2d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5030
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5031
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 5032
    .local v1, "deviceStateType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 5033
    .local v2, "state":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendDeviceState(IIZ)V

    .line 5034
    goto/16 :goto_1

    .line 5019
    .end local v0    # "serial":I
    .end local v1    # "deviceStateType":I
    .end local v2    # "state":Z
    :pswitch_2e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5021
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5022
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getAllowedCarriers(I)V

    .line 5023
    goto/16 :goto_1

    .line 5007
    .end local v0    # "serial":I
    :pswitch_2f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5009
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5010
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 5011
    .local v1, "allAllowed":Z
    new-instance v2, Landroid/hardware/radio/V1_0/CarrierRestrictions;

    invoke-direct {v2}, Landroid/hardware/radio/V1_0/CarrierRestrictions;-><init>()V

    .line 5012
    .local v2, "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    invoke-virtual {v2, v11}, Landroid/hardware/radio/V1_0/CarrierRestrictions;->readFromParcel(Landroid/os/HwParcel;)V

    .line 5013
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setAllowedCarriers(IZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V

    .line 5014
    goto/16 :goto_1

    .line 4998
    .end local v0    # "serial":I
    .end local v1    # "allAllowed":Z
    .end local v2    # "carriers":Landroid/hardware/radio/V1_0/CarrierRestrictions;
    :pswitch_30
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 5000
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 5001
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getModemActivityInfo(I)V

    .line 5002
    goto/16 :goto_1

    .line 4989
    .end local v0    # "serial":I
    :pswitch_31
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4991
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4992
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->pullLceData(I)V

    .line 4993
    goto/16 :goto_1

    .line 4980
    .end local v0    # "serial":I
    :pswitch_32
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4983
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->stopLceService(I)V

    .line 4984
    goto/16 :goto_1

    .line 4969
    .end local v0    # "serial":I
    :pswitch_33
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4971
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4972
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4973
    .local v1, "reportInterval":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4974
    .local v2, "pullMode":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startLceService(IIZ)V

    .line 4975
    goto/16 :goto_1

    .line 4958
    .end local v0    # "serial":I
    .end local v1    # "reportInterval":I
    .end local v2    # "pullMode":Z
    :pswitch_34
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4960
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4961
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/RadioCapability;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/RadioCapability;-><init>()V

    .line 4962
    .local v1, "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/RadioCapability;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4963
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setRadioCapability(ILandroid/hardware/radio/V1_0/RadioCapability;)V

    .line 4964
    goto/16 :goto_1

    .line 4949
    .end local v0    # "serial":I
    .end local v1    # "rc":Landroid/hardware/radio/V1_0/RadioCapability;
    :pswitch_35
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4951
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4952
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getRadioCapability(I)V

    .line 4953
    goto/16 :goto_1

    .line 4940
    .end local v0    # "serial":I
    :pswitch_36
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4942
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4943
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->requestShutdown(I)V

    .line 4944
    goto/16 :goto_1

    .line 4929
    .end local v0    # "serial":I
    :pswitch_37
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4931
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4932
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4933
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4934
    .local v2, "isRoaming":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setDataProfile(ILjava/util/ArrayList;Z)V

    .line 4935
    goto/16 :goto_1

    .line 4917
    .end local v0    # "serial":I
    .end local v1    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/DataProfileInfo;>;"
    .end local v2    # "isRoaming":Z
    :pswitch_38
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4919
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4920
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4921
    .local v1, "authContext":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4922
    .local v2, "authData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4923
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    .line 4924
    goto/16 :goto_1

    .line 4908
    .end local v0    # "serial":I
    .end local v1    # "authContext":I
    .end local v2    # "authData":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_39
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4911
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getHardwareConfig(I)V

    .line 4912
    goto/16 :goto_1

    .line 4898
    .end local v0    # "serial":I
    :pswitch_3a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4900
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4901
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4902
    .local v1, "allow":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setDataAllowed(IZ)V

    .line 4903
    goto/16 :goto_1

    .line 4887
    .end local v0    # "serial":I
    .end local v1    # "allow":Z
    :pswitch_3b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4889
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4890
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SelectUiccSub;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SelectUiccSub;-><init>()V

    .line 4891
    .local v1, "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SelectUiccSub;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4892
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setUiccSubscription(ILandroid/hardware/radio/V1_0/SelectUiccSub;)V

    .line 4893
    goto/16 :goto_1

    .line 4877
    .end local v0    # "serial":I
    .end local v1    # "uiccSub":Landroid/hardware/radio/V1_0/SelectUiccSub;
    :pswitch_3c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4880
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4881
    .local v1, "resetType":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->nvResetConfig(II)V

    .line 4882
    goto/16 :goto_1

    .line 4867
    .end local v0    # "serial":I
    .end local v1    # "resetType":I
    :pswitch_3d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4869
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4870
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 4871
    .local v1, "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->nvWriteCdmaPrl(ILjava/util/ArrayList;)V

    .line 4872
    goto/16 :goto_1

    .line 4856
    .end local v0    # "serial":I
    .end local v1    # "prl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_3e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4858
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4859
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/NvWriteItem;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/NvWriteItem;-><init>()V

    .line 4860
    .local v1, "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/NvWriteItem;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4861
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->nvWriteItem(ILandroid/hardware/radio/V1_0/NvWriteItem;)V

    .line 4862
    goto/16 :goto_1

    .line 4846
    .end local v0    # "serial":I
    .end local v1    # "item":Landroid/hardware/radio/V1_0/NvWriteItem;
    :pswitch_3f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4849
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4850
    .local v1, "itemId":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->nvReadItem(II)V

    .line 4851
    goto/16 :goto_1

    .line 4835
    .end local v0    # "serial":I
    .end local v1    # "itemId":I
    :pswitch_40
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4837
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4838
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4839
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4840
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->iccTransmitApduLogicalChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4841
    goto/16 :goto_1

    .line 4825
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_41
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4828
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4829
    .local v1, "channelId":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->iccCloseLogicalChannel(II)V

    .line 4830
    goto/16 :goto_1

    .line 4814
    .end local v0    # "serial":I
    .end local v1    # "channelId":I
    :pswitch_42
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4816
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4817
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4818
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4819
    .local v2, "p2":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    .line 4820
    goto/16 :goto_1

    .line 4803
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    .end local v2    # "p2":I
    :pswitch_43
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4806
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SimApdu;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SimApdu;-><init>()V

    .line 4807
    .local v1, "message":Landroid/hardware/radio/V1_0/SimApdu;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SimApdu;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4808
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->iccTransmitApduBasicChannel(ILandroid/hardware/radio/V1_0/SimApdu;)V

    .line 4809
    goto/16 :goto_1

    .line 4792
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/SimApdu;
    :pswitch_44
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4795
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 4796
    .local v1, "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4797
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendImsSms(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 4798
    goto/16 :goto_1

    .line 4783
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :pswitch_45
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4785
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4786
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getImsRegistrationState(I)V

    .line 4787
    goto/16 :goto_1

    .line 4770
    .end local v0    # "serial":I
    :pswitch_46
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4773
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    .line 4774
    .local v1, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4775
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4776
    .local v2, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 4777
    .local v3, "isRoaming":Z
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setInitialAttachApn(ILandroid/hardware/radio/V1_0/DataProfileInfo;ZZ)V

    .line 4778
    goto/16 :goto_1

    .line 4760
    .end local v0    # "serial":I
    .end local v1    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v2    # "modemCognitive":Z
    .end local v3    # "isRoaming":Z
    :pswitch_47
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4763
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4764
    .local v1, "rate":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCellInfoListRate(II)V

    .line 4765
    goto/16 :goto_1

    .line 4751
    .end local v0    # "serial":I
    .end local v1    # "rate":I
    :pswitch_48
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4754
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCellInfoList(I)V

    .line 4755
    goto/16 :goto_1

    .line 4742
    .end local v0    # "serial":I
    :pswitch_49
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4745
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getVoiceRadioTechnology(I)V

    .line 4746
    goto/16 :goto_1

    .line 4732
    .end local v0    # "serial":I
    :pswitch_4a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4734
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4735
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4736
    .local v1, "contents":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    .line 4737
    goto/16 :goto_1

    .line 4721
    .end local v0    # "serial":I
    .end local v1    # "contents":Ljava/lang/String;
    :pswitch_4b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4723
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4724
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4725
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4726
    .local v2, "ackPdu":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 4727
    goto/16 :goto_1

    .line 4711
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "ackPdu":Ljava/lang/String;
    :pswitch_4c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4714
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4715
    .local v1, "challenge":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->requestIsimAuthentication(ILjava/lang/String;)V

    .line 4716
    goto/16 :goto_1

    .line 4702
    .end local v0    # "serial":I
    .end local v1    # "challenge":Ljava/lang/String;
    :pswitch_4d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4704
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4705
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCdmaSubscriptionSource(I)V

    .line 4706
    goto/16 :goto_1

    .line 4693
    .end local v0    # "serial":I
    :pswitch_4e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4695
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4696
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->reportStkServiceIsRunning(I)V

    .line 4697
    goto/16 :goto_1

    .line 4683
    .end local v0    # "serial":I
    :pswitch_4f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4685
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4686
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4687
    .local v1, "available":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->reportSmsMemoryStatus(IZ)V

    .line 4688
    goto/16 :goto_1

    .line 4673
    .end local v0    # "serial":I
    .end local v1    # "available":Z
    :pswitch_50
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4675
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4676
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4677
    .local v1, "smsc":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 4678
    goto/16 :goto_1

    .line 4664
    .end local v0    # "serial":I
    .end local v1    # "smsc":Ljava/lang/String;
    :pswitch_51
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4666
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4667
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getSmscAddress(I)V

    .line 4668
    goto/16 :goto_1

    .line 4655
    .end local v0    # "serial":I
    :pswitch_52
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4657
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4658
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 4659
    goto/16 :goto_1

    .line 4646
    .end local v0    # "serial":I
    :pswitch_53
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4649
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getDeviceIdentity(I)V

    .line 4650
    goto/16 :goto_1

    .line 4636
    .end local v0    # "serial":I
    :pswitch_54
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4639
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4640
    .local v1, "index":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->deleteSmsOnRuim(II)V

    .line 4641
    goto/16 :goto_1

    .line 4625
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :pswitch_55
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4628
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;-><init>()V

    .line 4629
    .local v1, "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4630
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->writeSmsToRuim(ILandroid/hardware/radio/V1_0/CdmaSmsWriteArgs;)V

    .line 4631
    goto/16 :goto_1

    .line 4616
    .end local v0    # "serial":I
    .end local v1    # "cdmaSms":Landroid/hardware/radio/V1_0/CdmaSmsWriteArgs;
    :pswitch_56
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4618
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4619
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCDMASubscription(I)V

    .line 4620
    goto/16 :goto_1

    .line 4606
    .end local v0    # "serial":I
    :pswitch_57
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4609
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4610
    .local v1, "activate":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 4611
    goto/16 :goto_1

    .line 4596
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :pswitch_58
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4599
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4600
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCdmaBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4601
    goto/16 :goto_1

    .line 4587
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;>;"
    :pswitch_59
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4589
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4590
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCdmaBroadcastConfig(I)V

    .line 4591
    goto/16 :goto_1

    .line 4577
    .end local v0    # "serial":I
    :pswitch_5a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4580
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4581
    .local v1, "activate":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setGsmBroadcastActivation(IZ)V

    .line 4582
    goto/16 :goto_1

    .line 4567
    .end local v0    # "serial":I
    .end local v1    # "activate":Z
    :pswitch_5b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4569
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4570
    .restart local v0    # "serial":I
    invoke-static/range {p2 .. p2}, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4571
    .local v1, "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setGsmBroadcastConfig(ILjava/util/ArrayList;)V

    .line 4572
    goto/16 :goto_1

    .line 4558
    .end local v0    # "serial":I
    .end local v1    # "configInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;>;"
    :pswitch_5c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4560
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4561
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getGsmBroadcastConfig(I)V

    .line 4562
    goto/16 :goto_1

    .line 4547
    .end local v0    # "serial":I
    :pswitch_5d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4549
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4550
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 4551
    .local v1, "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsAck;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4552
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 4553
    goto/16 :goto_1

    .line 4536
    .end local v0    # "serial":I
    .end local v1    # "smsAck":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :pswitch_5e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4539
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 4540
    .local v1, "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4541
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;)V

    .line 4542
    goto/16 :goto_1

    .line 4524
    .end local v0    # "serial":I
    .end local v1    # "sms":Landroid/hardware/radio/V1_0/CdmaSmsMessage;
    :pswitch_5f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4526
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4527
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4528
    .local v1, "dtmf":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4529
    .local v2, "on":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 4530
    .local v3, "off":I
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 4531
    goto/16 :goto_1

    .line 4514
    .end local v0    # "serial":I
    .end local v1    # "dtmf":Ljava/lang/String;
    .end local v2    # "on":I
    .end local v3    # "off":I
    :pswitch_60
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4516
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4517
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4518
    .local v1, "featureCode":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendCDMAFeatureCode(ILjava/lang/String;)V

    .line 4519
    goto/16 :goto_1

    .line 4505
    .end local v0    # "serial":I
    .end local v1    # "featureCode":Ljava/lang/String;
    :pswitch_61
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4507
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4508
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getPreferredVoicePrivacy(I)V

    .line 4509
    goto/16 :goto_1

    .line 4495
    .end local v0    # "serial":I
    :pswitch_62
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4497
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4498
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4499
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 4500
    goto/16 :goto_1

    .line 4486
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :pswitch_63
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4489
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getTTYMode(I)V

    .line 4490
    goto/16 :goto_1

    .line 4476
    .end local v0    # "serial":I
    :pswitch_64
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4479
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4480
    .local v1, "mode":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setTTYMode(II)V

    .line 4481
    goto/16 :goto_1

    .line 4467
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :pswitch_65
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4469
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4470
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCdmaRoamingPreference(I)V

    .line 4471
    goto/16 :goto_1

    .line 4457
    .end local v0    # "serial":I
    :pswitch_66
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4459
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4460
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4461
    .local v1, "type":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCdmaRoamingPreference(II)V

    .line 4462
    goto/16 :goto_1

    .line 4447
    .end local v0    # "serial":I
    .end local v1    # "type":I
    :pswitch_67
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4449
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4450
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4451
    .local v1, "cdmaSub":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCdmaSubscriptionSource(II)V

    .line 4452
    goto/16 :goto_1

    .line 4437
    .end local v0    # "serial":I
    .end local v1    # "cdmaSub":I
    :pswitch_68
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4439
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4440
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4441
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setLocationUpdates(IZ)V

    .line 4442
    goto/16 :goto_1

    .line 4428
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :pswitch_69
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4430
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4431
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getNeighboringCids(I)V

    .line 4432
    goto/16 :goto_1

    .line 4419
    .end local v0    # "serial":I
    :pswitch_6a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4421
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4422
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getPreferredNetworkType(I)V

    .line 4423
    goto/16 :goto_1

    .line 4409
    .end local v0    # "serial":I
    :pswitch_6b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4411
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4412
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4413
    .local v1, "nwType":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setPreferredNetworkType(II)V

    .line 4414
    goto/16 :goto_1

    .line 4400
    .end local v0    # "serial":I
    .end local v1    # "nwType":I
    :pswitch_6c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4403
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->explicitCallTransfer(I)V

    .line 4404
    goto/16 :goto_1

    .line 4390
    .end local v0    # "serial":I
    :pswitch_6d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4392
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4393
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4394
    .local v1, "accept":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 4395
    goto/16 :goto_1

    .line 4380
    .end local v0    # "serial":I
    .end local v1    # "accept":Z
    :pswitch_6e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4382
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4383
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4384
    .local v1, "commandResponse":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendTerminalResponseToSim(ILjava/lang/String;)V

    .line 4385
    goto/16 :goto_1

    .line 4370
    .end local v0    # "serial":I
    .end local v1    # "commandResponse":Ljava/lang/String;
    :pswitch_6f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4372
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4373
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4374
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendEnvelope(ILjava/lang/String;)V

    .line 4375
    goto/16 :goto_1

    .line 4361
    .end local v0    # "serial":I
    .end local v1    # "command":Ljava/lang/String;
    :pswitch_70
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4363
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4364
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getAvailableBandModes(I)V

    .line 4365
    goto/16 :goto_1

    .line 4351
    .end local v0    # "serial":I
    :pswitch_71
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4354
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4355
    .local v1, "mode":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setBandMode(II)V

    .line 4356
    goto/16 :goto_1

    .line 4341
    .end local v0    # "serial":I
    .end local v1    # "mode":I
    :pswitch_72
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4343
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4344
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4345
    .local v1, "index":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->deleteSmsOnSim(II)V

    .line 4346
    goto/16 :goto_1

    .line 4330
    .end local v0    # "serial":I
    .end local v1    # "index":I
    :pswitch_73
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4332
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4333
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/SmsWriteArgs;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/SmsWriteArgs;-><init>()V

    .line 4334
    .local v1, "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/SmsWriteArgs;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4335
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->writeSmsToSim(ILandroid/hardware/radio/V1_0/SmsWriteArgs;)V

    .line 4336
    goto/16 :goto_1

    .line 4320
    .end local v0    # "serial":I
    .end local v1    # "smsWriteArgs":Landroid/hardware/radio/V1_0/SmsWriteArgs;
    :pswitch_74
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4322
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4323
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4324
    .local v1, "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setSuppServiceNotifications(IZ)V

    .line 4325
    goto/16 :goto_1

    .line 4311
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :pswitch_75
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4313
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4314
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getDataCallList(I)V

    .line 4315
    goto/16 :goto_1

    .line 4302
    .end local v0    # "serial":I
    :pswitch_76
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4304
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4305
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getClip(I)V

    .line 4306
    goto/16 :goto_1

    .line 4293
    .end local v0    # "serial":I
    :pswitch_77
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4295
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4296
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getMute(I)V

    .line 4297
    goto/16 :goto_1

    .line 4283
    .end local v0    # "serial":I
    :pswitch_78
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4285
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4286
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4287
    .restart local v1    # "enable":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setMute(IZ)V

    .line 4288
    goto/16 :goto_1

    .line 4273
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    :pswitch_79
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4275
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4276
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4277
    .local v1, "gsmIndex":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->separateConnection(II)V

    .line 4278
    goto/16 :goto_1

    .line 4264
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :pswitch_7a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4266
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4267
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getBasebandVersion(I)V

    .line 4268
    goto/16 :goto_1

    .line 4255
    .end local v0    # "serial":I
    :pswitch_7b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4257
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4258
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->stopDtmf(I)V

    .line 4259
    goto/16 :goto_1

    .line 4245
    .end local v0    # "serial":I
    :pswitch_7c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4247
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4248
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4249
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->startDtmf(ILjava/lang/String;)V

    .line 4250
    goto/16 :goto_1

    .line 4236
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :pswitch_7d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4238
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4239
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getAvailableNetworks(I)V

    .line 4240
    goto/16 :goto_1

    .line 4226
    .end local v0    # "serial":I
    :pswitch_7e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4229
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4230
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;)V

    .line 4231
    goto/16 :goto_1

    .line 4217
    .end local v0    # "serial":I
    .end local v1    # "operatorNumeric":Ljava/lang/String;
    :pswitch_7f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4220
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 4221
    goto/16 :goto_1

    .line 4208
    .end local v0    # "serial":I
    :pswitch_80
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4210
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4211
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getNetworkSelectionMode(I)V

    .line 4212
    goto/16 :goto_1

    .line 4196
    .end local v0    # "serial":I
    :pswitch_81
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4198
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4199
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4200
    .local v1, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4201
    .local v2, "oldPassword":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4202
    .local v3, "newPassword":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4203
    goto/16 :goto_1

    .line 4182
    .end local v0    # "serial":I
    .end local v1    # "facility":Ljava/lang/String;
    .end local v2    # "oldPassword":Ljava/lang/String;
    .end local v3    # "newPassword":Ljava/lang/String;
    :pswitch_82
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4185
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 4186
    .local v8, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    .line 4187
    .local v9, "lockState":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4188
    .local v13, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 4189
    .local v14, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 4190
    .local v15, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 4191
    goto/16 :goto_1

    .line 4169
    .end local v7    # "serial":I
    .end local v8    # "facility":Ljava/lang/String;
    .end local v9    # "lockState":Z
    .end local v13    # "password":Ljava/lang/String;
    .end local v14    # "serviceClass":I
    .end local v15    # "appId":Ljava/lang/String;
    :pswitch_83
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 4172
    .restart local v6    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 4173
    .local v7, "facility":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 4174
    .local v8, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 4175
    .local v9, "serviceClass":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 4176
    .local v13, "appId":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4177
    goto/16 :goto_1

    .line 4158
    .end local v6    # "serial":I
    .end local v7    # "facility":Ljava/lang/String;
    .end local v8    # "password":Ljava/lang/String;
    .end local v9    # "serviceClass":I
    .end local v13    # "appId":Ljava/lang/String;
    :pswitch_84
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4161
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4162
    .local v1, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 4163
    .local v2, "reasonRadioShutDown":Z
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->deactivateDataCall(IIZ)V

    .line 4164
    goto/16 :goto_1

    .line 4149
    .end local v0    # "serial":I
    .end local v1    # "cid":I
    .end local v2    # "reasonRadioShutDown":Z
    :pswitch_85
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4152
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->acceptCall(I)V

    .line 4153
    goto/16 :goto_1

    .line 4138
    .end local v0    # "serial":I
    :pswitch_86
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4141
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4142
    .local v1, "success":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4143
    .local v2, "cause":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 4144
    goto/16 :goto_1

    .line 4127
    .end local v0    # "serial":I
    .end local v1    # "success":Z
    .end local v2    # "cause":I
    :pswitch_87
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4130
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 4131
    .local v1, "enable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 4132
    .local v2, "serviceClass":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCallWaiting(IZI)V

    .line 4133
    goto/16 :goto_1

    .line 4117
    .end local v0    # "serial":I
    .end local v1    # "enable":Z
    .end local v2    # "serviceClass":I
    :pswitch_88
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4120
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4121
    .local v1, "serviceClass":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCallWaiting(II)V

    .line 4122
    goto/16 :goto_1

    .line 4106
    .end local v0    # "serial":I
    .end local v1    # "serviceClass":I
    :pswitch_89
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4109
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4110
    .local v1, "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4111
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4112
    goto/16 :goto_1

    .line 4095
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_8a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4097
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4098
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 4099
    .restart local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4100
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 4101
    goto/16 :goto_1

    .line 4085
    .end local v0    # "serial":I
    .end local v1    # "callInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :pswitch_8b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4087
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4088
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 4089
    .local v1, "status":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setClir(II)V

    .line 4090
    goto/16 :goto_1

    .line 4076
    .end local v0    # "serial":I
    .end local v1    # "status":I
    :pswitch_8c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4078
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4079
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getClir(I)V

    .line 4080
    goto/16 :goto_1

    .line 4067
    .end local v0    # "serial":I
    :pswitch_8d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4069
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4070
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->cancelPendingUssd(I)V

    .line 4071
    goto/16 :goto_1

    .line 4057
    .end local v0    # "serial":I
    :pswitch_8e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4059
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4060
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4061
    .local v1, "ussd":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 4062
    goto/16 :goto_1

    .line 4046
    .end local v0    # "serial":I
    .end local v1    # "ussd":Ljava/lang/String;
    :pswitch_8f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4048
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4049
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/IccIo;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/IccIo;-><init>()V

    .line 4050
    .local v1, "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/IccIo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4051
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->iccIOForApp(ILandroid/hardware/radio/V1_0/IccIo;)V

    .line 4052
    goto/16 :goto_1

    .line 4031
    .end local v0    # "serial":I
    .end local v1    # "iccIo":Landroid/hardware/radio/V1_0/IccIo;
    :pswitch_90
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4033
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 4034
    .local v7, "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 4035
    .local v8, "radioTechnology":I
    new-instance v0, Landroid/hardware/radio/V1_0/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/DataProfileInfo;-><init>()V

    move-object v9, v0

    .line 4036
    .local v9, "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    invoke-virtual {v9, v11}, Landroid/hardware/radio/V1_0/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4037
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v13

    .line 4038
    .local v13, "modemCognitive":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v14

    .line 4039
    .local v14, "roamingAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v15

    .line 4040
    .local v15, "isRoaming":Z
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setupDataCall(IILandroid/hardware/radio/V1_0/DataProfileInfo;ZZZ)V

    .line 4041
    goto/16 :goto_1

    .line 4020
    .end local v7    # "serial":I
    .end local v8    # "radioTechnology":I
    .end local v9    # "dataProfileInfo":Landroid/hardware/radio/V1_0/DataProfileInfo;
    .end local v13    # "modemCognitive":Z
    .end local v14    # "roamingAllowed":Z
    .end local v15    # "isRoaming":Z
    :pswitch_91
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4023
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4024
    .local v1, "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4025
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4026
    goto/16 :goto_1

    .line 4009
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_92
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4011
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4012
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/GsmSmsMessage;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/GsmSmsMessage;-><init>()V

    .line 4013
    .restart local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/GsmSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 4014
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendSms(ILandroid/hardware/radio/V1_0/GsmSmsMessage;)V

    .line 4015
    goto/16 :goto_1

    .line 3999
    .end local v0    # "serial":I
    .end local v1    # "message":Landroid/hardware/radio/V1_0/GsmSmsMessage;
    :pswitch_93
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 4001
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 4002
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4003
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 4004
    goto/16 :goto_1

    .line 3989
    .end local v0    # "serial":I
    .end local v1    # "s":Ljava/lang/String;
    :pswitch_94
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3991
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3992
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 3993
    .local v1, "on":Z
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setRadioPower(IZ)V

    .line 3994
    goto/16 :goto_1

    .line 3980
    .end local v0    # "serial":I
    .end local v1    # "on":Z
    :pswitch_95
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3982
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3983
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getOperator(I)V

    .line 3984
    goto/16 :goto_1

    .line 3971
    .end local v0    # "serial":I
    :pswitch_96
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3974
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getDataRegistrationState(I)V

    .line 3975
    goto/16 :goto_1

    .line 3962
    .end local v0    # "serial":I
    :pswitch_97
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3965
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getVoiceRegistrationState(I)V

    .line 3966
    goto/16 :goto_1

    .line 3953
    .end local v0    # "serial":I
    :pswitch_98
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3956
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getSignalStrength(I)V

    .line 3957
    goto/16 :goto_1

    .line 3944
    .end local v0    # "serial":I
    :pswitch_99
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3946
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3947
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getLastCallFailCause(I)V

    .line 3948
    goto/16 :goto_1

    .line 3935
    .end local v0    # "serial":I
    :pswitch_9a
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3938
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->rejectCall(I)V

    .line 3939
    goto/16 :goto_1

    .line 3926
    .end local v0    # "serial":I
    :pswitch_9b
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3929
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->conference(I)V

    .line 3930
    goto/16 :goto_1

    .line 3917
    .end local v0    # "serial":I
    :pswitch_9c
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3919
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3920
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 3921
    goto/16 :goto_1

    .line 3908
    .end local v0    # "serial":I
    :pswitch_9d
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3910
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3911
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->hangupForegroundResumeBackground(I)V

    .line 3912
    goto/16 :goto_1

    .line 3899
    .end local v0    # "serial":I
    :pswitch_9e
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3902
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->hangupWaitingOrBackground(I)V

    .line 3903
    goto/16 :goto_1

    .line 3889
    .end local v0    # "serial":I
    :pswitch_9f
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3891
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3892
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 3893
    .local v1, "gsmIndex":I
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->hangup(II)V

    .line 3894
    goto/16 :goto_1

    .line 3879
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    :pswitch_a0
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3882
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3883
    .local v1, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getImsiForApp(ILjava/lang/String;)V

    .line 3884
    goto/16 :goto_1

    .line 3868
    .end local v0    # "serial":I
    .end local v1    # "aid":Ljava/lang/String;
    :pswitch_a1
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3870
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3871
    .restart local v0    # "serial":I
    new-instance v1, Landroid/hardware/radio/V1_0/Dial;

    invoke-direct {v1}, Landroid/hardware/radio/V1_0/Dial;-><init>()V

    .line 3872
    .local v1, "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    invoke-virtual {v1, v11}, Landroid/hardware/radio/V1_0/Dial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 3873
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 3874
    goto/16 :goto_1

    .line 3859
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Landroid/hardware/radio/V1_0/Dial;
    :pswitch_a2
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3861
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3862
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getCurrentCalls(I)V

    .line 3863
    goto/16 :goto_1

    .line 3849
    .end local v0    # "serial":I
    :pswitch_a3
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3851
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3852
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3853
    .local v1, "netPin":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 3854
    goto/16 :goto_1

    .line 3837
    .end local v0    # "serial":I
    .end local v1    # "netPin":Ljava/lang/String;
    :pswitch_a4
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3840
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3841
    .local v1, "oldPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3842
    .local v2, "newPin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3843
    .local v3, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3844
    goto/16 :goto_1

    .line 3825
    .end local v0    # "serial":I
    .end local v1    # "oldPin2":Ljava/lang/String;
    .end local v2    # "newPin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_a5
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3827
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3828
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3829
    .local v1, "oldPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3830
    .local v2, "newPin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3831
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3832
    goto/16 :goto_1

    .line 3813
    .end local v0    # "serial":I
    .end local v1    # "oldPin":Ljava/lang/String;
    .end local v2    # "newPin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_a6
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3815
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3816
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3817
    .local v1, "puk2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3818
    .local v2, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3819
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3820
    goto :goto_1

    .line 3802
    .end local v0    # "serial":I
    .end local v1    # "puk2":Ljava/lang/String;
    .end local v2    # "pin2":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_a7
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3805
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3806
    .local v1, "pin2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3807
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3808
    goto :goto_1

    .line 3790
    .end local v0    # "serial":I
    .end local v1    # "pin2":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_a8
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3792
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3793
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3794
    .local v1, "puk":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3795
    .local v2, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3796
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3797
    goto :goto_1

    .line 3779
    .end local v0    # "serial":I
    .end local v1    # "puk":Ljava/lang/String;
    .end local v2    # "pin":Ljava/lang/String;
    .end local v3    # "aid":Ljava/lang/String;
    :pswitch_a9
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3782
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3783
    .local v1, "pin":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3784
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {v10, v0, v1, v2}, Landroid/hardware/radio/V1_5/IRadio$Stub;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    .line 3785
    goto :goto_1

    .line 3770
    .end local v0    # "serial":I
    .end local v1    # "pin":Ljava/lang/String;
    .end local v2    # "aid":Ljava/lang/String;
    :pswitch_aa
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 3773
    .restart local v0    # "serial":I
    invoke-virtual {v10, v0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->getIccCardStatus(I)V

    .line 3774
    goto :goto_1

    .line 3758
    .end local v0    # "serial":I
    :pswitch_ab
    invoke-virtual {v11, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/V1_0/IRadioResponse;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioResponse;

    move-result-object v0

    .line 3761
    .local v0, "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/V1_0/IRadioIndication;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/radio/V1_0/IRadioIndication;

    move-result-object v1

    .line 3762
    .local v1, "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    invoke-virtual {v10, v0, v1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    .line 3763
    invoke-virtual {v12, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 3765
    nop

    .line 5651
    .end local v0    # "radioResponse":Landroid/hardware/radio/V1_0/IRadioResponse;
    .end local v1    # "radioIndication":Landroid/hardware/radio/V1_0/IRadioIndication;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 3709
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 3737
    const-string v0, "android.hardware.radio@1.5::IRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3738
    return-object p0

    .line 3740
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3744
    invoke-virtual {p0, p1}, Landroid/hardware/radio/V1_5/IRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 3745
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 3699
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/IRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 3731
    const/4 v0, 0x1

    return v0
.end method
