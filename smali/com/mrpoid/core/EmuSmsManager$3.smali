.class final Lcom/mrpoid/core/EmuSmsManager$3;
.super Lcom/edroid/common/utils/Singleton;
.source "EmuSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/core/EmuSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/edroid/common/utils/Singleton<",
        "Lcom/mrpoid/core/EmuSmsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Lcom/edroid/common/utils/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/mrpoid/core/EmuSmsManager;
    .locals 2

    .line 292
    new-instance v0, Lcom/mrpoid/core/EmuSmsManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mrpoid/core/EmuSmsManager;-><init>(Lcom/mrpoid/core/EmuSmsManager$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/mrpoid/core/EmuSmsManager$3;->create()Lcom/mrpoid/core/EmuSmsManager;

    move-result-object v0

    return-object v0
.end method
