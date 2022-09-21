.class Landroidx/core/view/ViewCompat$Api23Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4527
    return-void
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroid/view/WindowInsets;
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 4530
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
