.class Lcom/mediatek/ims/MtkSuppServExt$Task;
.super Ljava/lang/Object;
.source "MtkSuppServExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkSuppServExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field private mExtraBool:Z

.field private mExtraInt:I

.field private mExtraMsg:Ljava/lang/String;

.field private mTaskId:I

.field final synthetic this$0:Lcom/mediatek/ims/MtkSuppServExt;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MtkSuppServExt;IILjava/lang/String;)V
    .locals 1
    .param p2, "taskId"    # I
    .param p3, "extraInt"    # I
    .param p4, "extraMsg"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 p1, -0x1

    iput p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mTaskId:I

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraBool:Z

    .line 158
    iput p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraInt:I

    .line 159
    const-string p1, ""

    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraMsg:Ljava/lang/String;

    .line 171
    iput p2, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mTaskId:I

    .line 172
    iput p3, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraInt:I

    .line 173
    iput-object p4, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraMsg:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ims/MtkSuppServExt;ILjava/lang/String;)V
    .locals 1
    .param p2, "taskId"    # I
    .param p3, "extraMsg"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 p1, -0x1

    iput p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mTaskId:I

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraBool:Z

    .line 158
    iput p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraInt:I

    .line 159
    const-string p1, ""

    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraMsg:Ljava/lang/String;

    .line 167
    iput p2, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mTaskId:I

    .line 168
    iput-object p3, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraMsg:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ims/MtkSuppServExt;IZLjava/lang/String;)V
    .locals 1
    .param p2, "taskId"    # I
    .param p3, "b"    # Z
    .param p4, "extraMsg"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 p1, -0x1

    iput p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mTaskId:I

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraBool:Z

    .line 158
    iput p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraInt:I

    .line 159
    const-string p1, ""

    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraMsg:Ljava/lang/String;

    .line 162
    iput p2, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mTaskId:I

    .line 163
    iput-boolean p3, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraBool:Z

    .line 164
    iput-object p4, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraMsg:Ljava/lang/String;

    .line 165
    return-void
.end method


# virtual methods
.method public getExtraBoolean()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraBool:Z

    return v0
.end method

.method public getExtraInt()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraInt:I

    return v0
.end method

.method public getExtraMsg()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mTaskId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ExtraBool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraBool:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ExtraInt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ExtraMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$Task;->mExtraMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
