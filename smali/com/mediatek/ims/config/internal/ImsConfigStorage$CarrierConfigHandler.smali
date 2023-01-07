.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;
.super Landroid/os/Handler;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarrierConfigHandler"
.end annotation


# instance fields
.field private isGetProvisionUrc:Z

.field private mPhoneId:I

.field private provisionInfoTemp:[Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;ILandroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;
    .param p2, "phoneId"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .line 202
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 203
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 204
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->mPhoneId:I

    .line 205
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 209
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigStorage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x17

    const/4 v2, -0x1

    const/16 v3, 0x16

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 244
    :pswitch_0
    const/4 v0, -0x1

    .line 245
    .local v0, "oldWfcMode":I
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$800(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 246
    const-string v1, "ImsConfigStorage"

    const-string v2, "Should not set invalid wfc mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$800(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)I

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$700(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V

    .line 250
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->sendWfcProfileInfo(I)V

    .line 252
    goto/16 :goto_7

    .line 254
    .end local v0    # "oldWfcMode":I
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$900(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$1000(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 256
    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$1000(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$902(Lcom/mediatek/ims/config/internal/ImsConfigStorage;Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$900(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$1000(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Landroid/content/Context;

    move-result-object v1

    .line 260
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 259
    invoke-interface {v0, v1, v2, v6}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 262
    goto/16 :goto_7

    .line 241
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$700(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V

    .line 242
    goto/16 :goto_7

    .line 359
    :pswitch_3
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ImsConfigStorage"

    const-string v1, "MSG_IMS_SET_MDCFG_DONE: Enter messege"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 362
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;

    .line 363
    .local v1, "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;
    const/4 v3, 0x0

    .line 365
    .local v3, "resultStr":Ljava/lang/String;
    iget-object v7, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->lockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 366
    :try_start_0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 367
    iget v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->requestConfigNum:I

    new-array v4, v4, [I

    .line 368
    .local v4, "errorResult":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 369
    aput v2, v4, v5

    .line 368
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 372
    .end local v5    # "i":I
    :cond_4
    iput-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->resultArray:[I

    .line 373
    const/16 v2, 0x20

    iput v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->configResult:I

    .line 374
    const-string v2, "ImsConfigStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SET_MDCFG_DONE, error ret, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    nop

    .end local v4    # "errorResult":[I
    goto :goto_2

    .line 376
    :cond_5
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    .line 378
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "resultStrArray":[Ljava/lang/String;
    array-length v4, v2

    new-array v4, v4, [I

    .line 380
    .local v4, "resultIntArray":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_6

    .line 381
    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 380
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 383
    .end local v5    # "i":I
    :cond_6
    iput-object v4, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->resultArray:[I

    .line 385
    const/16 v5, 0x21

    iput v5, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->configResult:I

    .line 386
    const-string v5, "ImsConfigStorage"

    const-string v6, "SET_MDCFG_DONE, finish set MD Ims config!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v2    # "resultStrArray":[Ljava/lang/String;
    .end local v4    # "resultIntArray":[I
    :goto_2
    iget-object v2, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 389
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "ImsConfigStorage"

    const-string v4, "SET_MDCFG_DONE, notify result"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_7
    monitor-exit v7

    .line 391
    goto/16 :goto_7

    .line 390
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 341
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cfgResult":Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;
    .end local v3    # "resultStr":Ljava/lang/String;
    :pswitch_4
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ImsConfigStorage"

    const-string v1, "EVENT_GET_PROVISION_DONE_URC: Enter messege"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 344
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    .line 345
    iput-boolean v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->isGetProvisionUrc:Z

    .line 347
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_PROVISION_DONE_URC: error, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfigStorage"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 350
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_GET_PROVISION_DONE_URC: provisionInfoTemp.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfigStorage"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    if-eqz v1, :cond_14

    array-length v1, v1

    if-lt v1, v4, :cond_14

    .line 353
    iput-boolean v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->isGetProvisionUrc:Z

    goto/16 :goto_7

    .line 321
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ImsConfigStorage"

    const-string v2, "MSG_IMS_SET_PROVISION_DONE: Enter messege"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 324
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;

    .line 325
    .local v2, "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    iget-object v7, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 326
    :try_start_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_b

    .line 328
    iput v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 329
    const-string v1, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_IMS_SET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 331
    :cond_b
    iput v1, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 332
    const-string v1, "ImsConfigStorage"

    const-string v3, "MSG_IMS_SET_PROVISION_DONE: Finish set provision!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_3
    iget-object v1, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 335
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "ImsConfigStorage"

    const-string v3, "MSG_IMS_SET_PROVISION_DONE: notify result"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_c
    monitor-exit v7

    .line 338
    goto/16 :goto_7

    .line 336
    :catchall_1
    move-exception v1

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 280
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    :pswitch_6
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ImsConfigStorage"

    const-string v2, "MSG_IMS_GET_PROVISION_DONE: Enter messege"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 283
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;

    .line 285
    .restart local v2    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    iget-object v7, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 286
    :try_start_2
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_f

    .line 287
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 288
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v4, :cond_e

    .line 292
    const/16 v1, 0x19

    iput v1, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 293
    const-string v1, "ImsConfigStorage"

    const-string v3, "MSG_IMS_GET_PROVISION_DONE: MD no default value"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 295
    :cond_e
    iput v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 296
    const-string v1, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_IMS_GET_PROVISION_DONE: error ret null, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 300
    :cond_f
    iget-boolean v8, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->isGetProvisionUrc:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    array-length v8, v8

    if-ge v8, v4, :cond_10

    goto :goto_4

    .line 305
    :cond_10
    new-array v3, v4, [Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    .line 306
    iget-object v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v3, v5

    .line 307
    iget-object v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->provisionInfoTemp:[Ljava/lang/String;

    aget-object v4, v4, v6

    aput-object v4, v3, v6

    .line 308
    iput v1, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 310
    const-string v1, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_IMS_GET_PROVISION_DONE: provisionInfo[0]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", provisionInfo[1]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionInfo:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 301
    :cond_11
    :goto_4
    const-string v1, "ImsConfigStorage"

    const-string v4, "MSG_IMS_GET_PROVISION_DONE: Error getting, URC error or no URC received!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput v3, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 315
    :goto_5
    iget-object v1, v2, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 316
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "ImsConfigStorage"

    const-string v3, "MSG_IMS_GET_PROVISION_DONE: notify result"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_12
    monitor-exit v7

    .line 318
    goto/16 :goto_7

    .line 317
    :catchall_2
    move-exception v1

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 270
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
    :pswitch_7
    sget-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowSendCmd:Ljava/util/HashMap;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$500(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->access$1100(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 273
    sget-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->ECCAllowBroadcast:Ljava/util/HashMap;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "ImsConfigStorage"

    const-string v1, "All feature false after sim absent,should broadcast VoLTE feature value once for ECC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 236
    :pswitch_8
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$400(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V

    .line 238
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$500(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->access$600(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)V

    .line 239
    goto/16 :goto_7

    .line 216
    :pswitch_9
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v0

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 218
    .local v1, "opCode":I
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getOpCode()I

    move-result v2

    if-eq v2, v1, :cond_13

    .line 219
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->setOpCode(I)V

    .line 220
    const-string v2, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start load config storage for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " on phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$300(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;)V

    .line 223
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->init(I)V

    .line 224
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->setInitDone(Z)V

    .line 225
    const-string v2, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish Loading config storage for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 227
    :cond_13
    const-string v2, "ImsConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip reloading config by same opCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " on phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->setInitDone(Z)V

    .line 231
    .end local v1    # "opCode":I
    :goto_6
    monitor-exit v0

    .line 232
    goto :goto_7

    .line 231
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 212
    :pswitch_a
    const-string v0, "ImsConfigStorage"

    const-string v1, "Reset config storage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$CarrierConfigHandler;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$200(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->access$300(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;)V

    .line 214
    nop

    .line 396
    :cond_14
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
.end method
