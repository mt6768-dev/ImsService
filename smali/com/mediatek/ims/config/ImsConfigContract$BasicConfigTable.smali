.class public abstract Lcom/mediatek/ims/config/ImsConfigContract$BasicConfigTable;
.super Ljava/lang/Object;
.source "ImsConfigContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/ImsConfigContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BasicConfigTable"
.end annotation


# static fields
.field public static final CONFIG_ID:Ljava/lang/String; = "config_id"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final MIMETYPE_ID:Ljava/lang/String; = "mimetype_id"

.field public static final PHONE_ID:Ljava/lang/String; = "phone_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
