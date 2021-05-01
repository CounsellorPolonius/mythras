.class final Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;
.super Ljava/lang/Object;
.source "AppProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/apps/procmgr/AppProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Item"
.end annotation


# instance fields
.field app:Lcom/mrpoid/apps/procmgr/AppProcess;

.field conn:Landroid/content/ServiceConnection;

.field connectedTime:J

.field mark:Ljava/lang/String;

.field readyTime:J

.field state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->mark:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->app:Lcom/mrpoid/apps/procmgr/AppProcess;

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->readyTime:J

    .line 46
    sget-object v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->IDLE:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    iput-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->state:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$Item;->mark:Ljava/lang/String;

    return-object v0
.end method
