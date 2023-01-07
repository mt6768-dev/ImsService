.class public Lcom/mediatek/ims/config/internal/ImsFeatureMap;
.super Ljava/lang/Object;
.source "ImsFeatureMap.java"


# instance fields
.field private mFeatureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsFeatureMap;->mFeatureMap:Ljava/util/HashMap;

    .line 48
    iput p1, p0, Lcom/mediatek/ims/config/internal/ImsFeatureMap;->mPhoneId:I

    .line 49
    return-void
.end method


# virtual methods
.method public getFeatureMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsFeatureMap;->mFeatureMap:Ljava/util/HashMap;

    return-object v0
.end method
