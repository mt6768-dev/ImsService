.class Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;
.super Landroid/os/Handler;
.source "MtkSuppServExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkSuppServExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuppServTaskDriven"
.end annotation


# static fields
.field private static final EVENT_DONE:I = 0x0

.field private static final EVENT_EXEC_NEXT:I = 0x1

.field private static final STATE_DOING:I = 0x1

.field private static final STATE_DONE:I = 0x2

.field private static final STATE_NO_PENDING:I


# instance fields
.field private mPendingTask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/ims/MtkSuppServExt$Task;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mStateLock:Ljava/lang/Object;

.field private mTaskLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mediatek/ims/MtkSuppServExt;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MtkSuppServExt;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    .line 198
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    .line 199
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    .line 208
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mState:I

    .line 211
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ims/MtkSuppServExt;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 213
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    .line 214
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    .line 198
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    .line 199
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    .line 208
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mState:I

    .line 215
    return-void
.end method

.method private eventToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I

    .line 361
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 367
    const-string v0, "UNKNOWN_EVENT"

    return-object v0

    .line 365
    :cond_0
    const-string v0, "EVENT_EXEC_NEXT"

    return-object v0

    .line 363
    :cond_1
    const-string v0, "EVENT_DONE"

    return-object v0
.end method

.method private getCurrentPendingTask()Lcom/mediatek/ims/MtkSuppServExt$Task;
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/MtkSuppServExt$Task;

    monitor-exit v0

    return-object v1

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getState()I
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mState:I

    monitor-exit v0

    return v1

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removePendingTask(I)V
    .locals 2
    .param p1, "index"    # I

    .line 253
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

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

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 235
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iput p1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mState:I

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .line 349
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 357
    const-string v0, "UNKNOWN_STATE"

    return-object v0

    .line 355
    :cond_0
    const-string v0, "STATE_DONE"

    return-object v0

    .line 353
    :cond_1
    const-string v0, "STATE_DOING"

    return-object v0

    .line 351
    :cond_2
    const-string v0, "STATE_NO_PENDING"

    return-object v0
.end method


# virtual methods
.method public appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V
    .locals 2
    .param p1, "task"    # Lcom/mediatek/ims/MtkSuppServExt$Task;

    .line 218
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 225
    return-void

    .line 221
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearPendingTask()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->mPendingTask:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 264
    monitor-exit v0

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public exec()V
    .locals 8

    .line 268
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->getCurrentPendingTask()Lcom/mediatek/ims/MtkSuppServExt$Task;

    move-result-object v0

    .line 269
    .local v0, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0, v1}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->setState(I)V

    .line 272
    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 276
    return-void

    .line 279
    :cond_1
    invoke-direct {p0, v3}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->setState(I)V

    .line 280
    invoke-virtual {v0}, Lcom/mediatek/ims/MtkSuppServExt$Task;->getTaskId()I

    move-result v2

    .line 281
    .local v2, "taskId":I
    invoke-static {}, Lcom/mediatek/ims/MtkSuppServExt;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    iget-object v4, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkSuppServExt$Task;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/MtkSuppServExt;->access$100(Lcom/mediatek/ims/MtkSuppServExt;Ljava/lang/String;)V

    .line 285
    :cond_2
    if-eqz v2, :cond_8

    if-eq v2, v3, :cond_7

    const/4 v1, 0x2

    if-eq v2, v1, :cond_5

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    .line 328
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->access$600(Lcom/mediatek/ims/MtkSuppServExt;)V

    goto/16 :goto_0

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-virtual {v1}, Lcom/mediatek/ims/MtkSuppServExt;->getUtCapabilityFromSettings()I

    move-result v1

    .line 314
    .local v1, "currentUtStatus":I
    invoke-virtual {v0}, Lcom/mediatek/ims/MtkSuppServExt$Task;->getExtraInt()I

    move-result v4

    .line 315
    .local v4, "newUtStatus":I
    iget-object v5, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TASK_SET_UT_CAPABILITY, currentUtStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " newUtStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/MtkSuppServExt;->access$100(Lcom/mediatek/ims/MtkSuppServExt;Ljava/lang/String;)V

    .line 318
    if-eq v1, v4, :cond_4

    .line 319
    iget-object v5, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v5, v4}, Lcom/mediatek/ims/MtkSuppServExt;->access$700(Lcom/mediatek/ims/MtkSuppServExt;I)V

    .line 322
    :cond_4
    iget-object v5, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v5, v3}, Lcom/mediatek/ims/MtkSuppServExt;->access$202(Lcom/mediatek/ims/MtkSuppServExt;Z)Z

    .line 324
    iget-object v3, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v3}, Lcom/mediatek/ims/MtkSuppServExt;->access$600(Lcom/mediatek/ims/MtkSuppServExt;)V

    .line 325
    goto :goto_0

    .line 297
    .end local v1    # "currentUtStatus":I
    .end local v4    # "newUtStatus":I
    :cond_5
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->access$400(Lcom/mediatek/ims/MtkSuppServExt;)I

    move-result v1

    .line 298
    .local v1, "currentVolteStatus":I
    invoke-virtual {v0}, Lcom/mediatek/ims/MtkSuppServExt$Task;->getExtraInt()I

    move-result v4

    .line 299
    .local v4, "newVolteStatus":I
    iget-object v5, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TASK_SET_VOLTE_SUBSCRIPTION_DIRECLY, currentVolteStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " newVolteStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/MtkSuppServExt;->access$100(Lcom/mediatek/ims/MtkSuppServExt;Ljava/lang/String;)V

    .line 302
    if-eq v1, v4, :cond_6

    .line 303
    iget-object v5, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v5, v4}, Lcom/mediatek/ims/MtkSuppServExt;->access$500(Lcom/mediatek/ims/MtkSuppServExt;I)V

    .line 306
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v5, v3}, Lcom/mediatek/ims/MtkSuppServExt;->access$202(Lcom/mediatek/ims/MtkSuppServExt;Z)Z

    .line 308
    iget-object v3, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v3}, Lcom/mediatek/ims/MtkSuppServExt;->access$600(Lcom/mediatek/ims/MtkSuppServExt;)V

    .line 309
    goto :goto_0

    .line 287
    .end local v1    # "currentVolteStatus":I
    .end local v4    # "newVolteStatus":I
    :cond_7
    iget-object v3, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v3, v1}, Lcom/mediatek/ims/MtkSuppServExt;->access$202(Lcom/mediatek/ims/MtkSuppServExt;Z)Z

    .line 290
    :cond_8
    invoke-virtual {v0}, Lcom/mediatek/ims/MtkSuppServExt$Task;->getExtraBoolean()Z

    move-result v1

    .line 291
    .local v1, "force":Z
    invoke-virtual {v0}, Lcom/mediatek/ims/MtkSuppServExt$Task;->getExtraMsg()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "extraMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v4, v1, v3}, Lcom/mediatek/ims/MtkSuppServExt;->access$300(Lcom/mediatek/ims/MtkSuppServExt;ZLjava/lang/String;)V

    .line 293
    nop

    .line 332
    .end local v1    # "force":Z
    .end local v3    # "extraMsg":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 340
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->removePendingTask(I)V

    .line 341
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->setState(I)V

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->exec()V

    .line 346
    :goto_0
    return-void
.end method
