.class final Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;
.super Ljava/lang/Object;
.source "AppProcessManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/apps/procmgr/AppProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyConnetion"
.end annotation


# instance fields
.field callback:Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;

.field procIndex:I

.field final synthetic this$0:Lcom/mrpoid/apps/procmgr/AppProcessManager;


# direct methods
.method public constructor <init>(Lcom/mrpoid/apps/procmgr/AppProcessManager;ILcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->this$0:Lcom/mrpoid/apps/procmgr/AppProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->procIndex:I

    .line 260
    iput-object p3, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->callback:Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 265
    sget-object p1, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->procIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onServiceConnected!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;)V

    .line 267
    new-instance p1, Lcom/mrpoid/apps/procmgr/AppProcess;

    iget-object v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->this$0:Lcom/mrpoid/apps/procmgr/AppProcessManager;

    iget v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->procIndex:I

    invoke-direct {p1, v0, v1, p2}, Lcom/mrpoid/apps/procmgr/AppProcess;-><init>(Lcom/mrpoid/apps/procmgr/AppProcessManager;ILandroid/os/IBinder;)V

    .line 268
    iget-object p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->this$0:Lcom/mrpoid/apps/procmgr/AppProcessManager;

    iget v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->procIndex:I

    invoke-static {p2, v0, p1}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->access$000(Lcom/mrpoid/apps/procmgr/AppProcessManager;ILcom/mrpoid/apps/procmgr/AppProcess;)V

    .line 270
    iget-object p2, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->callback:Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;

    iget v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->procIndex:I

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;->onSuccess(ILcom/mrpoid/apps/procmgr/AppProcess;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 278
    sget-object p1, Lcom/mrpoid/apps/procmgr/AppProcessManager;->log:Lcom/edroid/common/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->procIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onServiceDisconnected!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->this$0:Lcom/mrpoid/apps/procmgr/AppProcessManager;

    iget v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->procIndex:I

    invoke-static {p1, v0}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->access$100(Lcom/mrpoid/apps/procmgr/AppProcessManager;I)V

    .line 281
    iget-object p1, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->this$0:Lcom/mrpoid/apps/procmgr/AppProcessManager;

    iget v0, p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$MyConnetion;->procIndex:I

    invoke-static {p1, v0}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->access$200(Lcom/mrpoid/apps/procmgr/AppProcessManager;I)V

    return-void
.end method
