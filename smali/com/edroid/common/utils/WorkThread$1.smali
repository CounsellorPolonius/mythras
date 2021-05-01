.class final Lcom/edroid/common/utils/WorkThread$1;
.super Lcom/edroid/common/utils/Singleton;
.source "WorkThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/edroid/common/utils/WorkThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/edroid/common/utils/Singleton<",
        "Lcom/edroid/common/utils/WorkThread;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Lcom/edroid/common/utils/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/edroid/common/utils/WorkThread;
    .locals 1

    .line 321
    new-instance v0, Lcom/edroid/common/utils/WorkThread;

    invoke-direct {v0}, Lcom/edroid/common/utils/WorkThread;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/edroid/common/utils/WorkThread$1;->create()Lcom/edroid/common/utils/WorkThread;

    move-result-object v0

    return-object v0
.end method
